$(function () {
    load();

    //添加数据
    $(".doctor #addDoctor").on("click", function () {
        $('#myModal10').modal('hide');
        var docId = $("#docId").val();
        var docName = $("#docName").val();
        var docSex = $("#docSex").val();
        var hospName3 = $("#hospName3").val();
        var departName = $("#departName").val();
        var docImg = $("#docImg").val();
        var docTile = $("#docTile").val();
        var degree = $("#degree").val();
        var forte = $("#forte").val();
        var docInfo = $("#docInfo").val();
        if (parseInt(docId) !== (getData().length + 1)) {
            alert("编号要为上一编号加1");
            return false;
        } else {
            // 先读取本地存储原来的数据
            var local = getData();
            // console.log(local);
            // 把local数组进行更新数据 把最新的数据追加给local数组
            local.push({
                "docId": parseInt(docId),
                "docName": docName,
                "docSex": docSex,
                "hospName3": hospName3,
                "departName": departName,
                "docImg": docImg,
                "docTile": docTile,
                "degree": degree,
                "forte": forte,
                "docInfo": docInfo
            });
            // 把这个数组local 存储给本地存储
            saveData(local);
            // 本地存储数据渲染加载到页面
            load();
        }
    });

    //修改数据
    //获取修改按钮该行的数据
    $(".doctor table").on("click", "em", function () {
        $("#docId2").val($(this).parent().siblings().eq(0).text());
        $("#docName2").val($(this).parent().siblings().eq(1).text());
        $("#docSex2").val($(this).parent().siblings().eq(2).text());
        $("#hospName4").val($(this).parent().siblings().eq(3).text());
        $("#departName2").val($(this).parent().siblings().eq(4).text());
        $("#docImg2").val($(this).parent().siblings().eq(5).text());
        $("#docTile2").val($(this).parent().siblings().eq(6).text());
        $("#degree2").val($(this).parent().siblings().eq(7).text());
        $("#forte2").val($(this).parent().siblings().eq(8).text());
        $("#docInfo2").val(getData()[$(this).parent().siblings().eq(0).text()-1].docInfo);
    });
    //将修改后的表单数据传给localStorage
    $("#updateDoc").on("click", function () {
        $('#myModal11').modal('hide');
        var docId2 = $("#docId2").val();
        var docName2 = $("#docName2").val();
        var docSex2 = $("#docSex2").val();
        var hospName4 = $("#hospName4").val();
        var departName2 = $("#departName2").val();
        var docImg2 = $("#docImg2").val();
        var docTile2 = $("#docTile2").val();
        var degree2 = $("#degree2").val();
        var forte2 = $("#forte2").val();
        var docInfo2 = $("#docInfo2").val();

        // 先读取本地存储原来的数据
        var local = getData();
        // console.log(local);
        // 把local数组进行更新数据 把最新的数据追加给local数组
        local.splice(docId2 - 1, 1, {
            "docId": parseInt(docId2),
            "docName": docName2,
            "docSex": docSex2,
            "hospName3": hospName4,
            "departName": departName2,
            "docImg": docImg2,
            "docTile": docTile2,
            "degree": degree2,
            "forte": forte2,
            "docInfo": docInfo2
        });
        // 把这个数组local 存储给本地存储
        saveData(local);
        // 本地存储数据渲染加载到页面
        load();
    });

    //删除数据
    var id;
    $(".doctor table").on("click", "span", function () {
        var sid = $(this).parent().siblings().eq(0).text();
        $("#myModal12 .modal-body").html("确定删除" + sid + "号吗？");
        id = sid;
    });
    $("#deleteDoc").on("click", function () {
        $('#myModal12').modal('hide');
        // 先获取本地存储
        var data = getData();
        // console.log(data);
        // 修改数据
        data.splice(id - 1, 1);
        // 保存到本地存储
        saveData(data);
        // 重新渲染页面
        load();
    });

    // 读取本地存储的数据
    function getData() {
        var data = localStorage.getItem("doctor");
        if (data !== null) {
            // 本地存储里面的数据是字符串格式的，转换为需要的是对象格式的
            return JSON.parse(data);
        } else {
            return [];
        }
    }

    // 保存本地存储数据
    function saveData(data) {
        localStorage.setItem("doctor", JSON.stringify(data));
    }

    // 渲染加载数据
    function load() {
        // 读取本地存储的数据
        var data = getData();
        // console.log(data);
        // 遍历之前先要清空除了第一个tr的所有tr元素内容
        $(".doctor table tr").eq(0).siblings().empty();
        // 遍历这个数据
        $.each(data, function (i, n) {
            $(".doctor table").append("<tr>\n" +
                "                                <td>" + n.docId + "</td>\n" +
                "                                <td>" + n.docName + "</td>\n" +
                "                                <td>" + n.docSex + "</td>\n" +
                "                                <td>" + n.hospName3 + "</td>\n" +
                "                                <td>" + n.departName + "</td>\n" +
                "                                <td>" + n.docImg + " </td>\n" +
                "                                <td>" + n.docTile + "</td>\n" +
                "                                <td>" + n.degree + "</td>\n" +
                "                                <td>" + n.forte + "</td>\n" +
                "                                <td><span data-toggle=\"modal\" data-target=\"#myModal15\" class='findDocInfo'>点击查看</span></td>\n" +
                "                                <td><em data-toggle=\"modal\" data-target=\"#myModal11\">修改</em>&nbsp;&nbsp;<span data-toggle=\"modal\" data-target=\"#myModal12\">删除</span></td>\n" +
                "                            </tr>"
            )
            ;
        });
    }

    $(".doctor table").on("click", ".findDocInfo", function () {
        var id = $(this).parent().siblings().eq(0).text();
        var arr = getData();
        $("#myModal15 .modal-body").text(arr[id - 1].docInfo);
    });
});