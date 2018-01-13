<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2018/1/10
  Time: 17:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>

    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>神秘的入口</title>
    <%--<link rel="stylesheet" type="text/css" href="WEB-INF/css/normalize.css" />--%>
    <%--<link rel="stylesheet" type="text/css" href="WEB-INF/css/default.css">--%>
    <link rel="stylesheet" href="css/index.css">
    <script src="js/modernizr.js"></script>

  </head>
  <body>
  <div class="overflow">
    <section class="panels">
      <article class="panels__side panels__side--left">
        <div class="panels__side panels__side--inner-left">
          <p><a href="login.jsp" >"点击这里你就可以进入数码创意协会哟~"</a></p>
          <!--<input type="button" class="entrance">进入魔法世界吧</div>-->
        </div>
        <div class="panels__side panels__side--inner">
          <header class="htmleaf-header">
            <h1>人类的入口 </h1><span>每个女孩25岁之前都应该成为一次DCA成员</span>

          </header>
          <!-- <h1 class="panels__headline">Noam Chomsky</h1>   -->
          <svg class="arrow arrow--left" width="40" height="40" viewBox="0 0 24 24"><path d="M0 0h24v24h-24z" fill="none"/><path d="M20 11h-12.17l5.59-5.59-1.42-1.41-8 8 8 8 1.41-1.41-5.58-5.59h12.17v-2z"/></svg>
        </div>
      </article>
      <article class="panels__side panels__side--right">
        <div class="panels__side panels__side--inner">
          <h1 class="panels__headline">假装是个Admin</h1>
          <svg class="arrow arrow--right" width="40" height="40" viewBox="0 0 24 24"><path d="M0 0h24v24h-24z" fill="none"/><path d="M12 4l-1.41 1.41 5.58 5.59h-12.17v2h12.17l-5.58 5.59 1.41 1.41 8-8z"/></svg>
        </div>
        <div class="panels__side panels__side--inner-right">
          <p><a href="admin/login.jsp" >就算你是个管理员也要密码才可以在这里登录的啵！</a></p>
        </div>
      </article>
    </section>
  </div>

  <script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script>
  <script type="text/javascript">
      $(function() {

          var Panels = (function() {

              var panelLeft = document.querySelector('.panels__side--left');
              var panelRight = document.querySelector('.panels__side--right');

              var openLeft = function() {
                  panelLeft.classList.toggle('panels__side--left-active');
                  panelRight.classList.toggle('panels__side--right-hidden');
              };

              var openRight = function() {
                  panelRight.classList.toggle('panels__side--right-active');
                  panelLeft.classList.toggle('panels__side--left-hidden');
              };

              var bindActions = function() {
                  panelLeft.addEventListener('click', openLeft, false);
                  panelRight.addEventListener('click', openRight, false);
              };

              var init = function() {
                  bindActions();
              };

              return {
                  init: init
              };

          }());

          Panels.init();
      });
  </script>
  </body>
</html>
