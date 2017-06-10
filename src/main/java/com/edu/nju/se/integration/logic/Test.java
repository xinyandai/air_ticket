package com.edu.nju.se.integration.logic;

import com.edu.nju.se.integration.service.SearchImpl;
import com.edu.nju.se.integration.service.SearchService;
import com.edu.nju.se.integration.tool.DateFormatter;
import com.edu.nju.se.integration.vo.PlatformVO;
import com.edu.nju.se.integration.vo.PriceVO;
import com.edu.nju.se.integration.vo.SearchRestrictVO;
import com.edu.nju.se.integration.vo.PlaneVO;
import javafx.application.Platform;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.Date;


/**
 * Created by darxan on 2017/6/8.
 */
public class Test {


    public static void main(String[] args) throws Exception{
        ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
        context.start();
        SearchService service = context.getBean(SearchImpl.class);

        Date date = DateFormatter.dateFormat.parse("2017-07-01");

        //搜索具体航班号：这里返回的的票价
        for (PlatformVO platformVO:service.getPrices("MU9106", date).getDataSource()) {

            System.out.println(platformVO.getDataSource());

            System.out.println(platformVO.getPlatFormName());
            System.out.println(platformVO.getLink());
        }

        System.out.println("=========================================");
        //这里根据其他条件搜索，（可以包括航班号，但那时会导致数据急剧减少）
        //返回的是：PlaneVO （一个航班对应一个TicketVO）
        SearchRestrictVO restrictVO = new SearchRestrictVO();
//        restrictVO.setFlightNum("MU9106");
        restrictVO.setDeparture("南京");
        restrictVO.setDestination("北京");

        restrictVO.setDepartingDate(date);

        for (PlaneVO planeVO : service.search(restrictVO))
        {
            System.out.println(planeVO.getFlightNum());
            System.out.println(planeVO.getDataSource().size());
            System.out.println(planeVO.getFlightId());
        }

    }
}