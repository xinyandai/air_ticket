package com.edu.nju.se.integration.service;

import com.edu.nju.se.integration.vo.PaginationResult;
import com.edu.nju.se.integration.vo.PriceVO;
import com.edu.nju.se.integration.vo.SearchRestrictVO;
import com.edu.nju.se.integration.vo.TicketVO;
import org.springframework.stereotype.Service;

import java.sql.Date;
import java.util.List;

/**
 * Created by darxan on 2017/6/7.
 */
@Service
public interface SearchService {

    /**
     * query from data base
     * 一个ticketVO对应的的是某个时间的航班，会有多个平台来源dataSource。
     * ticketVO没有票价信息，每个来源会有多个票价。
     * @param restrict include time,  price  , destination and so on
     * @see SearchRestrictVO
     *
     * @return  List<PriceVO>
     * @see  PaginationResult
     */
    List<TicketVO> search(SearchRestrictVO restrict);


    /**
     *
     * @param flight
     * @param departure
     * @return
     */
    List<TicketVO> search(String flight, Date departure);


    /**
     * show all prices information according to the flightNumber。
     * 每个航班号会有多个平台来源dataSource，每个平台的对应航班会有多个票价
     *
     * @param flightNumber
     * @return
     */
    List<PriceVO> getPrices(String flightNumber, Date date);

    /**
     *
     * @param restrictVO
     * @return
     *
     */
    List<PriceVO> gerPrices(SearchRestrictVO restrictVO);
}
