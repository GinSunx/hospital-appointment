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
    <link rel="stylesheet" href="${mybasePath}assets/css/aiStyle.css">
    <script src="${mybasePath}assets/js/jquery-3.2.1.min.js"></script>
    <script src="${mybasePath}assets/js/bootstrap.min.js"></script>
    <script src="${mybasePath}assets/js/aiHospital.js"></script>
    <script src="${mybasePath}assets/js/aiDepartment.js"></script>
    <script src="${mybasePath}assets/js/aiDoctor.js"></script>
    <script src="${mybasePath}assets/js/aisourceNumber.js"></script>
</head>
<body>

<div class="header">
    <h4 class="clearfix">医院后台系统</h4>
</div>

<div class="subnav">
    <ul>
        <li>医院管理</li>
        <li>科室管理</li>
        <li>医生管理</li>
        <li>号源管理</li>
    </ul>
</div>

<div class="myContent">
    <div class="hospital">
        <span style="display:inline-block;margin:10px 600px">医院管理</span>
        <div class="hd clearfix">
            <span data-toggle="modal" data-target="#myModal4">添加</span>
        </div>
        <!-- 添加的模态框开始 -->
        <div class="modal fade" id="myModal4" tabindex="-1" role="dialog" aria-labelledby="myModalLabe4">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="myModalLabel4">添加</h4>
                    </div>
                    <div class="modal-body">
                        <form>
                            <div class="form-group">
                                <label for="hospitalId">编号</label>
                                <input type="text" class="form-control" id="hospitalId">
                            </div>
                            <div class="form-group">
                                <label for="hospitalName">医院名称</label>
                                <input type="text" class="form-control" id="hospitalName">
                            </div>
                            <div class="form-group">
                                <label for="hospitalDistinct">地区</label>
                                <input type="text" class="form-control" id="hospitalDistinct">
                            </div>
                            <div class="form-group">
                                <label for="deanName">院长</label>
                                <input type="text" class="form-control" id="deanName">
                            </div>
                            <div class="form-group">
                                <label for="hospitalImage">图片</label>
                                <input type="text" class="form-control" id="hospitalImage">
                            </div>
                            <div class="form-group">
                                <label for="hospitalDate">创建日期</label>
                                <input type="text" class="form-control" id="hospitalDate">
                            </div>
                            <div class="form-group">
                                <label for="hospitalDate">医院类型</label>
                                <input type="text" class="form-control" id="hospitalType">
                            </div>
                            <div class="form-group">
                                <label for="hospitalLevel">医院等级</label>
                                <input type="text" class="form-control" id="hospitalLevel">
                            </div>
                            <div class="form-group">
                                <label for="departNum">科室数量</label>
                                <input type="text" class="form-control" id="departNum">
                            </div>
                            <div class="form-group">
                                <label for="hospitalMsg">医院信息</label>
                                <input type="text" class="form-control" id="hospitalMsg">
                            </div>
                            <div class="form-group">
                                <label for="hospitalTel">医院电话</label>
                                <input type="text" class="form-control" id="hospitalTel">
                            </div>
                            <div class="form-group">
                                <label for="hospitalAddress">医院地址</label>
                                <input type="text" class="form-control" id="hospitalAddress">
                            </div>
                            <div class="form-group">
                                <label for="hospitalUrl">医院网址</label>
                                <input type="text" class="form-control" id="hospitalUrl">
                            </div>
                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                        <button type="button" class="btn btn-primary add" id="addHospital">添加</button>
                    </div>
                </div>
            </div>
        </div>
        <%--添加的模态框结束--%>

        <%--修改的模态框开始--%>
        <div class="modal fade" id="myModal5" tabindex="-1" role="dialog" aria-labelledby="myModalLabe5">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="myModalLabel5">修改</h4>
                    </div>
                    <div class="modal-body">
                        <form>
                            <div class="form-group">
                                <label for="hospitalId2">编号</label>
                                <input type="text" class="form-control" id="hospitalId2">
                            </div>
                            <div class="form-group">
                                <label for="hospitalName2">医院名称</label>
                                <input type="text" class="form-control" id="hospitalName2">
                            </div>
                            <div class="form-group">
                                <label for="hospitalDistinct2">地区</label>
                                <input type="text" class="form-control" id="hospitalDistinct2">
                            </div>
                            <div class="form-group">
                                <label for="deanName2">院长</label>
                                <input type="text" class="form-control" id="deanName2">
                            </div>
                            <div class="form-group">
                                <label for="hospitalImage2">图片</label>
                                <input type="text" class="form-control" id="hospitalImage2">
                            </div>
                            <div class="form-group">
                                <label for="hospitalDate2">创建日期</label>
                                <input type="text" class="form-control" id="hospitalDate2">
                            </div>
                            <div class="form-group">
                                <label for="hospitalDate2">医院类型</label>
                                <input type="text" class="form-control" id="hospitalType2">
                            </div>
                            <div class="form-group">
                                <label for="hospitalLevel2">医院等级</label>
                                <input type="text" class="form-control" id="hospitalLevel2">
                            </div>
                            <div class="form-group">
                                <label for="departNum2">科室数量</label>
                                <input type="text" class="form-control" id="departNum2">
                            </div>
                            <div class="form-group">
                                <label for="hospitalMsg2">医院信息</label>
                                <input type="text" class="form-control" id="hospitalMsg2">
                            </div>
                            <div class="form-group">
                                <label for="hospitalTel2">医院电话</label>
                                <input type="text" class="form-control" id="hospitalTel2">
                            </div>
                            <div class="form-group">
                                <label for="hospitalAddress2">医院地址</label>
                                <input type="text" class="form-control" id="hospitalAddress2">
                            </div>
                            <div class="form-group">
                                <label for="hospitalUrl2">医院网址</label>
                                <input type="text" class="form-control" id="hospitalUrl2">
                            </div>
                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                        <button type="button" class="btn btn-primary" id="updateHospital">修改</button>
                    </div>
                </div>
            </div>
        </div>
        <%--修改的模态框结束--%>

        <%--删除的模态框开始--%>
        <div class="modal fade" id="myModal6" tabindex="-1" role="dialog" aria-labelledby="myModalLabe6">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="myModalLabel6">删除</h4>
                    </div>
                    <div class="modal-body">

                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                        <button type="button" class="btn btn-primary" id="deleteHospital">删除</button>
                    </div>
                </div>
            </div>
        </div>
        <%--删除的模态框结束--%>

        <%--查看信息的模态框--%>
        <div class="modal fade" id="myModal13" tabindex="-1" role="dialog" aria-labelledby="myModalLabel13">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                aria-hidden="true">&times;</span>
                        </button>
                        <h4 class="modal-title" id="myModalLabel13">医院信息</h4>
                    </div>
                    <div class="modal-body">

                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                    </div>
                </div>
            </div>
        </div>
        <table cellspacing="0" class="table table-striped table-hover" style="width:1950px">
            <tr>
                <td>编号</td>
                <td>医院名称</td>
                <td>地区</td>
                <td>院长</td>
                <td>图片</td>
                <td>创建日期</td>
                <td>医院类型</td>
                <td>医院等级</td>
                <td>科室数量</td>
                <td>医院信息</td>
                <td>医院电话</td>
                <td>医院地址</td>
                <td>医院网址</td>
                <td>操作</td>
            </tr>

        </table>
    </div>

    <%--科室管理模块--%>
    <div class="department">
        <span style="display:inline-block;margin:10px 600px">科室管理</span>
        <div class="hd clearfix">
            <span data-toggle="modal" data-target="#myModal7">添加</span>
        </div>
        <table class="table table-hover table table-striped" style="width:1286px">
            <tr>
                <td>科室编号</td>
                <td>科室名称</td>
                <td>医院名称</td>
                <td>医生数量</td>
                <td>科室信息</td>
                <td>科室类型</td>
                <td>诊治范围</td>
                <td>操作</td>
            </tr>
        </table>
        <!-- 添加的模态框开始 -->
        <div class="modal fade" id="myModal7" tabindex="-1" role="dialog" aria-labelledby="myModalLabel7">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="myModalLabel7">添加</h4>
                    </div>
                    <div class="modal-body">
                        <form>
                            <div class="form-group">
                                <label for="departmentId">科室编号</label>
                                <input type="text" class="form-control" id="departmentId">
                            </div>
                            <div class="form-group">
                                <label for="departmentName">科室名称</label>
                                <input type="text" class="form-control" id="departmentName">
                            </div>
                            <div class="form-group">
                                <label for="hospName">医院名称</label>
                                <input type="text" class="form-control" id="hospName">
                            </div>
                            <div class="form-group">
                                <label for="docNum">医生数量</label>
                                <input type="text" class="form-control" id="docNum">
                            </div>
                            <div class="form-group">
                                <label for="departInfo">科室信息</label>
                                <input type="text" class="form-control" id="departInfo">
                            </div>
                            <div class="form-group">
                                <label for="departType">科室类型</label>
                                <input type="text" class="form-control" id="departType">
                            </div>
                            <div class="form-group">
                                <label for="departmentScope">诊治范围</label>
                                <input type="text" class="form-control" id="departmentScope">
                            </div>
                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                        <button type="button" class="btn btn-primary add" id="addDepart">添加</button>
                    </div>
                </div>
            </div>
        </div>
        <%--添加的模态框结束--%>

        <%--修改的模态框开始--%>
        <div class="modal fade" id="myModal8" tabindex="-1" role="dialog" aria-labelledby="myModalLabel8">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="myModalLabel8">修改</h4>
                    </div>
                    <div class="modal-body">
                        <form>
                            <div class="form-group">
                                <label for="departmentId2">科室编号</label>
                                <input type="text" class="form-control" id="departmentId2">
                            </div>
                            <div class="form-group">
                                <label for="departmentName2">科室名称</label>
                                <input type="text" class="form-control" id="departmentName2">
                            </div>
                            <div class="form-group">
                                <label for="hospName2">医院名称</label>
                                <input type="text" class="form-control" id="hospName2">
                            </div>
                            <div class="form-group">
                                <label for="docNum2">医生数量</label>
                                <input type="text" class="form-control" id="docNum2">
                            </div>
                            <div class="form-group">
                                <label for="departInfo2">科室信息</label>
                                <input type="text" class="form-control" id="departInfo2">
                            </div>
                            <div class="form-group">
                                <label for="departType2">科室类型</label>
                                <input type="text" class="form-control" id="departType2">
                            </div>
                            <div class="form-group">
                                <div class="form-group">
                                    <label for="departmentScope2">诊治范围</label>
                                    <input type="text" class="form-control" id="departmentScope2">
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                        <button type="button" class="btn btn-primary" id="updateDepart">修改</button>
                    </div>
                </div>
            </div>
        </div>
        <%--修改的模态框结束--%>

        <%--删除的模态框开始--%>
        <div class="modal fade" id="myModal9" tabindex="-1" role="dialog" aria-labelledby="myModalLabel9">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="myModalLabel9">删除</h4>
                    </div>
                    <div class="modal-body">

                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                        <button type="button" class="btn btn-primary" id="deleteDepart">删除</button>
                    </div>
                </div>
            </div>
        </div>
        <%--删除的模态框结束--%>

        <%--查看信息的模态框--%>
        <div class="modal fade" id="myModal14" tabindex="-1" role="dialog" aria-labelledby="myModalLabel14">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                aria-hidden="true">&times;</span>
                        </button>
                        <h4 class="modal-title" id="myModalLabel14">科室信息</h4>
                    </div>
                    <div class="modal-body">

                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <%--医生管理模块--%>
    <div class="doctor">
        <span style="display:inline-block;margin:10px 600px">医生管理</span>
        <div class="hd clearfix">
            <span data-toggle="modal" data-target="#myModal10">添加</span>
        </div>
        <table class="table table-hover table table-striped" style="width:1286px">
            <tr>
                <td>医生编号</td>
                <td>医生姓名</td>
                <td>性别</td>
                <td>医院名称</td>
                <td>科室名称</td>
                <td>图片</td>
                <td>职称</td>
                <td>学位</td>
                <td>特长</td>
                <td>医生信息</td>
                <td>操作</td>
            </tr>
        </table>
        <!-- 添加的模态框开始 -->
        <div class="modal fade" id="myModal10" tabindex="-1" role="dialog" aria-labelledby="myModalLabel10">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="myModalLabel10">添加</h4>
                    </div>
                    <div class="modal-body">
                        <form>
                            <div class="form-group">
                                <label for="docId">医生编号</label>
                                <input type="text" class="form-control" id="docId">
                            </div>
                            <div class="form-group">
                                <label for="docName">名字</label>
                                <input type="text" class="form-control" id="docName">
                            </div>
                            <div class="form-group">
                                <label for="docSex">性别</label>
                                <input type="text" class="form-control" id="docSex">
                            </div>
                            <div class="form-group">
                                <label for="hospName3">医院名称</label>
                                <input type="text" class="form-control" id="hospName3">
                            </div>
                            <div class="form-group">
                                <label for="departName">科室名称</label>
                                <input type="text" class="form-control" id="departName">
                            </div>
                            <div class="form-group">
                                <label for="docImg">图片</label>
                                <input type="text" class="form-control" id="docImg">
                            </div>
                            <div class="form-group">
                                <label for="docTile">职称</label>
                                <input type="text" class="form-control" id="docTile">
                            </div>
                            <div class="form-group">
                                <label for="degree">学位</label>
                                <input type="text" class="form-control" id="degree">
                            </div>
                            <div class="form-group">
                                <label for="forte">特长</label>
                                <input type="text" class="form-control" id="forte">
                            </div>
                            <div class="form-group">
                                <label for="docInfo">医生信息</label>
                                <input type="text" class="form-control" id="docInfo">
                            </div>
                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                        <button type="button" class="btn btn-primary add" id="addDoctor">添加</button>
                    </div>
                </div>
            </div>
        </div>
        <%--添加的模态框结束--%>

        <%--修改的模态框开始--%>
        <div class="modal fade" id="myModal11" tabindex="-1" role="dialog" aria-labelledby="myModalLabel11">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="myModalLabel11">修改</h4>
                    </div>
                    <div class="modal-body">
                        <form>
                            <div class="form-group">
                                <label for="docId2">医生编号</label>
                                <input type="text" class="form-control" id="docId2">
                            </div>
                            <div class="form-group">
                                <label for="docName2">名字</label>
                                <input type="text" class="form-control" id="docName2">
                            </div>
                            <div class="form-group">
                                <label for="docSex2">性别</label>
                                <input type="text" class="form-control" id="docSex2">
                            </div>
                            <div class="form-group">
                                <label for="hospName4">医院名称</label>
                                <input type="text" class="form-control" id="hospName4">
                            </div>
                            <div class="form-group">
                                <label for="departName2">科室名称</label>
                                <input type="text" class="form-control" id="departName2">
                            </div>
                            <div class="form-group">
                                <label for="docImg2">图片</label>
                                <input type="text" class="form-control" id="docImg2">
                            </div>
                            <div class="form-group">
                                <label for="docTile2">职称</label>
                                <input type="text" class="form-control" id="docTile2">
                            </div>
                            <div class="form-group">
                                <label for="degree2">学位</label>
                                <input type="text" class="form-control" id="degree2">
                            </div>
                            <div class="form-group">
                                <label for="forte2">学位</label>
                                <input type="text" class="form-control" id="forte2">
                            </div>
                            <div class="form-group">
                                <label for="docInfo2">医生信息</label>
                                <input type="text" class="form-control" id="docInfo2">
                            </div>
                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                        <button type="button" class="btn btn-primary" id="updateDoc">修改</button>
                    </div>
                </div>
            </div>
        </div>
        <%--修改的模态框结束--%>

        <%--删除的模态框开始--%>
        <div class="modal fade" id="myModal12" tabindex="-1" role="dialog" aria-labelledby="myModalLabel12">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="myModalLabel12">删除</h4>
                    </div>
                    <div class="modal-body">

                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                        <button type="button" class="btn btn-primary" id="deleteDoc">删除</button>
                    </div>
                </div>
            </div>
        </div>
        <%--删除的模态框结束--%>

        <%--查看信息的模态框--%>
        <div class="modal fade" id="myModal15" tabindex="-1" role="dialog" aria-labelledby="myModalLabel15">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                aria-hidden="true">&times;</span>
                        </button>
                        <h4 class="modal-title" id="myModalLabel15">医生信息</h4>
                    </div>
                    <div class="modal-body">

                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <%--号源管理模块--%>
    <div class="sourceNumber">
        <div class="SourceNumberContent">
            <!-- 添加的模态框开始 -->
            <div class="modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                    aria-hidden="true">&times;</span>
                            </button>
                            <h4 class="modal-title" id="myModalLabel1">添加</h4>
                        </div>
                        <div class="modal-body">
                            <form>
                                <div class="form-group">
                                    <label for="numberSourceNo">号源编号</label>
                                    <input type="text" class="form-control" id="numberSourceNo" name="numberSourceNo">
                                </div>
                                <div class="form-group">
                                    <label for="hosp">医院</label>
                                    <input type="text" class="form-control" id="hosp" name="hosp">
                                </div>
                                <div class="form-group">
                                    <label for="depart">科室</label>
                                    <input type="text" class="form-control" id="depart" name="depart">
                                </div>
                                <div class="form-group">
                                    <label for="doctor">医生</label>
                                    <input type="text" class="form-control" id="doctor" name="doctor">
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
            <!-- 添加的模态框结束 -->

            <%--修改的模态框开始--%>
            <div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                    aria-hidden="true">&times;</span>
                            </button>
                            <h4 class="modal-title" id="myModalLabel2">修改</h4>
                        </div>
                        <div class="modal-body">
                            <form class="update">
                                <div class="form-group">
                                    <label for="numberSourceNo2">号源编号</label>
                                    <input type="text" class="form-control" id="numberSourceNo2"/>
                                </div>
                                <div class="form-group">
                                    <label for="hosp2">医院</label>
                                    <input type="text" class="form-control" id="hosp2">
                                </div>
                                <div class="form-group">
                                    <label for="depart2">科室</label>
                                    <input type="text" class="form-control" id="depart2">
                                </div>
                                <div class="form-group">
                                    <label for="doctor2">医生</label>
                                    <input type="text" class="form-control" id="doctor2">
                                </div>
                                <div class="form-group">
                                    <label for="workDate2">日期</label>
                                    <input type="text" class="form-control" id="workDate2">
                                </div>
                                <div class="form-group">
                                    <label for="workTime2">时间段</label><br>
                                    <input type="text" class="form-control" id="workTime2">
                                </div>
                                <div class="form-group">
                                    <label for="initQuantity2">初始数量</label>
                                    <input type="text" class="form-control" id="initQuantity2">
                                </div>
                                <div class="form-group">
                                    <label for="restQuantity2">剩余数量</label>
                                    <input type="text" class="form-control" id="restQuantity2">
                                </div>
                                <div class="form-group">
                                    <label for="fee2">费用</label>
                                    <input type="text" class="form-control" id="fee2">
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
            <%--修改的模态框结束--%>

            <%--删除的模态框开始--%>
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
            <%--删除的模态框结束--%>
            <span style="display:inline-block;margin:10px 600px">号源管理</span>
            <div class="hd clearfix">
                <span data-toggle="modal" data-target="#myModal1">添加</span>
            </div>
            <table class="table table-hover  table-striped" style="width:1286px">
                <tr>
                    <td>号源编号</td>
                    <td>医院名称</td>
                    <td>科室名称</td>
                    <td>医生姓名</td>
                    <td>日期</td>
                    <td>时间段</td>
                    <td>初始数量</td>
                    <td>剩余数量</td>
                    <td>费用</td>
                    <td>操作</td>
                </tr>

            </table>
        </div>
    </div>
</div>
<script>
    $(function () {
        $("ul").on("click", "li", function () {
            // 控制管理模块的显示和隐藏
            // alert($(this).text());
            // $(this).css({
            //     "color": " #0695E4",
            //     "background-color": "rgba(0, 0, 0, 0.2)"
            // }).siblings().css({
            //     "color": " #fff",
            //     "background-color": "rgba(0, 0, 0, 0.1)"
            // });
            $(".myContent").children().eq($(this).index()).css("display", "block").siblings().css("display", "none");
        })
    })
</script>

</body>
</html>
