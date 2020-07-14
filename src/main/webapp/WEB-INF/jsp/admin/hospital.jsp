<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>医院后台系统</title>
    <link rel="stylesheet" href="${mybasePath}assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="${mybasePath}assets/css/SourceNumber.css">
    <link rel="stylesheet" href="${mybasePath}assets/css/style.css">
    <script src="${mybasePath}assets/js/jquery-3.2.1.min.js"></script>
    <script src="${mybasePath}assets/js/bootstrap.min.js"></script>
</head>
<body>

<div class="header">
    <h4>医院后台系统</h4>
</div>

<div class="subnav">
    <ul>
        <li>号源管理</li>
    </ul>
</div>

<div class="myContent">
    <div class="sourceNumber">
        <div class="SourceNumberContent">
            <div class="modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                    aria-hidden="true">&times;</span>
                            </button>
                            <h4 class="modal-title" id="myModalLabel1" >添加</h4>
                        </div>
                        <div class="modal-body">
                            <form>
                                <div class="form-group">
                                    <label for="numSourceNo">号源编号</label>
                                    <input type="text" class="form-control" id="numSourceNo" name="numSourceNo">
                                </div>
                                <div class="form-group">
                                    <label for="hospId">医院编号</label>
                                    <input type="text" class="form-control" id="hospId" name="hospId">
                                </div>
                                <div class="form-group">
                                    <label for="departId">科室编号</label>
                                    <input type="text" class="form-control" id="departId" name="departId">
                                </div>
                                <div class="form-group">
                                    <label for="doctorId">医生编号</label>
                                    <input type="text" class="form-control" id="doctorId" name="doctorId">
                                </div>
                                <div class="form-group">
                                    <label for="workDate">日期</label>
                                    <input type="text" class="form-control" id="workDate" name="workDate">
                                </div>
                                <div class="form-group">
                                    <label for="workTime">时间段</label><br>
                                    <input type="text" class="form-control" id="workTime" name="workTime">
                                </div>
                                <div class="form-group">
                                    <label for="initQuantity">初始数量</label>
                                    <input type="text" class="form-control" id="initQuantity" name="initQuantity">
                                </div>
                                <div class="form-group">
                                    <label for="restQuantity">剩余数量</label>
                                    <input type="text" class="form-control" id="restQuantity" name="restQuantity">
                                </div>
                                <div class="form-group">
                                    <label for="fee">费用</label>
                                    <input type="text" class="form-control" id="fee" name="fee">
                                </div>
                            </form>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                            <button type="button" class="btn btn-primary" id="add">添加</button>
                        </div>
                    </div>
                </div>
            </div>

            <div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                    aria-hidden="true">&times;</span>
                            </button>
                            <h4 class="modal-title" id="myModalLabel2" href="/updateSource">修改</h4>
                        </div>
                        <div class="modal-body">
                            <form class="update">
                                <div class="form-group">
                                    <label for="numSourceNo2">号源编号</label>
                                    <input type="text" readonly="readonly" class="form-control" id="numSourceNo2" name="numSourceNo"
                                           }>
                                </div>
                                <div class="form-group">
                                    <label for="hospId2">医院编号</label>
                                    <input type="text" class="form-control" id="hospId2" name="hospId">
                                </div>
                                <div class="form-group">
                                    <label for="departId2">科室编号</label>
                                    <input type="text" class="form-control" id="departId2" name="departId">
                                </div>
                                <div class="form-group">
                                    <label for="doctorId2">医生编号</label>
                                    <input type="text" class="form-control" id="doctorId2" name="doctorId">
                                </div>
                                <div class="form-group">
                                    <label for="workDate2">日期</label>
                                    <input type="text" class="form-control" id="workDate2" name="workDate">
                                </div>
                                <div class="form-group">
                                    <label for="workTime2">时间段</label><br>
                                    <input type="text" class="form-control" id="workTime2" name="workTime2">
                                </div>
                                <div class="form-group">
                                    <label for="initQuantity2">初始数量</label>
                                    <input type="text" class="form-control" id="initQuantity2" name="initQuantity">
                                </div>
                                <div class="form-group">
                                    <label for="restQuantity2">剩余数量</label>
                                    <input type="text" class="form-control" id="restQuantity2" name="restQuantity">
                                </div>
                                <div class="form-group">
                                    <label for="fee2">费用</label>
                                    <input type="text" class="form-control" id="fee2" name="fee">
                                </div>
                            </form>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                            <button type="button" class="btn btn-primary" id="update">保存</button>
                        </div>
                    </div>
                </div>
            </div>

            <div class="modal fade" id="myModal3" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                    aria-hidden="true">&times;</span>
                            </button>
                            <h4 class="modal-title" id="myModalLabel3">删除</h4>
                        </div>
                        <div class="modal-body">

                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                            <button type="button" class="btn btn-primary" id="delete">删除</button>
                        </div>
                    </div>
                </div>
            </div>

            <div class="hd clearfix">
                <span data-toggle="modal" data-target="#myModal1">添加</span>
            </div>
            <table class="table table-hover  table-striped" style="width:1286px">
               <thead>
                <tr>
                    <td>号源编号</td>
                    <td>医院编号</td>
                    <td>科室编号</td>
                    <td>医生编号</td>
                    <td>日期</td>
                    <td>时间段</td>
                    <td>初始数量</td>
                    <td>剩余数量</td>
                    <td>费用</td>
                    <td>操作</td>
                </tr></thead>
                <tbody>
                <c:forEach items="${sources}" var="source" varStatus="s">
                    <tr>
                        <td>${source.numSourceNo}</td>
                        <td>${source.hospId}</td>
                        <td>${source.departId}</td>
                        <td>${source.doctorId}</td>
                        <td>${source.workDate}</td>
                        <td>${source.workTime}</td>
                        <td>${source.initQuantity}</td>
                        <td>${source.restQuantity}</td>
                        <td>${source.fee}</td>
                        <td><em data-toggle="modal" data-target="#myModal2">修改</em>&nbsp;&nbsp;<span
                                data-toggle="modal" data-target="#myModal3">删除</span></td>
                    </tr>
                </c:forEach></tbody>
            </table>


        </div>
    </div>
</div>
</body>
<script type="text/javascript">
    $(function () {
        load();
        // 加载数据库的数据
        function load() {
            //填充表格前，先把之前的表格数据清空
            $(".sourceNumber tr").eq(0).siblings().empty();
            $.get("hospitalAdmin", {}, function (data) {
                // console.log(data1);
                $.each(data, function (i, n) {
                    $(".SourceNumberContent table").append("<tr>\n" +
                        "            <td>" + n.numSourceNo + "</td>\n" +
                        "            <td>" + n.hospId + "</td>\n" +
                        "            <td>" + n.departId + "</td>\n" +
                        "            <td>" + n.doctorId + "</td>\n" +
                        "            <td>" + n.workDate + "</td>\n" +
                        "            <td>\n" + n.workTime + "</td>\n" +
                        "            <td>" + n.initQuantity + "</td>\n" +
                        "            <td>" + n.restQuantity + "</td>\n" +
                        "            <td>" + n.fee + "</td>\n" +
                        "            <td><em data-toggle=\"modal\" data-target=\"#myModal2\">修改</em>&nbsp;&nbsp;<span data-toggle=\"modal\" data-target=\"#myModal3\">删除</span></td>\n" +
                        "        </tr>")
                })
            }, "json");
        }

        // 添加数据
        $(".SourceNumberContent #add").on("click", function () {
            $('#myModal1').modal('hide');
            var numSourceNo = $("#numSourceNo").val();
            var hospId = $("#hospId").val();
            var departId = $("#departId").val();
            var doctorId = $("#doctorId").val();
            var workDate = $("#workDate").val();
            var workTime = $("#workTime").val();
            var initQuantity = $("#initQuantity").val();
            var restQuantity = $("#restQuantity").val();
            var fee = $("#fee").val();
            console.log(numSourceNo);
            console.log(hospId);
            $.post("addSourceNumber", {
                "numSourceNo": numSourceNo,
                "hospId": hospId,
                "departId": departId,
                "doctorId": doctorId,
                "workDate": workDate,
                "workTime": workTime,
                "initQuantity": initQuantity,
                "restQuantity": restQuantity,
                "fee": fee
            }, function () {
                load();
                $('#myModal1').modal('hide');
            }, "text");
        });

        //修改数据
        $(".SourceNumberContent table").on("click", "em", function () {
            $("#numSourceNo2").val($(this).parent().siblings().eq(0).text());
            $("#hospId2").val($(this).parent().siblings().eq(1).text());
            $("#departId2").val($(this).parent().siblings().eq(2).text());
            $("#doctorId2").val($(this).parent().siblings().eq(3).text());
            $("#workDate2").val($(this).parent().siblings().eq(4).text());
            $("#workTime2").val($(this).parent().siblings().eq(5).text());
            $("#initQuantity2").val($(this).parent().siblings().eq(6).text());
            $("#restQuantity2").val($(this).parent().siblings().eq(7).text());
            $("#fee2").val($(this).parent().siblings().eq(8).text());

        });

        $("#update").on("click", function () {
            $('#myModal2').modal('hide');
            var numSourceNo = $("#numSourceNo2").val();
            var hospId = $("#hospId2").val();
            var departId = $("#departId2").val();
            var doctorId = $("#doctorId2").val();
            var workDate = $("#workDate2").val();
            var workTime = $("#workTime2").val();
            var initQuantity = $("#initQuantity2").val();
            var restQuantity = $("#restQuantity2").val();
            var fee = $("#fee2").val();
            $.post("updateSourceNumber", {
                 "numSourceNo": numSourceNo,
                "hospId": hospId,
                "departId": departId,
                "doctorId": doctorId,
                "workDate": workDate,
                "workTime": workTime,
                "initQuantity": initQuantity,
                "restQuantity": restQuantity,
                "fee": fee
            }, function (data) {
                load();
                $('#myModal2').modal('hide');
            }, "text");

        });

        //删除数据
        var id;
        $(".SourceNumberContent table").on("click", "span", function () {
            var sid = $(this).parent().siblings().eq(0).text();
            $("#myModal3 .modal-body").html("确定删除" + sid + "号吗？");
            id=sid;
        });
        $("#delete").on("click", function () {
            $('#myModal3').modal('hide');
            $.get("deleteSourceNumber", {"id": id}, function (data) {
                load();
                $('#myModal3').modal('hide');
            }, "text");
        });
    });
</script>
</html>
