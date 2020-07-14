$(function () {
    load();

    //添加数据
    $(".department #addDepart").on("click", function () {
        $('#myModal7').modal('hide');
        var departmentId = $("#departmentId").val();
        var departmentName = $("#departmentName").val();
        var hospName = $("#hospName").val();
        var docNum = $("#docNum").val();
        var departInfo = $("#departInfo").val();
        var departType = $("#departType").val();
        var departmentScope = $("#departmentScope").val();
        if (parseInt(departmentId) !== (getData().length + 1)) {
            alert("编号要为上一编号加1");
            return false;
        } else {
            // 先读取本地存储原来的数据
            var local = getData();
            // console.log(local);
            // 把local数组进行更新数据 把最新的数据追加给local数组
            local.push({
                "departmentId": parseInt(departmentId),
                "departmentName": departmentName,
                "hospName": hospName,
                "docNum": docNum,
                "departInfo": departInfo,
                "departType": departType,
                "departmentScope": departmentScope
            });
            // 把这个数组local 存储给本地存储
            saveData(local);
            // 本地存储数据渲染加载到页面
            load();
        }
    });

    //修改数据
    //获取修改按钮该行的数据
    $(".department table").on("click", "em", function () {
        $("#departmentId2").val($(this).parent().siblings().eq(0).text());
        $("#departmentName2").val($(this).parent().siblings().eq(1).text());
        $("#hospName2").val($(this).parent().siblings().eq(2).text());
        $("#docNum2").val($(this).parent().siblings().eq(3).text());
        $("#departInfo2").val(getData()[$(this).parent().siblings().eq(0).text()-1].departInfo);
        $("#departType2").val($(this).parent().siblings().eq(5).text());
        $("#departmentScope2").val($(this).parent().siblings().eq(6).text());
    });
    //将修改后的表单数据传给localStorage
    $("#updateDepart").on("click", function () {
        $('#myModal8').modal('hide');
        var departmentId2 = $("#departmentId2").val();
        var departmentName2 = $("#departmentName2").val();
        var hospName2 = $("#hospName2").val();
        var docNum2 = $("#docNum2").val();
        var departInfo2 = $("#departInfo2").val();
        var departType2 = $("#departType2").val();
        var departmentScope2 = $("#departmentScope2").val();

        // 先读取本地存储原来的数据
        var local = getData();
        // console.log(local);
        // 把local数组进行更新数据 把最新的数据追加给local数组
        local.splice(departmentId2 - 1, 1, {
            "departmentId": parseInt(departmentId2),
            "departmentName": departmentName2,
            "hospName": hospName2,
            "docNum": docNum2,
            "departInfo": departInfo2,
            "departType": departType2,
            "departmentScope": departmentScope2
        });
        // 把这个数组local 存储给本地存储
        saveData(local);
        // 本地存储数据渲染加载到页面
        load();
    });

    //删除数据
    var id;
    $(".department table").on("click", "span", function () {
        var sid = $(this).parent().siblings().eq(0).text();
        $("#myModal9 .modal-body").html("确定删除" + sid + "号吗？");
        id = sid;
    });
    $("#deleteDepart").on("click", function () {
        $('#myModal9').modal('hide');
        // 先获取本地存储
        var data = getData();
        // 修改数据
        data.splice(id - 1, 1);
        // 保存到本地存储
        saveData(data);
        // 重新渲染页面
        load();
    });

    // 读取本地存储的数据
    function getData() {
        var data = localStorage.getItem("department");
        if (data !== null) {
            // 本地存储里面的数据是字符串格式的，转换为需要的是对象格式的
            return JSON.parse(data);
        } else {
            return [];
        }
    }

    // 保存本地存储数据
    function saveData(data) {
        localStorage.setItem("department", JSON.stringify(data));
    }

    // 渲染加载数据
    function load() {
        // 读取本地存储的数据
        var data = getData();
        // 遍历之前先要清空除了第一个tr的所有tr元素内容
        $(".department table tr").eq(0).siblings().empty();
        // 遍历这个数据
        $.each(data, function (i, n) {
            $(".department table").append("<tr>\n" +
                "                                <td>" + n.departmentId + "</td>\n" +
                "                                <td>" + n.departmentName + "</td>\n" +
                "                                <td>" + n.hospName + "</td>\n" +
                "                                <td>" + n.docNum + " </td>\n" +
                "                                <td><span data-toggle=\"modal\" data-target=\"#myModal14\" class='findDepartInfo'>点击查看</span></td>\n" +
                "                                <td>" + n.departType + "</td>\n" +
                "                                <td>" + n.departmentScope + "</td>\n" +
                "                                <td><em data-toggle=\"modal\" data-target=\"#myModal8\">修改</em>&nbsp;&nbsp;<span data-toggle=\"modal\" data-target=\"#myModal9\">删除</span></td>\n" +
                "                            </tr>"
            )
            ;
        });
    }

    $(".department table").on("click",".findDepartInfo",function () {
        var id = $(this).parent().siblings().eq(0).text();
        console.log(id);
        var arr = getData();
        $("#myModal14 .modal-body").text(arr[id - 1].departInfo);
    });
});