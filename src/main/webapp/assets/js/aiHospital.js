$(function () {
    load();

    //添加数据
    $(".hospital #addHospital").on("click", function () {
        $('#myModal4').modal('hide');
        var hospitalId = $("#hospitalId").val();
        var hospitalName = $("#hospitalName").val();
        var hospitalDistinct = $("#hospitalDistinct").val();
        var deanName = $("#deanName").val();
        var hospitalImage = $("#hospitalImage").val();
        var hospitalDate = $("#hospitalDate").val();
        var hospitalType = $("#hospitalType").val();
        var hospitalLevel = $("#hospitalLevel").val();
        var departNum = $("#departNum").val();
        var info = $("#hospitalMsg").val();
        var hospitalTel = $("#hospitalTel").val();
        var hospitalAddress = $("#hospitalAddress").val();
        var hospitalUrl = $("#hospitalUrl").val();
        if (parseInt(hospitalId) !== (getData().length + 1)) {
            alert("编号要为上一编号加1");
            return false;
        } else {
            // 先读取本地存储原来的数据
            var local = getData();
            // console.log(local);
            // 把local数组进行更新数据 把最新的数据追加给local数组
            local.push({
                "id": parseInt(hospitalId),
                "name": hospitalName,
                "disc": hospitalDistinct,
                "dean": deanName,
                "img": hospitalImage,
                "date": hospitalDate,
                "type": hospitalType,
                "level": hospitalLevel,
                "quantity": departNum,
                "info": info,
                "tel": hospitalTel,
                "addr": hospitalAddress,
                "url": hospitalUrl
            });
            // 把这个数组local 存储给本地存储
            saveData(local);
            // 本地存储数据渲染加载到页面
            load();
        }
    });

    //修改数据
    //获取修改按钮该行的数据
    $(".hospital table").on("click", "em", function () {
        $("#hospitalId2").val($(this).parent().siblings().eq(0).text());
        $("#hospitalName2").val($(this).parent().siblings().eq(1).text());
        $("#hospitalDistinct2").val($(this).parent().siblings().eq(2).text());
        $("#deanName2").val($(this).parent().siblings().eq(3).text());
        $("#hospitalImage2").val($(this).parent().siblings().eq(4).text());
        $("#hospitalDate2").val($(this).parent().siblings().eq(5).text());
        $("#hospitalType2").val($(this).parent().siblings().eq(6).text());
        $("#hospitalLevel2").val($(this).parent().siblings().eq(7).text());
        $("#departNum2").val($(this).parent().siblings().eq(8).text());
        $("#hospitalMsg2").val(getData()[$(this).parent().siblings().eq(0).text()-1].info);
        $("#hospitalTel2").val($(this).parent().siblings().eq(10).text());
        $("#hospitalAddress2").val($(this).parent().siblings().eq(11).text());
        $("#hospitalUrl2").val($(this).parent().siblings().eq(12).text());
    });
    //将修改后的表单数据传给localStorage
    $("#updateHospital").on("click", function () {
        $('#myModal5').modal('hide');
        var hospitalId2 = $("#hospitalId2").val();
        var hospitalName2 = $("#hospitalName2").val();
        var hospitalDistinct2 = $("#hospitalDistinct2").val();
        var deanName2 = $("#deanName2").val();
        var hospitalImage2 = $("#hospitalImage2").val();
        var hospitalDate2 = $("#hospitalDate2").val();
        var hospitalType2 = $("#hospitalType2").val();
        var hospitalLevel2 = $("#hospitalLevel2").val();
        var departNum2 = $("#departNum2").val();
        var info2 = $("#hospitalMsg2").val();
        var hospitalTel2 = $("#hospitalTel2").val();
        var hospitalAddress2 = $("#hospitalAddress2").val();
        var hospitalUrl2 = $("#hospitalUrl2").val();

        // 先读取本地存储原来的数据
        var local = getData();
        // console.log(local);
        // 把local数组进行更新数据 把最新的数据追加给local数组
        local.splice(hospitalId2 - 1, 1, {
            "id": parseInt(hospitalId2),
            "name": hospitalName2,
            "disc": hospitalDistinct2,
            "dean": deanName2,
            "img": hospitalImage2,
            "date": hospitalDate2,
            "type": hospitalType2,
            "level": hospitalLevel2,
            "quantity": departNum2,
            "info": info2,
            "tel": hospitalTel2,
            "addr": hospitalAddress2,
            "url": hospitalUrl2
        });
        // 把这个数组local 存储给本地存储
        saveData(local);
        // 本地存储数据渲染加载到页面
        load();
    });

    //删除数据
    var id;
    $(".hospital table").on("click", "span", function () {
        var sid = $(this).parent().siblings().eq(0).text();
        $("#myModal6 .modal-body").html("确定删除" + sid + "号吗？");
        id = sid;
    });
    $("#deleteHospital").on("click", function () {
        $('#myModal6').modal('hide');
        // 先获取本地存储
        var data = getData();
        console.log(data);
        // 修改数据
        data.splice(id - 1, 1);
        // 保存到本地存储
        saveData(data);
        // 重新渲染页面
        load();
    });

    // 读取本地存储的数据
    function getData() {
        var data = localStorage.getItem("hospital");
        if (data !== null) {
            // 本地存储里面的数据是字符串格式的，转换为需要的是对象格式的
            return JSON.parse(data);
        } else {
            return [];
        }
    }

    // 保存本地存储数据
    function saveData(data) {
        localStorage.setItem("hospital", JSON.stringify(data));
    }

    // 渲染加载数据
    function load() {
        // 读取本地存储的数据
        var data = getData();
        // 遍历之前先要清空除了第一个tr的所有tr元素内容
        $(".hospital table tr").eq(0).siblings().empty();
        // 遍历这个数据
        $.each(data, function (i, n) {
            $(".hospital table").append("<tr>\n" +
                "                                <td>" + n.id + "</td>\n" +
                "                                <td>" + n.name + "</td>\n" +
                "                                <td>" + n.disc + "</td>\n" +
                "                                <td>" + n.dean + " </td>\n" +
                "                                <td>" + n.img + "</td>\n" +
                "                                <td>" + n.date + "</td>\n" +
                "                                <td>" + n.type + "</td>\n" +
                "                                <td>" + n.level + "</td>\n" +
                "                                <td>" + n.quantity + "</td>\n" +
                "                                <td><span data-toggle=\"modal\" data-target=\"#myModal13\" class='findHospInfo'>点击查看</span></td>\n" +
                "                                <td>" + n.tel + "</td>\n" +
                "                                <td>" + n.addr + "</td>\n" +
                "                                <td>" + n.url + "</td>\n" +
                "                                <td><em data-toggle=\"modal\" data-target=\"#myModal5\">修改</em>&nbsp;&nbsp;<span data-toggle=\"modal\" data-target=\"#myModal6\">删除</span></td>\n" +
                "                            </tr>"
            )
            ;
        });
    }
    $(".hospital table").on("click",".findHospInfo",function () {
        var id = $(this).parent().siblings().eq(0).text();
        var arr = getData();
        $("#myModal13 .modal-body").text(arr[id - 1].info);
    });
});