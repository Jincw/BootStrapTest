<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <title>Bootstrap 模板</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <link rel="stylesheet" href="css/html5reset-1.6.1.css" type="text/css" media="screen,print">

    <link href="css/demo.css" rel="stylesheet" type="text/css">
    <!-- 新 Bootstrap 核心 CSS 文件 -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <!-- 可选的Bootstrap主题文件（一般不使用） -->
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"></script>
    <!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
    <script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script>
        function getDateDemo(){
            /*
                //声明时间
                var date = new Date();
                alert(date);//当前时间
                alert(date.toLocaleString());//转化为本地时间
                alert(date.getFullYear());//显示年份
                alert(date.getMonth() + 1);//显示月份 0-11，需要加1
                alert(date.getDate());//显示一月中的日期
                alert(date.getDay());//显示一周的日期，星期几
                alert(date.getHours());//获取小时时间
                alert(date.getMinutes());//获取当前分钟
                alert(date.getSeconds());//获取当前秒数
                alert(date.getMilliseconds());//获取当前的毫秒数
                alert(date.getTime());//获取从1970年1月1日午夜零时，到当前时间的毫秒值
            */
            //分别获取年、月、日、时、分、秒
            var myDate = new Date();
            var year = myDate.getFullYear();
            var month = myDate.getMonth() + 1;
            var date = myDate.getDate();
            var hours = myDate.getHours();
            var minutes = myDate.getMinutes();
            var seconds = myDate.getSeconds();

            //月份的显示为两位数字如09月
            if(month < 10 ){
                month = "0" + month;
            }
            if(date < 10 ){
                date = "0" + date;
            }

            //时间拼接
            var dateTime = year + "年" + month + "月" + date + "日" + hours + "时" + minutes + "分" + seconds + "秒";

            //document.write(dateTime);//打印当前时间

            var divNode = document.getElementById("show");
            divNode.innerHTML = "当前时间："+dateTime;

        }
        window.setInterval("getDateDemo()",1000);//每隔1秒，调用一次getDateDemo()
    </script>

    <%--跑马灯效果JavaScript--%>
    <script type="text/javascript" src="js/jquery.novacancy.js"></script>
    <script type="text/javascript">
        $(document).ready(function() {
            $("#demo-title").novacancy({
                'blink': 1,
                'off': 1,
                'color': '#e64e8e',
                'glow': ['0 0 80px #fbda72', '0 0 30px #dd571b', '0 0 6px #4c5692']
            });
            $("#demo-desc").novacancy({
                'reblinkProbability': 0.1,
                'blinkMin': 0.2,
                'blinkMax': 0.6,
                'loopMin': 8,
                'loopMax': 10,
                'color': '#ffffff',
                'glow': ['0 0 50px #ffffff', '0 0 30px #008000', '0 0 6px #0000ff']
            });
            $('#no').novacancy({
                'reblinkProbability': 0.1,
                'blinkMin': 0.2,
                'blinkMax': 0.6,
                'loopMin': 8,
                'loopMax': 10,
                'color': '#ffffff',
                'glow': ['0 0 120px #ffffff', '0 0 20px #008000', '0 0 6px #0000ff']
            });

            $('#vacancy').novacancy({
                'blink': 1,
                'off': 1,
                'color': 'Red',
                'glow': ['0 0 120px Red', '0 0 20px FireBrick', '0 0 6px DarkRed']
            });
        });
    </script>
    <style>
        #show{
            font-size: 24px;
            color:#4213C9;
            text-align:right;
        }
    </style>
</head>
<body onload="getDateDemo()">
<div id="show"></div>
<%--文字霓虹灯效果--%>
<div class="htmleaf-content">
    <div class="board">
        <p id="no">Hello</p>
        <p id="vacancy">Welcome my Page!</p>
    </div>
</div>
<div class="dropdown">
    <button type="button" class="btn dropdown-toggle" id="dropdownMenu1" data-toggle="dropdown">主题
        <span class="caret"></span>
    </button>
    <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">
        <li role="presentation" class="dropdown-header">下拉菜单标题</li>
        <li role="presentation">
            <a role="menuitem" tabindex="-1" href="#">Java</a>
        </li>
        <li role="presentation">
            <a role="menuitem" tabindex="-1" href="#">数据挖掘</a>
        </li>
        <li role="presentation">
            <a role="menuitem" tabindex="-1" href="#">数据通信/网络</a>
        </li>
        <li role="presentation" class="divider"></li>
        <li role="presentation" class="dropdown-header">下拉菜单标题</li>
        <li role="presentation">
            <a role="menuitem" tabindex="-1" href="#">分离的链接</a>
        </li>
    </ul>
</div>
<p>带有下拉菜单的标签页</p>
<ul class="nav nav-tabs">
    <li class="active">
        <a href="#">Home</a></li>
    <li>
        <a href="#">SVN</a></li>
    <li>
        <a href="#">iOS</a></li>
    <li>
        <a href="#">VB.Net</a></li>
    <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">Java
            <span class="caret"></span></a>
        <ul class="dropdown-menu">
            <li>
                <a href="#">Swing</a></li>
            <li>
                <a href="#">jMeter</a></li>
            <li>
                <a href="#">EJB</a></li>
            <li class="divider"></li>
            <li>
                <a href="#">分离的链接</a></li>
        </ul>
    </li>
    <li>
        <a href="#">PHP</a></li>
</ul>
<p>
    <a href="#" class="btn btn-info btn-lg">
        <span class="glyphicon glyphicon-pencil"></span>
    </a>
</p>

<div id="myCarousel" class="carousel slide" style="width: 600px;height: 350px" >
    <!-- 轮播（Carousel）指标 -->
    <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>
    <!-- 轮播（Carousel）项目 -->
    <div class="carousel-inner">
        <div class="item active">
            <img src="${pageContext.request.contextPath}/img/4.jpg" alt="First slide" class="img-rounded">
        </div>
        <div class="item">
            <img src="${pageContext.request.contextPath}/img/a.jpg" alt="Second slide" class="img-circle">
        </div>
        <div class="item">
            <img src="${pageContext.request.contextPath}/img/b.jpg" alt="Third slide" class="img-thumbnail">
        </div>
    </div>
    <!-- 轮播（Carousel）导航 -->
    <a class="carousel-control left" href="#myCarousel"
       data-slide="prev"> <span _ngcontent-c3="" aria-hidden="true" class="glyphicon glyphicon-chevron-right"></span></a>
    <a class="carousel-control right" href="#myCarousel"
       data-slide="next">&rsaquo;</a>
</div>

<div class="container" style="padding: 100px 50px 10px;" >
    <button type="button" class="btn btn-default" title="Popover title"
            data-container="body" data-toggle="popover" data-placement="left"
            data-content="左侧的 Popover 中的一些内容">
        左侧的 Popover
    </button>
    <button type="button" class="btn btn-primary" title="Popover title"
            data-container="body" data-toggle="popover" data-placement="top"
            data-content="顶部的 Popover 中的一些内容">
        顶部的 Popover
    </button>
    <button type="button" class="btn btn-success" title="Popover title"
            data-container="body" data-toggle="popover" data-placement="bottom"
            data-content="底部的 Popover 中的一些内容">
        底部的 Popover
    </button>
    <button type="button" class="btn btn-warning" title="Popover title"
            data-container="body" data-toggle="popover" data-placement="right"
            data-content="右侧的 Popover 中的一些内容">
        右侧的 Popover
    </button>
</div>

<h2>创建模态框（Modal）</h2>
<!-- 按钮触发模态框 -->
<button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
    开始演示模态框
</button>
<!-- 模态框（Modal） -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                    &times;
                </button>
                <h4 class="modal-title" id="myModalLabel">
                    模态框（Modal）标题
                </h4>
            </div>
            <div class="modal-body">
                在这里添加一些文本
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭
                </button>
                <button type="button" class="btn btn-primary">
                    提交更改
                </button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>

<script>
    $(function (){
        $("[data-toggle='popover']").popover();
    });
</script>
</body>
</html>
