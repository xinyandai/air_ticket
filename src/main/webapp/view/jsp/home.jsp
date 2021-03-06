<%--
  Created by IntelliJ IDEA.
  User: yyy
  Date: 2017/6/7
  Time: 20:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>home</title>

    <link rel="stylesheet" type="text/css" href="../../plugins/bootstrap-3.3.7-dist/css/bootstrap.min.css" >
    <link href="../../plugins/Font-Awesome-3.2.1/css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="../../plugins/datePicker/css/bootstrap-combined.min.css">
    <link rel="stylesheet" type="text/css" media="screen" href="../../plugins/datePicker/css/bootstrap-datetimepicker.min.css">

    <link rel="stylesheet" type="text/css" href="../../css/home.css">
</head>
<body>
<nav class="navbar navbar-default navbar-fixed-top my-nav"></nav>

<div class="container">
    <div class="col-lg-12">
        <div class="col-lg-12 ">
            <div class="navbar-header">
                <a class="navbar-brand my-font large-font" href="#">
                    SIMPLE FLIGHT
                </a>
            </div>
            <hr class="col-lg-12">
        </div>
    </div>

    <div class="col-lg-12 filter-part">
        <div class="col-lg-12 ">
            <form role="form">
                <div class="form-group">
                    <div class="input-group city ">
                        <span class="my-font">出发城市：</span>
                        <select class="my-input my-font" name="departCity">
                            <option>北京</option>
                            <option>上海</option>
                            <option>广州</option>
                            <option>深圳</option>
                            <option>成都</option>
                            <option>长沙</option>
                            <option>厦门</option>
                            <option>南京</option>
                            <option>昆明</option>
                            <option>大连</option>
                        </select>
                    </div>
                    <div class="input-group city my-right">
                        <span class="my-font">到达城市：</span>
                        <select class="my-input my-font" name="arrivingCity">
                            <option>南京</option>
                            <option>上海</option>
                            <option>北京</option>
                            <option>广州</option>
                            <option>深圳</option>
                            <option>成都</option>
                            <option>长沙</option>
                            <option>厦门</option>
                            <option>昆明</option>
                            <option>大连</option>
                        </select>
                    </div>

                    <div class="input-group" style="margin-top:15px;">
                        <span class="my-font">出发日期：</span>
                        <div class="input-append date my-date-picker my-date">
                            <input class="my-date-input" type="text" name="endDate" style="height:30px;width:222px;" />
                            <span class="add-on" style="height:30px;">
                                        <i data-time-icon="icon-time" data-date-icon="icon-calendar"></i>
                                    </span>
                        </div>

                    </div>
                    <div class="input-group" style="margin-top:15px;">
                        <span class="my-font">航空公司：</span>
                        <div style="display: inline;position: relative;top:-3px;">
                            <a class="btn btn-default select-all common-font" href="" onclick="javascript:void(0)">不限</a>
                            <label class="checkbox-inline">
                                <input type="checkbox" id="inlineCheckbox1" value="option1"> 东方航空
                            </label>
                            <label class="checkbox-inline">
                                <input type="checkbox" id="inlineCheckbox2" value="option1"> 南方航空
                            </label>
                            <label class="checkbox-inline">
                                <input type="checkbox" id="inlineCheckbox3" value="option1"> 上海航空
                            </label>
                            <label class="checkbox-inline">
                                <input type="checkbox" id="inlineCheckbox4" value="option1"> 中国航空
                            </label>
                        </div>

                        <button class="btn btn-info query-btn my-right" style="display:inline">查询</button>
                    </div>
                </div>
            </form>
            <div class="input-group search-part">
                <input type="text" class="form-control" placeholder="直接输入航班号查询">
                <span class="btn btn-info"><span class="icon-search"></span></span>
            </div>

            <hr class="col-lg-12">
        </div>

    </div>

    <div class="col-lg-12 sort-part">
        <div class="sort-row col-lg-12 ">
            <!--排序这个东西我写的太难看了交给你吧-->
        </div>
    </div>

    <div class="col-lg-12 list-part">
        <div class="col-lg-12  trip-list">
            <div class="list-item">
                <div class="trip-info">
                    <div class="company my-font col-lg-2">
                        <div>航空公司</div>
                        <div>MU123456</div>
                    </div>
                    <div class="time-city col-lg-5 col-lg-offset-1">
                        <div class="time my-font large-font">
                            <span >7:00</span>
                            <img style="position:relative;top:10px;" src="../../img/flight_arrow.png">
                            <span >15:00</span>
                        </div>
                        <div class="list-city my-font">
                            <span >上海</span>
                            <span style="margin-left:180px;" >南京</span>

                        </div>
                    </div>
                    <div class="rate col-lg-1 grey-font">
                        <div>准点率</div>
                        <div>91.3%</div>
                    </div>
                    <div class="price col-lg-2 col-lg-offset-1">
                        <span class="price-font">￥<span>720</span></span>
                        <span>起</span>
                    </div>
                </div>

                <div class="price-info">
                    <div class="grey-font col-lg-2" style="left:3%">价格信息：</div>

                    <ul class="price-list col-lg-10 col-lg-offset-1">
                        <li class="price-item col-lg-12 my-font">
                            <span class="col-lg-3 platform">携程</span>
                            <span class="col-lg-3">
                                        <span class="platform-price">￥<span class="p-price">720</span></span>起
                                    </span>
                            <span class="col-lg-3 note">note信息</span>
                        </li>
                        <li class="price-item col-lg-12 my-font">
                            <span class="col-lg-3 platform">去哪儿</span>
                            <span class="col-lg-3">
                                        <span class="platform-price">￥<span class="p-price">800</span></span>起
                                    </span>
                            <span class="col-lg-3 note">note信息</span>
                        </li>
                        <li class="price-item col-lg-12 my-font">
                            <span class="col-lg-3 platform">途牛</span>
                            <span class="col-lg-3">
                                        <span class="platform-price">￥<span class="p-price">800</span></span>起
                                    </span>
                            <span class="col-lg-3 note">note信息</span>
                        </li>

                        <a class="col-lg-2 btn btn-info btn-detail float-right">查看详情</a>

                    </ul>




                </div>

            </div>

            <div class="list-item">
                <div class="trip-info">
                    <div class="company my-font col-lg-2">
                        <div>航空公司</div>
                        <div>MU123456</div>
                    </div>
                    <div class="time-city col-lg-5 col-lg-offset-1">
                        <div class="time my-font large-font">
                            <span >7:00</span>
                            <img style="position:relative;top:10px;" src="../../img/flight_arrow.png">
                            <span >15:00</span>
                        </div>
                        <div class="list-city my-font">
                            <span >上海</span>
                            <span style="margin-left:180px;" >南京</span>

                        </div>
                    </div>
                    <div class="rate col-lg-1 grey-font">
                        <div>准点率</div>
                        <div>91.3%</div>
                    </div>
                    <div class="price col-lg-2 col-lg-offset-1">
                        <span class="price-font">￥<span>720</span></span>
                        <span>起</span>
                    </div>
                </div>

                <div class="price-info">
                    <div class="grey-font col-lg-2" style="left:3%">价格信息：</div>

                    <ul class="price-list col-lg-10 col-lg-offset-1">
                        <li class="price-item col-lg-12 my-font">
                            <span class="col-lg-3 platform">携程</span>
                            <span class="col-lg-3">
                                        <span class="platform-price">￥<span class="p-price">720</span></span>起
                                    </span>
                            <span class="col-lg-3 note">note信息</span>
                        </li>
                        <li class="price-item col-lg-12 my-font">
                            <span class="col-lg-3 platform">去哪儿</span>
                            <span class="col-lg-3">
                                        <span class="platform-price">￥<span class="p-price">800</span></span>起
                                    </span>
                            <span class="col-lg-3 note">note信息</span>
                        </li>
                        <li class="price-item col-lg-12 my-font">
                            <span class="col-lg-3 platform">途牛</span>
                            <span class="col-lg-3">
                                        <span class="platform-price">￥<span class="p-price">800</span></span>起
                                    </span>
                            <span class="col-lg-3 note">note信息</span>
                        </li>

                        <a class="col-lg-2 btn btn-info btn-detail float-right">查看详情</a>

                    </ul>




                </div>

            </div>

            <div class="list-item">
                <div class="trip-info">
                    <div class="company my-font col-lg-2">
                        <div>航空公司</div>
                        <div>MU123456</div>
                    </div>
                    <div class="time-city col-lg-5 col-lg-offset-1">
                        <div class="time my-font large-font">
                            <span >7:00</span>
                            <img style="position:relative;top:10px;" src="../../img/flight_arrow.png">
                            <span >15:00</span>
                        </div>
                        <div class="list-city my-font">
                            <span >上海</span>
                            <span style="margin-left:180px;" >南京</span>

                        </div>
                    </div>
                    <div class="rate col-lg-1 grey-font">
                        <div>准点率</div>
                        <div>91.3%</div>
                    </div>
                    <div class="price col-lg-2 col-lg-offset-1">
                        <span class="price-font">￥<span>720</span></span>
                        <span>起</span>
                    </div>
                </div>

                <div class="price-info">
                    <div class="grey-font col-lg-2" style="left:3%">价格信息：</div>

                    <ul class="price-list col-lg-10 col-lg-offset-1">
                        <li class="price-item col-lg-12 my-font">
                            <span class="col-lg-3 platform">携程</span>
                            <span class="col-lg-3">
                                        <span class="platform-price">￥<span class="p-price">720</span></span>起
                                    </span>
                            <span class="col-lg-3 note">note信息</span>
                        </li>
                        <li class="price-item col-lg-12 my-font">
                            <span class="col-lg-3 platform">去哪儿</span>
                            <span class="col-lg-3">
                                        <span class="platform-price">￥<span class="p-price">800</span></span>起
                                    </span>
                            <span class="col-lg-3 note">note信息</span>
                        </li>
                        <li class="price-item col-lg-12 my-font">
                            <span class="col-lg-3 platform">途牛</span>
                            <span class="col-lg-3">
                                        <span class="platform-price">￥<span class="p-price">800</span></span>起
                                    </span>
                            <span class="col-lg-3 note">note信息</span>
                        </li>

                        <a class="col-lg-2 btn btn-info btn-detail float-right">查看详情</a>

                    </ul>




                </div>

            </div>

        </div>
    </div>
</div>



<script src="../../plugins/jquery/jquery-3.1.1.min.js"></script>
<script src="../../plugins/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<script src="../../plugins/datePicker/js/bootstrap-datetimepicker.min.js"></script>
<script type="text/javascript">
    $('.my-date-picker').datetimepicker({
        format: 'yyyy-MM-dd',
        language: 'en',
        pickDate: true,
        pickTime: false,
        hourStep: 1,
        minuteStep: 15,
        secondStep: 30,
        inputMask: true
    })
</script>

</body>
</html>
