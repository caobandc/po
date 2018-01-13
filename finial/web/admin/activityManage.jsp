<!doctype html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="admin.getUsers" %>
<%@ page import="entity.Users" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="pub_fun.getActivitys" %>
<%@ page import="entity.Activitys" %>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Amaze UI Admin index Examples</title>
    <meta name="description" content="这是一个 index 页面">
    <meta name="keywords" content="index">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="renderer" content="webkit">
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <link rel="icon" type="image/png" href="assets/i/favicon.png">
    <link rel="apple-touch-icon-precomposed" href="assets/i/app-icon72x72@2x.png">
    <meta name="apple-mobile-web-app-title" content="Amaze UI" />
    <link rel="stylesheet" href="assets/css/amazeui.min.css" />
    <link rel="stylesheet" href="assets/css/admin.css">
    <link rel="stylesheet" href="assets/css/app.css">
</head>

<body data-type="generalComponents">
<%
    String last = request.getQueryString().toString();
    String[] temp = last.split("=");
    String current = temp[1];
    if (current == null) {
        current="1";
    }
//    System.out.println(current);

%>
<jsp:useBean id="backUser" scope="session" class="entity.Users" />



    <header class="am-topbar am-topbar-inverse admin-header">
        <div class="am-topbar-brand">
            <a href="javascript:;" class="tpl-logo">
                <img src="assets/img/logo.png" alt="">
            </a>
        </div>
        <div class="am-icon-list tpl-header-nav-hover-ico am-fl am-margin-right">

        </div>

        <button class="am-topbar-btn am-topbar-toggle am-btn am-btn-sm am-btn-success am-show-sm-only" data-am-collapse="{target: '#topbar-collapse'}"><span class="am-sr-only">导航切换</span> <span class="am-icon-bars"></span></button>

        <div class="am-collapse am-topbar-collapse" id="topbar-collapse">

            <ul class="am-nav am-nav-pills am-topbar-nav am-topbar-right admin-header-list tpl-header-list">
                </li>
                <li class="am-hide-sm-only"><a href="javascript:;" id="admin-fullscreen" class="tpl-header-list-link"><span class="am-icon-arrows-alt"></span> <span class="admin-fullText">开启全屏</span></a></li>

                <li class="am-dropdown" data-am-dropdown data-am-dropdown-toggle>
                    <a class="am-dropdown-toggle tpl-header-list-link" href="javascript:;">
                        <span class="tpl-header-list-user-nick"><jsp:getProperty name="backUser" property="username"/></span><span class="tpl-header-list-user-ico"> <img src="assets/img/user01.png"></span>
                    </a>
                    <ul class="am-dropdown-content">
                        <li><a href="table-font-list.jsp"><span class="am-icon-bell-o"></span> 个人资料</a></li>
                        <%--<li><a href="#"><span class="am-icon-cog"></span> 设置</a></li>--%>
                        <li><a href="../servlet/logout"><span class="am-icon-power-off"></span> 退出</a></li>
                    </ul>
                </li>
                <li><a href="###" class="tpl-header-list-link"><span class="am-icon-sign-out tpl-header-list-ico-out-size"></span></a></li>
            </ul>
        </div>
    </header>







    <div class="tpl-page-container tpl-page-header-fixed">


        <div class="tpl-left-nav tpl-left-nav-hover">
            <div class="tpl-left-nav-title">
                列表
            </div>
            <div class="tpl-left-nav-list">
                <ul class="tpl-left-nav-menu">
                    <li class="tpl-left-nav-item">
                        <a href="index.jsp" class="nav-link active">
                            <i class="am-icon-home"></i>
                            <span>首页</span>
                        </a>
                    </li>

                    <li class="tpl-left-nav-item">
                        <!-- 打开状态 a 标签添加 active 即可   -->
                        <a href="javascript:;" class="nav-link tpl-left-nav-link-list active">
                            <i class="am-icon-table"></i>
                            <span>内容管理</span>
                            <!-- 列表打开状态的i标签添加 tpl-left-nav-more-ico-rotate 图表即90°旋转  -->
                            <i class="am-icon-angle-right tpl-left-nav-more-ico am-fr am-margin-right tpl-left-nav-more-ico-rotate"></i>
                        </a>
                        <ul class="tpl-left-nav-sub-menu" style="display:block">
                            <li>
                                <!-- 打开状态 a 标签添加 active 即可   -->
                                <a href="table-font-list.jsp" class="active">
                                    <i class="am-icon-angle-right"></i>
                                    <span>用户管理</span>
                                </a>

                                <a href="table-images-list.jsp">
                                    <i class="am-icon-angle-right"></i>
                                    <span>作品管理</span>

                                    <a href="form-news.jsp">
                                        <i class="am-icon-angle-right"></i>
                                        <span>活动管理</span>

                                        <%--<a href="form-news-list.html">--%>
                                            <%--<i class="am-icon-angle-right"></i>--%>
                                            <%--<span>文字列表</span>--%>

                                        <%--</a>--%>
                            </li>
                        </ul>
                    </li>

                    <li class="tpl-left-nav-item">
                        <a href="javascript:;" class="nav-link tpl-left-nav-link-list">
                            <i class="am-icon-wpforms"></i>
                            <span>信息管理</span>
                            <i class="am-icon-angle-right tpl-left-nav-more-ico am-fr am-margin-right"></i>
                        </a>
                        <ul class="tpl-left-nav-sub-menu">
                            <li>
                                <a href="form-amazeui.jsp">
                                    <i class="am-icon-angle-right"></i>
                                    <span>个人信息管理</span>
                                    <i class="am-icon-star tpl-left-nav-content-ico am-fr am-margin-right"></i>
                                </a>

                                <a href="form-line.jsp">
                                    <i class="am-icon-angle-right"></i>
                                    <span>系统信息管理</span>
                                </a>
                            </li>
                        </ul>
                    </li>

                    <li class="tpl-left-nav-item">
                        <a href="servlet/logout" class="nav-link tpl-left-nav-link-list">
                            <i class="am-icon-key"></i>
                            <span>退出</span>

                        </a>
                    </li>
                </ul>
            </div>
        </div>





        <div class="tpl-content-wrapper">
            <div class="tpl-content-page-title">
                用户列表
            </div>
            <ol class="am-breadcrumb">
                <li><a href="#" class="am-icon-home">首页</a></li>
                <li><a href="#">表格</a></li>
                <li class="am-active">用户列表</li>
            </ol>
            <div class="tpl-portlet-components">
                <div class="portlet-title">
                    <div class="caption font-green bold">
                        <span class="am-icon-code"></span> 列表
                    </div>
                    <%--<div class="tpl-portlet-input tpl-fz-ml">--%>
                        <%--<div class="portlet-input input-small input-inline">--%>
                            <%--<div class="input-icon right">--%>
                                <%--<i class="am-icon-search"></i>--%>
                                <%--<input type="text" class="form-control form-control-solid" placeholder="搜索..."> </div>--%>
                        <%--</div>--%>
                    <%--</div>--%>


                </div>
                <div class="tpl-block">
                    <div class="am-g">
                        <div class="am-u-sm-12 am-u-md-6">
                            <div class="am-btn-toolbar">
                                <div class="am-btn-group am-btn-group-xs">
                                    <%--<button type="button" class="am-btn am-btn-default am-btn-success"><span class="am-icon-plus"></span> 新增</button>--%>
                                    <%--<button type="button" class="am-btn am-btn-default am-btn-secondary"><span class="am-icon-save"></span> 保存</button>--%>
                                    <%--<button type="button" class="am-btn am-btn-default am-btn-warning"><span class="am-icon-archive"></span> 审核</button>--%>
                                    <%--<button type="button" class="am-btn am-btn-default am-btn-danger"><span class="am-icon-trash-o"></span> 删除</button>--%>
                                <%--</div>--%>
                            </div>
                        </div>
                        <div class="am-u-sm-12 am-u-md-3">
                            <div class="am-form-group">
                            </div>
                        </div>
                    </div>
                    <div class="am-g">
                        <div class="am-u-sm-12">
                            <form class="am-form">
                                <table class="am-table am-table-striped am-table-hover table-main">
                                    <thead>
                                        <tr>
                                            <%--<th class="table-check"><input type="checkbox" class="tpl-table-fz-check"></th>--%>
                                            <th class="table-id">id</th>
                                            <th class="table-title">活动名称</th>
                                            <th class="table-type">活动描述</th>
                                            <th class="table-author am-hide-sm-only">content</th>
                                            <%--<th class="table-date am-hide-sm-only">描述</th>--%>
                                            <th class="table-set">操作</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    <%
                                        getActivitys getactivity = new getActivitys();

                                        List<Activitys> activitys = getactivity.getLimit(current);
//                                        delUser delete = new delUser();
                                        Integer nowId;
                                        for(int i = 0; i < activitys.size(); i++) {
                                            Activitys a = activitys.get(i);
                                            nowId = a.getActivityId();
                                    %>
                                    <tr>
                                        <%--<form name="userInfo" action="../servlet/delUser?uid=<%=u.getUserId()%>" method="get">--%>
                                        <%--<td><input type="checkbox"></td>--%>
                                        <td><%=nowId%></td>
                                        <td><a href="editAct.jsp?aid=<%=nowId%>"><%=a.getActivityName()%></a></td>
                                        <%--<td><%=u.getDepartmentId()%></td>--%>
                                        <td class="am-hide-sm-only"><%=a.getActivityMes()%></td>
                                        <td class="am-hide-sm-only"><%=a.getContent()%></td>
                                            <%--<td class="am-hide-sm-only"><%=a.getContent()%></td>--%>
                                        <td>
                                            <div class="am-btn-toolbar">
                                                <div class="am-btn-group am-btn-group-xs">
                                                    <button class="am-btn am-btn-default am-btn-xs am-text-secondary" ><span class="am-icon-pencil-square-o"></span><a
                                                            href="editAct.jsp?aid=<%=nowId%>">编辑</a></button>
                                                    <%--<button class="am-btn am-btn-default am-btn-xs am-hide-sm-only" onclick="../servlet/"><span class="am-icon-copy"></span> 授权</button>--%>

                                                    <%--<form name="delete" method="get" action="servlet/delUser">--%>
                                                        <button class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only" ><span class="am-icon-trash-o"></span><a
                                                                href="../servlet/delAct?aid=<%=nowId%>">删除</a></button>
                                                    <%--</form>--%>
                                                </div>
                                            </div>
                                        </td>
                                        <%--</form>--%>
                                    </tr>
                                    <%
                                        }
                                    %>
                                    </tbody>
                                </table>
                                <div class="am-cf">

                                    <div class="am-fr">
                                        <ul class="am-pagination tpl-pagination">
                                            <%
                                                List<Activitys> totalpage = getactivity.getActivityInfo();
//                                                System.out.println(totalpage.get(totalpage.size()-1).getTotalPage());
//                                                Users t = totalpage.get(users.size()-1);
                                                String com;
                                                for (int j=1;j<=totalpage.get(totalpage.size()-1).getTotalPage();j++) {
//                                                    System.out.println("jici");
//                                                    System.out.println(j);
                                                    com = j + "";
                                                    if (current == com) {
                                                        out.print("<li class=\"am-active\">");
                                                        out.print("<a href=\"../admin/activityManage.jsp?page=" + j + "\">");
                                                        out.print(j + "</a></li>");
                                                    } else {
                                                        out.print("<li>");
                                                        out.print("<a href=\"../admin/activityManage.jsp?page=" + j + "\">");
                                                        out.print(j + "</a></li>");
                                                    }
                                                }
                                            %>
                                            <%--<li class="am-disabled"><a href="#">«</a></li>--%>
                                            <%--<li class="am-active"><a href="../table-font-list.jsp?page=<%=j%>"><%=j%></a></li>--%>
                                            <%----%>
                                            <%--<li><a href="../table-font-list.jsp?page=">2</a></li>--%>
                                            <%--<li><a href="#">3</a></li>--%>
                                            <%--<li><a href="#">4</a></li>--%>
                                            <%--<li><a href="#">5</a></li>--%>
                                            <%--<li><a href="#">»</a></li>--%>
                                        </ul>
                                    </div>
                                </div>
                                <hr>

                            </form>
                        </div>

                    </div>
                </div>
                <div class="tpl-alert"></div>
            </div>










        </div>

    </div>


    <script src="http://www.jq22.com/jquery/jquery-2.1.1.js"></script>
    <script src="assets/js/amazeui.min.js"></script>
    <script src="assets/js/app.js"></script>
</body>

</html>