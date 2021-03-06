/**
 * Created by yyy on 2017/6/10.
 */

var PlaneList = {
    init:function() {
        this.gridsFather = $("#list-part");
        this.lastGrid = $(".list-item").eq(0);
    },
    updateData:function(planeList){
        this.gridsFather.empty();
        var _this = this;
        $.each(planeList,function(i,plane){
            var tempGrid = _this.lastGrid.clone(true);
            tempGrid.find(".company-name").eq(0).text(plane.company);
            tempGrid.find(".flight-num").eq(0).text(plane.flightNum);
            // var depart_time_full = plane.departTime.toString();
            // var depart_time = depart_time_full.slice(0,-3);
            tempGrid.find(".depart-time").eq(0).text(plane.departingTime);
            // var arrive_time_full = plane.arrivingTime.toString();
            // var arrive_time = arrive_time_full.slice(0,-3);
            tempGrid.find(".arriving-time").eq(0).text(plane.arrivingTime);
            tempGrid.find(".depart-city").eq(0).text(plane.departingAirport);
            tempGrid.find(".arriving-city").eq(0).text(plane.arrivingAirport);
            tempGrid.find(".punctual-rate").eq(0).text(plane.punctualRate);

            var lowestPrice = tempGrid.find(".lowest-price").eq(0);
            lowestPrice.prev().text("￥")
            lowestPrice.next().text("起")
            lowestPrice.text(plane.lowestPrice)

            var gridsFather = tempGrid.find(".price-list").eq(0);
            PlatformList.init(gridsFather,plane.flightNum,plane.departingDate+" "+plane.departingTime);
            PlatformList.updateData(plane.dataSource);

            _this.gridsFather.append(tempGrid);
        })
    },

    updatePredict:function(planeList){
        this.gridsFather.empty();
        var _this = this;
        $.each(planeList,function(i,plane){
            var tempGrid = _this.lastGrid.clone(true);
            tempGrid.find(".company-name").eq(0).text(plane.company);
            tempGrid.find(".flight-num").eq(0).text(plane.flightNum);
            // var depart_time_full = plane.departTime.toString();
            // var depart_time = depart_time_full.slice(0,-3);
            tempGrid.find(".depart-time").eq(0).text(plane.departingTime);
            // var arrive_time_full = plane.arrivingTime.toString();
            // var arrive_time = arrive_time_full.slice(0,-3);
            tempGrid.find(".arriving-time").eq(0).text(plane.arrivingTime);
            tempGrid.find(".depart-city").eq(0).text(plane.departingAirport);
            tempGrid.find(".arriving-city").eq(0).text(plane.arrivingAirport);
            tempGrid.find(".punctual-rate").eq(0).text(plane.punctualRate);

            var predictDay = tempGrid.find(".lowest-price").eq(0);
            predictDay.prev().text("")
            predictDay.next().text("提前")

            predictDay.text(plane.shouldMoveUpDays+"天");

            var gridsFather = tempGrid.find(".price-list").eq(0);
            PlatformList.init(gridsFather,plane.flightNum,plane.departingDate+" "+plane.departingTime);
            PlatformList.updateData(plane.dataSource);

            _this.gridsFather.append(tempGrid);
        })
    }
}

var PlatformList = {
    init:function(gridsFather,flightNum,time){
        this.gridsFather = gridsFather;
        this.lastGrid =gridsFather.find(".price-item").eq(0);
        // console.log("/home/detail?flightNum="+flightNum+"&departTime="+time);
        this.detail = gridsFather.find(".btn-detail").eq(0).attr("href",("/view/html/detail.html?flightNum="+flightNum+"&departTime="+time));
        // console.log(this.detail.attr("href"));

        this.detail = gridsFather.find(".btn-detail").eq(0);
    },
    updateData:function(platformList){
        this.gridsFather.empty();
        var _this = this;
        $.each(platformList,function(i,platform){
            var tempGrid = _this.lastGrid.clone(true);
            tempGrid.find(".platform").eq(0).text(platform.platformName);
            tempGrid.find(".p-price").eq(0).text(platform.lowestPrice);
            tempGrid.find(".link").eq(0).attr("href",platform.link);

            _this.gridsFather.append(tempGrid);
        });

        console.log(_this.detail);
        console.log(_this.detail.attr("href"));

        _this.gridsFather.append(_this.detail);

    }
}


$(document).ready(
    function(){

        PlaneList.init();
        $.get({
            url:"/home",
            success:function(list){
                PlaneList.updateData(list);
            },
            error:function(){
                console.log("get default list wrong!");
            }
        })

        $("input[id='all']").change(function(){

            if(this.checked){
                $("input[name='f-company']").each(function(){
                    $(this).attr("disabled","disabled");
                })

            }else{
                $("input[name='f-company']").each(function(){
                    $(this).removeAttr("disabled");
                })
            }
        })

        var query = $("#query");
        query.click(function(){

            var departCity = $("#departCity").find("option:selected").text();
            var arrivingCity = $("#arrivingCity").find("option:selected").text();
            var departDate = $("#departDate").val();
            var company = "";

            if($("#all").is(":checked")){
                company="all";
            }else{
               $("input[name='f-company']:checked").each(function(){
                   company += (this.value+",");
               })
            }

            console.log(departCity);
            console.log(arrivingCity);
            console.log(departDate);
            console.log("company is: "+company);

            $.get({
                url:"/home/list",
                data:{
                    departCity:departCity,
                    arrivingCity:arrivingCity,
                    departDate:departDate,
                    company:company,
                },
                success:function(newList){
                    PlaneList.updateData(newList);
                }
            })

        });

        var predict = $("#predict");
        predict.click(function(){

            var departCity = $("#departCity").find("option:selected").text();
            var arrivingCity = $("#arrivingCity").find("option:selected").text();
            var departDate = $("#departDate").val();


            $.get({
                url:"/home/predict",
                data:{
                    departCity:departCity,
                    arrivingCity:arrivingCity,
                    departDate:departDate,
                },
                success:function(newList){
                    PlaneList.updatePredict(newList);
                }
            })

        });

        var search = $("#btn-search");
        search.click(function(){
            var date = $("#departDate").val();
            var flightNum = $("#flightNum").val();
            $.get({
                url:"/home/search",
                data:{
                    flightNum:flightNum,
                    departDate:date,
                },
                success:function(newList){
                    PlaneList.updateData(newList);
                }
            })
        })
    }
)