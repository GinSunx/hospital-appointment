$(function () {
    $("ul li").on("click", function () {
        location.reload();
    });
    //初始化
    var arr = [{
        "id": 1,
        "name": "1",
        "date": "1",
        "time": "1",
        "source": 1,
        "pid": 1,
        "info": "1"
    }, {
        "id": 2,
        "name": "1",
        "date": "1",
        "time": "1",
        "source": 2,
        "pid": 2,
        "info": "2"
    }, {
        "id": 3,
        "name": "1",
        "date": "1",
        "time": "1",
        "source": 3,
        "pid": 3,
        "info": "3"
    }, {
        "id": 4,
        "name": "1",
        "date": "1",
        "time": "1",
        "source": 3,
        "pid": 3,
        "info": "4"
    }];
    arr = JSON.stringify(arr);
    localStorage.setItem("appoint", arr);
    load();
    // 读取本地存储的数据
    // 渲染加载数据
    function load() {
        // 读取本地存储的数据
        var data = getData();
        // console.log(data);
        // 遍历之前先要清空除了第一个tr的所有tr元素内容
        $("table tr").eq(0).siblings().empty();
        // 遍历这个数据
        $.each(data, function (i, n) {
            $("table").append("<tr>\n" +
                "     <td>" + n.id + "</td>\n" +
                "     <td>" + n.name + "</td>\n" +
                "     <td>" + n.date + "</td>\n" +
                "     <td>" + n.time + "</td>\n" +
                "     <td>" + n.source + "</td>\n" +
                "     <td>" + n.pid + " </td>\n" +
                "     <td><span data-toggle=\"modal\" data-target=\"#myModal1\" class='find'>点击查看</span></td>\n" +
                " </tr>"
            );
        });
    }

    $(".find").on("click", function () {
        var id = $(this).parent().siblings().eq(0).text();
        var arr = getData();
        $("#myModal1 .modal-body").text(arr[id - 1].info);
    });

    // 读取本地存储的数据
    function getData() {
        var data = localStorage.getItem("appoint");
        if (data !== null) {
            // 本地存储里面的数据是字符串格式的，转换为需要的是对象格式的
            return JSON.parse(data);
        } else {
            return [];
        }
    }
});