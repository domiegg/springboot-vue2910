<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
    <%@ include file="../../static/head.jsp" %>
    <link href="http://www.bootcss.com/p/bootstrap-datetimepicker/bootstrap-datetimepicker/css/datetimepicker.css"
          rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/bootstrap-select.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
    <script type="text/javascript" charset="utf-8">
        window.UEDITOR_HOME_URL = "${pageContext.request.contextPath}/resources/ueditor/"; //UEDITOR_HOME_URL、config、all这三个顺序不能改变
    </script>
    <script type="text/javascript" charset="utf-8"
            src="${pageContext.request.contextPath}/resources/ueditor/ueditor.config.js"></script>
    <script type="text/javascript" charset="utf-8"
            src="${pageContext.request.contextPath}/resources/ueditor/ueditor.all.min.js"></script>
    <script type="text/javascript" charset="utf-8"
            src="${pageContext.request.contextPath}/resources/ueditor/lang/zh-cn/zh-cn.js"></script>
</head>
<style>
    .error {
        color: red;
    }
</style>
<body>
<!-- Pre Loader -->
<div class="loading">
    <div class="spinner">
        <div class="double-bounce1"></div>
        <div class="double-bounce2"></div>
    </div>
</div>
<!--/Pre Loader -->
<div class="wrapper">
    <!-- Page Content -->
    <div id="content">
        <!-- Top Navigation -->
        <%@ include file="../../static/topNav.jsp" %>
        <!-- Menu -->
        <div class="container menu-nav">
            <nav class="navbar navbar-expand-lg lochana-bg text-white">
                <button class="navbar-toggler" type="button" data-toggle="collapse"
                        data-target="#navbarSupportedContent"
                        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="ti-menu text-white"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul id="navUl" class="navbar-nav mr-auto">

                    </ul>
                </div>
            </nav>
        </div>
        <!-- /Menu -->
        <!-- Breadcrumb -->
        <!-- Page Title -->
        <div class="container mt-0">
            <div class="row breadcrumb-bar">
                <div class="col-md-6">
                    <h3 class="block-title">编辑订单</h3>
                </div>
                <div class="col-md-6">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="${pageContext.request.contextPath}/index.jsp">
                                <span class="ti-home"></span>
                            </a>
                        </li>
                        <li class="breadcrumb-item">订单管理</li>
                        <li class="breadcrumb-item active">编辑订单</li>
                    </ol>
                </div>
            </div>
        </div>
        <!-- /Page Title -->

        <!-- /Breadcrumb -->
        <!-- Main Content -->
        <div class="container">

            <div class="row">
                <!-- Widget Item -->
                <div class="col-md-12">
                    <div class="widget-area-2 lochana-box-shadow">
                        <h3 class="widget-title">订单信息</h3>
                        <form id="addOrUpdateForm">
                            <div class="form-row">
                            <!-- 级联表的字段 -->
                                    <div class="form-group col-md-6 aaaaaa fahuoaddress">
                                        <label>发货地址</label>
                                        <div>
                                            <select style="width: 450px" id="fahuoaddressSelect" name="fahuoaddressSelect"
                                                    class="selectpicker form-control"  data-live-search="true"
                                                    title="请选择" data-header="请选择" data-size="5" data-width="650px">
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group col-md-6 fahuoaddress">
                                        <label>发货人</label>
                                        <input style="width: 450px" id="fahuoaddressName" name="fahuoaddressName" class="form-control"
                                               placeholder="发货人" readonly>
                                    </div>
                                    <div class="form-group col-md-6 fahuoaddress">
                                        <label>发货电话</label>
                                        <input style="width: 450px" id="fahuoaddressPhone" name="fahuoaddressPhone" class="form-control"
                                               placeholder="发货电话" readonly>
                                    </div>
                                    <div class="form-group col-md-6 fahuoaddress">
                                        <label>发货地址</label>
                                        <input style="width: 450px" id="fahuoaddressDizhi" name="fahuoaddressDizhi" class="form-control"
                                               placeholder="发货地址" readonly>
                                    </div>
                                    <div class="form-group col-md-6 aaaaaa shouhuoaddress">
                                        <label>收货地址</label>
                                        <div>
                                            <select style="width: 450px" id="shouhuoaddressSelect" name="shouhuoaddressSelect"
                                                    class="selectpicker form-control"  data-live-search="true"
                                                    title="请选择" data-header="请选择" data-size="5" data-width="650px">
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group col-md-6 shouhuoaddress">
                                        <label>收货人</label>
                                        <input style="width: 450px" id="shouhuoaddressName" name="shouhuoaddressName" class="form-control"
                                               placeholder="收货人" readonly>
                                    </div>
                                    <div class="form-group col-md-6 shouhuoaddress">
                                        <label>收货电话</label>
                                        <input style="width: 450px" id="shouhuoaddressPhone" name="shouhuoaddressPhone" class="form-control"
                                               placeholder="收货电话" readonly>
                                    </div>
                                    <div class="form-group col-md-6 shouhuoaddress">
                                        <label>收货地址</label>
                                        <input style="width: 450px" id="shouhuoaddressDizhi" name="shouhuoaddressDizhi" class="form-control"
                                               placeholder="收货地址" readonly>
                                    </div>
                                    <div class="form-group col-md-6 aaaaaa yonghu">
                                        <label>用户</label>
                                        <div>
                                            <select style="width: 450px" id="yonghuSelect" name="yonghuSelect"
                                                    class="selectpicker form-control"  data-live-search="true"
                                                    title="请选择" data-header="请选择" data-size="5" data-width="650px">
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group col-md-6 yonghu">
                                        <label>用户姓名</label>
                                        <input style="width: 450px" id="yonghuName" name="yonghuName" class="form-control"
                                               placeholder="用户姓名" readonly>
                                    </div>
                                    <div class="form-group col-md-6 yonghu">
                                        <label>用户手机号</label>
                                        <input style="width: 450px" id="yonghuPhone" name="yonghuPhone" class="form-control"
                                               placeholder="用户手机号" readonly>
                                    </div>
                                    <div class="form-group col-md-6 yonghu">
                                        <label>用户身份证号</label>
                                        <input style="width: 450px" id="yonghuIdNumber" name="yonghuIdNumber" class="form-control"
                                               placeholder="用户身份证号" readonly>
                                    </div>
                                    <div class="form-group col-md-6 yonghu">
                                        <label>用户头像</label>
                                        <img id="yonghuPhotoImg" src="" width="100" height="100">
                                    </div>
                                    <div class="form-group col-md-6 yonghu">
                                        <label>电子邮箱</label>
                                        <input style="width: 450px" id="yonghuEmail" name="yonghuEmail" class="form-control"
                                               placeholder="电子邮箱" readonly>
                                    </div>
                                    <div class="form-group col-md-6 aaaaaa yunhuoluxian">
                                        <label>运货路线</label>
                                        <div>
                                            <select style="width: 450px" id="yunhuoluxianSelect" name="yunhuoluxianSelect"
                                                    class="selectpicker form-control"  data-live-search="true"
                                                    title="请选择" data-header="请选择" data-size="5" data-width="650px">
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group col-md-6 yunhuoluxian">
                                        <label>运货路线编号</label>
                                        <input style="width: 450px" id="yunhuoluxianUuidNumber" name="yunhuoluxianUuidNumber" class="form-control"
                                               placeholder="运货路线编号" readonly>
                                    </div>
                                    <div class="form-group col-md-6 yunhuoluxian">
                                        <label>何处出发</label>
                                        <input style="width: 450px" id="yunhuoluxianChufa" name="yunhuoluxianChufa" class="form-control"
                                               placeholder="何处出发" readonly>
                                    </div>
                                    <div class="form-group col-md-6 yunhuoluxian">
                                        <label>去往何处</label>
                                        <input style="width: 450px" id="yunhuoluxianHechu" name="yunhuoluxianHechu" class="form-control"
                                               placeholder="去往何处" readonly>
                                    </div>
                                    <div class="form-group col-md-6 yunhuoluxian">
                                        <label>大概时长</label>
                                        <input style="width: 450px" id="yunhuoluxianShichang" name="yunhuoluxianShichang" class="form-control"
                                               placeholder="大概时长" readonly>
                                    </div>
                                    <div class="form-group col-md-6 yunhuoluxian">
                                        <label>费用(元)/公斤</label>
                                        <input style="width: 450px" id="yunhuoluxianFeiyong" name="yunhuoluxianFeiyong" class="form-control"
                                               placeholder="费用(元)/公斤" readonly>
                                    </div>
                            <!-- 当前表的字段 -->
                                    <input id="updateId" name="id" type="hidden">
                                    <div class="form-group col-md-6 dingdanUuidNumberDiv">
                                        <label>订单号</label>
                                        <input style="width: 450px" id="dingdanUuidNumber" name="dingdanUuidNumber" class="form-control"
                                               placeholder="订单号">
                                    </div>
                                    <div class="form-group col-md-6 shangpinNameDiv">
                                        <label>运输物品名称</label>
                                        <input style="width: 450px" id="shangpinName" name="shangpinName" class="form-control"
                                               placeholder="运输物品名称">
                                    </div>
                                    <div class="form-group col-md-6 shangpinTypesDiv">
                                        <label>运输物品类型</label>
                                        <select style="width: 450px" id="shangpinTypesSelect" name="shangpinTypes" class="form-control">
                                        </select>
                                    </div>
                                    <div class="form-group  col-md-6 yunshuContentDiv">
                                        <label>运输物品详情</label>
                                        <input id="yunshuContentupload" name="file" type="file">
                                        <script id="yunshuContentEditor" type="text/plain"
                                                style="width:100%;height:230px;"></script>
                                        <script type = "text/javascript" >
                                        //建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
                                        //相见文档配置属于你自己的编译器
                                        var yunshuContentUe = UE.getEditor('yunshuContentEditor', {
                                            toolbars: [
                                                [
                                                    'undo', //撤销
                                                    'bold', //加粗
                                                    'redo', //重做
                                                    'underline', //下划线
                                                    'horizontal', //分隔线
                                                    'inserttitle', //插入标题
                                                    'cleardoc', //清空文档
                                                    'fontfamily', //字体
                                                    'fontsize', //字号
                                                    'paragraph', //段落格式
                                                    'inserttable', //插入表格
                                                    'justifyleft', //居左对齐
                                                    'justifyright', //居右对齐
                                                    'justifycenter', //居中对
                                                    'justifyjustify', //两端对齐
                                                    'forecolor', //字体颜色
                                                    'fullscreen', //全屏
                                                    'edittip ', //编辑提示
                                                    'customstyle', //自定义标题
                                                ]
                                            ]
                                        });
                                        </script>
                                        <input type="hidden" name="yunshuContent" id="yunshuContent-input">
                                    </div>
                                <input id="fahuoaddressId" name="fahuoaddressId" type="hidden">
                                <input id="shouhuoaddressId" name="shouhuoaddressId" type="hidden">
                                <input id="yonghuId" name="yonghuId" type="hidden">
                                <input id="yunhuoluxianId" name="yunhuoluxianId" type="hidden">
                                    <div class="form-group col-md-6 dingdanTypesDiv">
                                        <label>订单状态</label>
                                        <select style="width: 450px" id="dingdanTypesSelect" name="dingdanTypes" class="form-control">
                                        </select>
                                    </div>
                                    <div class="form-group col-md-12 mb-3">
                                        <button id="submitBtn" type="button" class="btn btn-primary btn-lg">提交</button>
                                        <button id="exitBtn" type="button" class="btn btn-primary btn-lg">返回</button>
                                    </div>
                            </div>
                        </form>
                    </div>
                </div>
                <!-- /Widget Item -->
            </div>
        </div>
        <!-- /Main Content -->
    </div>
    <!-- /Page Content -->
</div>
<!-- Back to Top -->
<a id="back-to-top" href="#" class="back-to-top">
    <span class="ti-angle-up"></span>
</a>
<!-- /Back to Top -->
<%@ include file="../../static/foot.jsp" %>
<script src="${pageContext.request.contextPath}/resources/js/vue.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.ui.widget.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.fileupload.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.form.js"></script>
<script type="text/javascript" charset="utf-8"
        src="${pageContext.request.contextPath}/resources/js/validate/jquery.validate.min.js"></script>
<script type="text/javascript" charset="utf-8"
        src="${pageContext.request.contextPath}/resources/js/validate/messages_zh.js"></script>
<script type="text/javascript" charset="utf-8"
        src="${pageContext.request.contextPath}/resources/js/validate/card.js"></script>
<script type="text/javascript" charset="utf-8"
        src="${pageContext.request.contextPath}/resources/js/datetimepicker/bootstrap-datetimepicker.min.js"></script>
<script type="text/javascript" charset="utf-8"
                 src="${pageContext.request.contextPath}/resources/js/bootstrap-select.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/laydate.js"></script>
<script>
    <%@ include file="../../utils/menu.jsp"%>
    <%@ include file="../../static/setMenu.js"%>
    <%@ include file="../../utils/baseUrl.jsp"%>

    var tableName = "dingdan";
    var pageType = "add-or-update";
    var updateId = "";
    var crossTableId = -1;
    var crossTableName = '';
    var ruleForm = {};
    var crossRuleForm = {};


    // 下拉框数组
        <!-- 当前表的下拉框数组 -->
    var shangpinTypesOptions = [];
    var dingdanTypesOptions = [];
        <!-- 级联表的下拉框数组 -->
    var fahuoaddressOptions = [];
    var shouhuoaddressOptions = [];
    var yonghuOptions = [];
    var yunhuoluxianOptions = [];

    var ruleForm = {};


    // 文件上传
    function upload() {

        <!-- 当前表的文件上传 -->

        $('#yunshuContentupload').fileupload({
            url: baseUrl + 'file/upload',
            headers: {token: window.sessionStorage.getItem("token")},
            dataType: 'json',
            done: function (e, data) {
                UE.getEditor('yunshuContentEditor').execCommand('insertHtml', '<img src=\"' + baseUrl + 'upload/' + data.result.file + '\" width=900 height=560>');
            }
        });


    }

    // 表单提交
    function submit() {
        if (validform() == true && compare() == true) {
            let data = {};
            getContent();
            if(window.sessionStorage.getItem('role') != '发货地址'){//当前登录用户不为这个
                if($("#fahuoaddressId") !=null){
                    var fahuoaddressId = $("#fahuoaddressId").val();
                    if(fahuoaddressId == null || fahuoaddressId =='' || fahuoaddressId == 'null'){
                        alert("发货地址 不能为空");
                        return;
                    }
                }
            }
            if(window.sessionStorage.getItem('role') != '收货地址'){//当前登录用户不为这个
                if($("#shouhuoaddressId") !=null){
                    var shouhuoaddressId = $("#shouhuoaddressId").val();
                    if(shouhuoaddressId == null || shouhuoaddressId =='' || shouhuoaddressId == 'null'){
                        alert("收货地址 不能为空");
                        return;
                    }
                }
            }
            if(window.sessionStorage.getItem('role') != '用户'){//当前登录用户不为这个
                if($("#yonghuId") !=null){
                    var yonghuId = $("#yonghuId").val();
                    if(yonghuId == null || yonghuId =='' || yonghuId == 'null'){
                        alert("用户不能为空");
                        return;
                    }
                }
            }
            if(window.sessionStorage.getItem('role') != '运货路线'){//当前登录用户不为这个
                if($("#yunhuoluxianId") !=null){
                    var yunhuoluxianId = $("#yunhuoluxianId").val();
                    if(yunhuoluxianId == null || yunhuoluxianId =='' || yunhuoluxianId == 'null'){
                        alert("运货路线不能为空");
                        return;
                    }
                }
            }
            let value = $('#addOrUpdateForm').serializeArray();
            $.each(value, function (index, item) {
                data[item.name] = item.value;
            });
            let json = JSON.stringify(data);
            var urlParam;
            var successMes = '';
            if (updateId != null && updateId != "null" && updateId != '') {
                urlParam = 'update';
                successMes = '修改成功';
            } else {
                urlParam = 'save';
                    successMes = '添加成功';

            }
            httpJson("dingdan/" + urlParam, "POST", data, (res) => {
                if(res.code == 0){
                    window.sessionStorage.removeItem('adddingdan');
                    window.sessionStorage.removeItem('updateId');
                    let flag = true;
                    if (flag) {
                        alert(successMes);
                    }
                    if (window.sessionStorage.getItem('onlyme') != null && window.sessionStorage.getItem('onlyme') == "true") {
                        window.sessionStorage.removeItem('onlyme');
                        window.sessionStorage.setItem("reload","reload");
                        window.parent.location.href = "${pageContext.request.contextPath}/index.jsp";
                    } else {
                        window.location.href = "list.jsp";
                    }
                }
            });
        } else {
            alert("表单未填完整或有错误");
        }
    }

    // 查询列表
        <!-- 查询当前表的所有列表 -->
        function shangpinTypesSelect() {
            //填充下拉框选项
            http("dictionary/page?page=1&limit=100&sort=&order=&dicCode=shangpin_types", "GET", {}, (res) => {
                if(res.code == 0){
                    shangpinTypesOptions = res.data.list;
                }
            });
        }
        function dingdanTypesSelect() {
            //填充下拉框选项
            http("dictionary/page?page=1&limit=100&sort=&order=&dicCode=dingdan_types", "GET", {}, (res) => {
                if(res.code == 0){
                    dingdanTypesOptions = res.data.list;
                }
            });
        }
        <!-- 查询级联表的所有列表 -->
        function fahuoaddressSelect() {
            //填充下拉框选项
            http("fahuoaddress/page?page=1&limit=100&sort=&order=", "GET", {}, (res) => {
                if(res.code == 0){
                    fahuoaddressOptions = res.data.list;
                }
            });
        }

        function fahuoaddressSelectOne(id) {
            http("fahuoaddress/info/"+id, "GET", {}, (res) => {
                if(res.code == 0){
                ruleForm = res.data;
                fahuoaddressShowImg();
                fahuoaddressShowVideo();
                fahuoaddressDataBind();
            }
        });
        }
        function shouhuoaddressSelect() {
            //填充下拉框选项
            http("shouhuoaddress/page?page=1&limit=100&sort=&order=", "GET", {}, (res) => {
                if(res.code == 0){
                    shouhuoaddressOptions = res.data.list;
                }
            });
        }

        function shouhuoaddressSelectOne(id) {
            http("shouhuoaddress/info/"+id, "GET", {}, (res) => {
                if(res.code == 0){
                ruleForm = res.data;
                shouhuoaddressShowImg();
                shouhuoaddressShowVideo();
                shouhuoaddressDataBind();
            }
        });
        }
        function yonghuSelect() {
            //填充下拉框选项
            http("yonghu/page?page=1&limit=100&sort=&order=", "GET", {}, (res) => {
                if(res.code == 0){
                    yonghuOptions = res.data.list;
                }
            });
        }

        function yonghuSelectOne(id) {
            http("yonghu/info/"+id, "GET", {}, (res) => {
                if(res.code == 0){
                ruleForm = res.data;
                yonghuShowImg();
                yonghuShowVideo();
                yonghuDataBind();
            }
        });
        }
        function yunhuoluxianSelect() {
            //填充下拉框选项
            http("yunhuoluxian/page?page=1&limit=100&sort=&order=", "GET", {}, (res) => {
                if(res.code == 0){
                    yunhuoluxianOptions = res.data.list;
                }
            });
        }

        function yunhuoluxianSelectOne(id) {
            http("yunhuoluxian/info/"+id, "GET", {}, (res) => {
                if(res.code == 0){
                ruleForm = res.data;
                yunhuoluxianShowImg();
                yunhuoluxianShowVideo();
                yunhuoluxianDataBind();
            }
        });
        }



    // 初始化下拉框
    <!-- 初始化当前表的下拉框 -->
        function initializationShangpintypesSelect(){
            var shangpinTypesSelect = document.getElementById('shangpinTypesSelect');
            if(shangpinTypesSelect != null && shangpinTypesOptions != null  && shangpinTypesOptions.length > 0 ){
                for (var i = 0; i < shangpinTypesOptions.length; i++) {
                    shangpinTypesSelect.add(new Option(shangpinTypesOptions[i].indexName,shangpinTypesOptions[i].codeIndex));
                }
            }
        }
        function initializationDingdantypesSelect(){
            var dingdanTypesSelect = document.getElementById('dingdanTypesSelect');
            if(dingdanTypesSelect != null && dingdanTypesOptions != null  && dingdanTypesOptions.length > 0 ){
                for (var i = 0; i < dingdanTypesOptions.length; i++) {
                    dingdanTypesSelect.add(new Option(dingdanTypesOptions[i].indexName,dingdanTypesOptions[i].codeIndex));
                }
            }
        }

        function initializationfahuoaddressSelect() {
            var fahuoaddressSelect = document.getElementById('fahuoaddressSelect');
            if(fahuoaddressSelect != null && fahuoaddressOptions != null  && fahuoaddressOptions.length > 0 ) {
                for (var i = 0; i < fahuoaddressOptions.length; i++) {
                        fahuoaddressSelect.add(new Option(fahuoaddressOptions[i].fahuoaddressName, fahuoaddressOptions[i].id));
                }

                $("#fahuoaddressSelect").change(function(e) {
                        fahuoaddressSelectOne(e.target.value);
                });
            }

        }

        function initializationshouhuoaddressSelect() {
            var shouhuoaddressSelect = document.getElementById('shouhuoaddressSelect');
            if(shouhuoaddressSelect != null && shouhuoaddressOptions != null  && shouhuoaddressOptions.length > 0 ) {
                for (var i = 0; i < shouhuoaddressOptions.length; i++) {
                        shouhuoaddressSelect.add(new Option(shouhuoaddressOptions[i].shouhuoaddressName, shouhuoaddressOptions[i].id));
                }

                $("#shouhuoaddressSelect").change(function(e) {
                        shouhuoaddressSelectOne(e.target.value);
                });
            }

        }

        function initializationyonghuSelect() {
            var yonghuSelect = document.getElementById('yonghuSelect');
            if(yonghuSelect != null && yonghuOptions != null  && yonghuOptions.length > 0 ) {
                for (var i = 0; i < yonghuOptions.length; i++) {
                        yonghuSelect.add(new Option(yonghuOptions[i].yonghuName, yonghuOptions[i].id));
                }

                $("#yonghuSelect").change(function(e) {
                        yonghuSelectOne(e.target.value);
                });
            }

        }

        function initializationyunhuoluxianSelect() {
            var yunhuoluxianSelect = document.getElementById('yunhuoluxianSelect');
            if(yunhuoluxianSelect != null && yunhuoluxianOptions != null  && yunhuoluxianOptions.length > 0 ) {
                for (var i = 0; i < yunhuoluxianOptions.length; i++) {
                        yunhuoluxianSelect.add(new Option(yunhuoluxianOptions[i].yunhuoluxianUuidNumber, yunhuoluxianOptions[i].id));
                }

                $("#yunhuoluxianSelect").change(function(e) {
                        yunhuoluxianSelectOne(e.target.value);
                });
            }

        }



    // 下拉框选项回显
    function setSelectOption() {

        <!-- 当前表的下拉框回显 -->

        var shangpinTypesSelect = document.getElementById("shangpinTypesSelect");
        if(shangpinTypesSelect != null && shangpinTypesOptions != null  && shangpinTypesOptions.length > 0 ) {
            for (var i = 0; i < shangpinTypesOptions.length; i++) {
                if (shangpinTypesOptions[i].codeIndex == ruleForm.shangpinTypes) {//下拉框value对比,如果一致就赋值汉字
                        shangpinTypesSelect.options[i].selected = true;
                }
            }
        }

        var dingdanTypesSelect = document.getElementById("dingdanTypesSelect");
        if(dingdanTypesSelect != null && dingdanTypesOptions != null  && dingdanTypesOptions.length > 0 ) {
            for (var i = 0; i < dingdanTypesOptions.length; i++) {
                if (dingdanTypesOptions[i].codeIndex == ruleForm.dingdanTypes) {//下拉框value对比,如果一致就赋值汉字
                        dingdanTypesSelect.options[i].selected = true;
                }
            }
        }
        <!--  级联表的下拉框回显  -->
            var fahuoaddressSelect = document.getElementById("fahuoaddressSelect");
            if(fahuoaddressSelect != null && fahuoaddressOptions != null  && fahuoaddressOptions.length > 0 ) {
                for (var i = 0; i < fahuoaddressOptions.length; i++) {
                    if (fahuoaddressOptions[i].id == ruleForm.fahuoaddressId) {//下拉框value对比,如果一致就赋值汉字
                        fahuoaddressSelect.options[i+1].selected = true;
                        $("#fahuoaddressSelect" ).selectpicker('refresh');
                    }
                }
            }
            var shouhuoaddressSelect = document.getElementById("shouhuoaddressSelect");
            if(shouhuoaddressSelect != null && shouhuoaddressOptions != null  && shouhuoaddressOptions.length > 0 ) {
                for (var i = 0; i < shouhuoaddressOptions.length; i++) {
                    if (shouhuoaddressOptions[i].id == ruleForm.shouhuoaddressId) {//下拉框value对比,如果一致就赋值汉字
                        shouhuoaddressSelect.options[i+1].selected = true;
                        $("#shouhuoaddressSelect" ).selectpicker('refresh');
                    }
                }
            }
            var yonghuSelect = document.getElementById("yonghuSelect");
            if(yonghuSelect != null && yonghuOptions != null  && yonghuOptions.length > 0 ) {
                for (var i = 0; i < yonghuOptions.length; i++) {
                    if (yonghuOptions[i].id == ruleForm.yonghuId) {//下拉框value对比,如果一致就赋值汉字
                        yonghuSelect.options[i+1].selected = true;
                        $("#yonghuSelect" ).selectpicker('refresh');
                    }
                }
            }
            var yunhuoluxianSelect = document.getElementById("yunhuoluxianSelect");
            if(yunhuoluxianSelect != null && yunhuoluxianOptions != null  && yunhuoluxianOptions.length > 0 ) {
                for (var i = 0; i < yunhuoluxianOptions.length; i++) {
                    if (yunhuoluxianOptions[i].id == ruleForm.yunhuoluxianId) {//下拉框value对比,如果一致就赋值汉字
                        yunhuoluxianSelect.options[i+1].selected = true;
                        $("#yunhuoluxianSelect" ).selectpicker('refresh');
                    }
                }
            }
    }


    // 填充富文本框
    function setContent() {

        <!-- 当前表的填充富文本框 -->
        if (ruleForm.yunshuContent != null && ruleForm.yunshuContent != 'null' && ruleForm.yunshuContent != '' && $("#yunshuContentupload").length>0) {

            var yunshuContentUeditor = UE.getEditor('yunshuContentEditor');
            yunshuContentUeditor.ready(function () {
                var mes = '';
                if(ruleForm.yunshuContent != null){
                    mes = ''+ ruleForm.yunshuContent;
                    // mes = mes.replace(/\n/g, "<br>");
                }
                yunshuContentUeditor.setContent(mes);
            });
        }
    }
    // 获取富文本框内容
    function getContent() {

        <!-- 获取当前表的富文本框内容 -->
        if($("#yunshuContentupload").length>0) {
            var yunshuContentEditor = UE.getEditor('yunshuContentEditor');
            if (yunshuContentEditor.hasContents()) {
                $('#yunshuContent-input').attr('value', yunshuContentEditor.getContent());
            }
        }
    }
    //数字检查
        <!-- 当前表的数字检查 -->
        function dingdanDeleteChickValue(e){
            var this_val = e.value || 0;
            var reg=/^[1-9][0-9]*$/;
            if(!reg.test(this_val)){
                e.value = "";
                alert("输入不合法");
                return false;
            }
        }

    function exit() {
        window.sessionStorage.removeItem("updateId");
        window.sessionStorage.removeItem('adddingdan');
        window.location.href = "list.jsp";
    }
    // 表单校验
    function validform() {
        return $("#addOrUpdateForm").validate({
            rules: {
                dingdanUuidNumber: "required",
                shangpinName: "required",
                shangpinTypes: "required",
                yunshuContent: "required",
                fahuoaddressId: "required",
                shouhuoaddressId: "required",
                yonghuId: "required",
                yunhuoluxianId: "required",
                dingdanTypes: "required",
            },
            messages: {
                dingdanUuidNumber: "订单号不能为空",
                shangpinName: "运输物品名称不能为空",
                shangpinTypes: "运输物品类型不能为空",
                yunshuContent: "运输物品详情不能为空",
                fahuoaddressId: "发货地址不能为空",
                shouhuoaddressId: "收货地址不能为空",
                yonghuId: "用户不能为空",
                yunhuoluxianId: "运货路线不能为空",
                dingdanTypes: "订单状态不能为空",
            }
        }).form();
    }

    // 获取当前详情
    function getDetails() {
        var adddingdan = window.sessionStorage.getItem("adddingdan");
        if (adddingdan != null && adddingdan != "" && adddingdan != "null") {
            //注册表单验证
            $(validform());
            $("#dingdanUuidNumber").val(new Date().getTime()+Math.ceil(Math.random()*10));//设置唯一号

            $('#submitBtn').text('新增');

        } else {
            $('#submitBtn').text('修改');
            var userId = window.sessionStorage.getItem('userId');
            updateId = userId;//先赋值登录用户id
            var uId  = window.sessionStorage.getItem('updateId');//获取修改传过来的id
            if (uId != null && uId != "" && uId != "null") {
                //如果修改id不为空就赋值修改id
                updateId = uId;
            }
            window.sessionStorage.removeItem('updateId');
            http("dingdan/info/" + updateId, "GET", {}, (res) => {
                if(res.code == 0)
                {
                    ruleForm = res.data
                    // 是/否下拉框回显
                    setSelectOption();
                    // 设置图片src
                    showImg();
                    // 设置视频src
                    showVideo();
                    // 数据填充
                    dataBind();
                    // 富文本框回显
                    setContent();
                    //注册表单验证
                    $(validform());
                }

            });
        }
    }

    // 清除可能会重复渲染的selection
    function clear(className) {
        var elements = document.getElementsByClassName(className);
        for (var i = elements.length - 1; i >= 0; i--) {
            elements[i].parentNode.removeChild(elements[i]);
        }
    }

    function dateTimePick() {
        var insertTime = laydate.render({
            elem: '#insertTime-input'
            ,type: 'datetime'
        });
    }


    function dataBind() {


    <!--  级联表的数据回显  -->
        fahuoaddressDataBind();
        shouhuoaddressDataBind();
        yonghuDataBind();
        yunhuoluxianDataBind();


    <!--  当前表的数据回显  -->
        $("#updateId").val(ruleForm.id);
        $("#dingdanUuidNumber").val(ruleForm.dingdanUuidNumber);
        $("#shangpinName").val(ruleForm.shangpinName);
        $("#yunshuContent").val(ruleForm.yunshuContent);
        $("#fahuoaddressId").val(ruleForm.fahuoaddressId);
        $("#shouhuoaddressId").val(ruleForm.shouhuoaddressId);
        $("#yonghuId").val(ruleForm.yonghuId);
        $("#yunhuoluxianId").val(ruleForm.yunhuoluxianId);

    }
    <!--  级联表的数据回显  -->
    function fahuoaddressDataBind(){

                    <!-- 把id赋值给当前表的id-->
        $("#fahuoaddressId").val(ruleForm.id);

        $("#yonghuId").val(ruleForm.yonghuId);
        $("#fahuoaddressName").val(ruleForm.fahuoaddressName);
        $("#fahuoaddressPhone").val(ruleForm.fahuoaddressPhone);
        $("#fahuoaddressDizhi").val(ruleForm.fahuoaddressDizhi);
    }

    function shouhuoaddressDataBind(){

                    <!-- 把id赋值给当前表的id-->
        $("#shouhuoaddressId").val(ruleForm.id);

        $("#yonghuId").val(ruleForm.yonghuId);
        $("#shouhuoaddressName").val(ruleForm.shouhuoaddressName);
        $("#shouhuoaddressPhone").val(ruleForm.shouhuoaddressPhone);
        $("#shouhuoaddressDizhi").val(ruleForm.shouhuoaddressDizhi);
    }

    function yonghuDataBind(){

                    <!-- 把id赋值给当前表的id-->
        $("#yonghuId").val(ruleForm.id);

        $("#yonghuName").val(ruleForm.yonghuName);
        $("#yonghuPhone").val(ruleForm.yonghuPhone);
        $("#yonghuIdNumber").val(ruleForm.yonghuIdNumber);
        $("#yonghuEmail").val(ruleForm.yonghuEmail);
    }

    function yunhuoluxianDataBind(){

                    <!-- 把id赋值给当前表的id-->
        $("#yunhuoluxianId").val(ruleForm.id);

        $("#yunhuoluxianUuidNumber").val(ruleForm.yunhuoluxianUuidNumber);
        $("#yunhuoluxianChufa").val(ruleForm.yunhuoluxianChufa);
        $("#yunhuoluxianHechu").val(ruleForm.yunhuoluxianHechu);
        $("#yunhuoluxianShichang").val(ruleForm.yunhuoluxianShichang);
        $("#yunhuoluxianFeiyong").val(ruleForm.yunhuoluxianFeiyong);
    }


    //图片显示
    function showImg() {
        <!--  当前表的图片  -->

        <!--  级联表的图片  -->
        fahuoaddressShowImg();
        shouhuoaddressShowImg();
        yonghuShowImg();
        yunhuoluxianShowImg();
    }


    <!--  级联表的图片  -->

    function fahuoaddressShowImg() {
    }


    function shouhuoaddressShowImg() {
    }


    function yonghuShowImg() {
        $("#yonghuPhotoImg").attr("src",ruleForm.yonghuPhoto);
    }


    function yunhuoluxianShowImg() {
    }



    //视频回显
    function showVideo() {
    <!--  当前表的视频  -->

    <!--  级联表的视频  -->
        fahuoaddressShowVideo();
        shouhuoaddressShowVideo();
        yonghuShowVideo();
        yunhuoluxianShowVideo();
    }


    <!--  级联表的视频  -->

    function fahuoaddressShowVideo() {
    }

    function shouhuoaddressShowVideo() {
    }

    function yonghuShowVideo() {
        $("#yonghuPhotoV").attr("src",ruleForm.yonghuPhoto);
    }

    function yunhuoluxianShowVideo() {
    }



    $(document).ready(function () {
        //设置右上角用户名
        $('.dropdown-menu h5').html(window.sessionStorage.getItem('username'))
        //设置项目名
        $('.sidebar-header h3 a').html(projectName)
        //设置导航栏菜单
        setMenu();
        $('#exitBtn').on('click', function (e) {
            e.preventDefault();
            exit();
        });
        //初始化时间插件
        dateTimePick();
        //查询所有下拉框
            <!--  当前表的下拉框  -->
            shangpinTypesSelect();
            dingdanTypesSelect();
            <!-- 查询级联表的下拉框(用id做option,用名字及其他参数做名字级联修改) -->
            fahuoaddressSelect();
            shouhuoaddressSelect();
            yonghuSelect();
            yunhuoluxianSelect();



        // 初始化下拉框
            <!--  初始化当前表的下拉框  -->
            initializationShangpintypesSelect();
            initializationDingdantypesSelect();
            <!--  初始化级联表的下拉框  -->
            initializationfahuoaddressSelect();
            initializationshouhuoaddressSelect();
            initializationyonghuSelect();
            initializationyunhuoluxianSelect();

        $(".selectpicker" ).selectpicker('refresh');
        getDetails();
        //初始化上传按钮
        upload();
    <%@ include file="../../static/myInfo.js"%>
                $('#submitBtn').on('click', function (e) {
                    e.preventDefault();
                    //console.log("点击了...提交按钮");
                    submit();
                });
        readonly();
        window.sessionStorage.removeItem('adddingdan');
    });

    function readonly() {
        if (window.sessionStorage.getItem('role') == '管理员') {
            //$('#jifen').attr('readonly', 'readonly');
            //$('#role').attr('style', 'pointer-events:none;width:450px;');
        }
		else if (window.sessionStorage.getItem('role') == '用户') {
            // $(".aaaaaa").remove();
            $(".yonghu").remove();//删除当前用户的信息
        }
        else{
            // alert("未知情况.......");
            // var replyTextUeditor = UE.getEditor('replyTextEditor');
            // replyTextUeditor.ready(function () {
            //     replyTextUeditor.setDisabled('fullscreen');
            // });
        }
    }

    //比较大小
    function compare() {
        var largerVal = null;
        var smallerVal = null;
        if (largerVal != null && smallerVal != null) {
            if (largerVal <= smallerVal) {
                alert(smallerName + '不能大于等于' + largerName);
                return false;
            }
        }
        return true;
    }


    // 用户登出
    <%@ include file="../../static/logout.jsp"%>
</script>
</body>

</html>
