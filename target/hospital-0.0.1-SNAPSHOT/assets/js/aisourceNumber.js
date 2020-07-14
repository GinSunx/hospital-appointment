$(function () {
    if (localStorage.getItem("source") == null) {
        //初始化
        var arr = [{
            "numberSourceNo": 1,
            "hosp": "aaa",
            "depart": "aaa",
            "doctor": "aaa",
            "workDate": "111",
            "workTime": "111",
            "initQuantity": 1,
            "restQuantity": 1,
            "fee": 1
        },{
            "numberSourceNo": 2,
            "hosp": "aaa",
            "depart": "aaa",
            "doctor": "aaa",
            "workDate": "111",
            "workTime": "111",
            "initQuantity": 1,
            "restQuantity": 1,
            "fee": 1
        }];
        // console.log(arr[0].info);
        arr = JSON.stringify(arr);
        localStorage.setItem("source", arr);
    }
    load();

    //添加数据
    $(".SourceNumberContent #add").on("click", function () {
        $('#myModal1').modal('hide');
        var numberSourceNo = $("#numberSourceNo").val();
        var hosp = $("#hosp").val();
        var depart = $("#depart").val();
        var doctor = $("#doctor").val();
        var workDate = $("#workDate").val();
        var workTime = $("#workTime").val();
        var initQuantity = $("#initQuantity").val();
        var restQuantity = $("#restQuantity").val();
        var fee = $("#fee").val();
        if (parseInt(numberSourceNo) !== (getData().length + 1)) {
            alert("编号要为上一编号加1");
            return false;
        } else {
            var local = getData();
            // console.log(local);
            // 把local数组进行更新数据 把最新的数据追加给local数组
            local.push({
                "numberSourceNo": parseInt(numberSourceNo),
                "hosp": hosp,
                "depart": depart,
                "doctor": doctor,
                "workDate": workDate,
                "workTime": workTime,
                "initQuantity": initQuantity,
                "restQuantity": restQuantity,
                "fee": fee
            });
            saveData(local);
            load();
        }
    });

    //修改数据
    //获取修改按钮该行的数据
    $(".SourceNumberContent table").on("click", "em", function () {
        $("#numberSourceNo2").val($(this).parent().siblings().eq(0).text());
        $("#hosp2").val($(this).parent().siblings().eq(1).text());
        $("#depart2").val($(this).parent().siblings().eq(2).text());
        $("#doctor2").val($(this).parent().siblings().eq(3).text());
        $("#workDate2").val($(this).parent().siblings().eq(4).text());
        $("#workTime2").val($(this).parent().siblings().eq(5).text());
        $("#initQuantity2").val($(this).parent().siblings().eq(6).text());
        $("#restQuantity2").val($(this).parent().siblings().eq(7).text());
        $("#fee2").val($(this).parent().siblings().eq(8).text());
    });
    //将修改后的表单数据传给localStorage
    $("#update").on("click", function () {
        $('#myModal2').modal('hide');
        var numberSourceNo = $("#numberSourceNo2").val();
        var hosp = $("#hosp2").val();
        var depart = $("#depart2").val();
        var doctor = $("#doctor2").val();
        var workDate = $("#workDate2").val();
        var workTime = $("#workTime2").val();
        var initQuantity = $("#initQuantity2").val();
        var restQuantity = $("#restQuantity2").val();
        var fee = $("#fee2").val();
        var local = getData();
        // console.log(local);
        // 把local数组进行更新数据 把最新的数据追加给local数组
        local.splice(numberSourceNo - 1, 1, {
            "numberSourceNo": parseInt(numberSourceNo),
            "hosp": hosp,
            "depart": depart,
            "doctor": doctor,
            "workDate": workDate,
            "workTime": workTime,
            "initQuantity": initQuantity,
            "restQuantity": restQuantity,
            "fee": fee
        });
        saveData(local);
        load();
    });

    //删除数据
    var id;
    $(".SourceNumberContent table").on("click", "span", function () {
        var sid = $(this).parent().siblings().eq(0).text();
        $("#myModal3 .modal-body").html("确定删除" + sid + "号吗？");
        id = sid;
    });
    $("#delete").on("click", function () {
        $('#myModal3').modal('hide');
        var data = getData();
        if (id == data[data.length - 1].numberSourceNo) {
            // 删除数组中的数据
            data.splice(id - 1, 1);
            saveData(data);
            load();
        } else {
            alert("请从最后一位开始删除");
            return false;
        }
    });

    function getData() {
        var data = localStorage.getItem("source");
        if (data !== null) {
            return JSON.parse(data);
        } else {
            return [];
        }
    }

    function saveData(data) {
        localStorage.setItem("source", JSON.stringify(data));
    }

    // 渲染加载数据
    function load() {
        var data = getData();
        // 遍历之前先要清空除了第一个tr的所有tr元素内容
        $(".SourceNumberContent table tr").eq(0).siblings().empty();
        // 遍历这个数据
        $.each(data, function (i, n) {
            $(".SourceNumberContent table").append("<tr>\n" +
                "                                <td>" + n.numberSourceNo + "</td>\n" +
                "                                <td>" + n.hosp + "</td>\n" +
                "                                <td>" + n.depart + "</td>\n" +
                "                                <td>" + n.doctor + " </td>\n" +
                "                                <td>" + n.workDate + "</td>\n" +
                "                                <td>" + n.workTime + "</td>\n" +
                "                                <td>" + n.initQuantity + "</td>\n" +
                "                                <td>" + n.restQuantity + "</td>\n" +
                "                                <td>" + n.fee + "</td>\n" +
                "                                <td><em data-toggle=\"modal\" data-target=\"#myModal2\">修改</em>&nbsp;&nbsp;<span data-toggle=\"modal\" data-target=\"#myModal3\">删除</span></td>\n" +
                "                            </tr>"
            )
            ;
        });
    }
});