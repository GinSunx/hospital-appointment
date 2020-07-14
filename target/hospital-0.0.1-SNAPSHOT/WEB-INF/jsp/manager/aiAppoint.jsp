<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>医生系统</title>
    <link rel="stylesheet" href="${mybasePath}assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="${mybasePath}assets/css/aiStyle.css">
    <script src="${mybasePath}assets/js/aiAppoint.js"></script>
    <script src="${mybasePath}assets/js/jquery-3.2.1.min.js"></script>
    <script src="${mybasePath}assets/js/bootstrap.min.js"></script>
    <style>
        table {
            width: 900px !important;
            font-size: 18px;
            margin: 95px 250px;
        }

        table span {
            color: #EB6864;
            cursor: pointer;
        }

        table span:hover {
            color: #799BE0;
        }
    </style>
</head>
<body>
<div class="header">
    <h4 class="clearfix">医生系统</h4>
</div>

<div class="subnav">
    <ul>
        <li>查看预约</li>
    </ul>
</div>

<table cellspacing="0" class="table table-striped table-hover">
    <tr>
        <td>预约编号</td>
        <td>医生</td>
        <td>预约日期</td>
        <td>预约时间段</td>
        <td>号源</td>
        <td>患者</td>
        <td>患者信息</td>
    </tr>
</table>

<%--查看信息的模态框--%>
<div class="modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                        aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title" id="myModalLabel1">患者信息</h4>
            </div>
            <div class="modal-body">

            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
            </div>
        </div>
    </div>
</div>

</body>
</html>
