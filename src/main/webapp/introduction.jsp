<%--
  Created by IntelliJ IDEA.
  User: 87187
  Date: 2019/2/9
  Time: 20:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0;">
    <title>公司简介</title>
    <link href="${path}css/introductionstyle.css" rel="stylesheet" type="text/css"/>
    <link href="${path}css/font-awesome.min.css" rel="stylesheet" />
    <script src="${path}js/jQuery.js"></script>
    <script type="text/javascript" src="${path}js/introductiontab.js"></script>

</head>
<body>
<section class="aui-flexView">
    <header class="aui-navBar aui-navBar-fixed b-line">
        <div class="aui-center">
            <span class="aui-center-title">公司信息</span>
        </div>
    </header>
    <section class="aui-scrollView">
        <div class="aui-flex">
            <div class="aui-com-img">
                <img src="images/logo-com.png" alt="">
            </div>
            <div class="aui-flex-box">
                <h2>百度网络</h2>
                <h3>
                    <span><i class="fa fa-flag"style="color: #5bc0de;"></i>民营公司</span>
                    <span><i class="fa fa-users"style="color: #5bc0de;"></i>10000人以上</span>
                </h3>
                <h3>
                    <i class="fa fa-building" style="color: #5bc0de;font-size: 14px;"></i>互联网电子商务 计算机软件

                </h3>
            </div>
        </div>
        <div class="aui-slide-list">
            <ul class="aui-slide-item-list">
                <li class="aui-slide-item-item">
                    <a href="javascript:;">
                        <img src="images/com-img-001.png" alt="">
                    </a>
                </li>
                <li class="aui-slide-item-item">
                    <a href="javascript:;">
                        <img src="images/com-img-002.png" alt="">
                    </a>
                </li>
                <li class="aui-slide-item-item">
                    <a href="javascript:;">
                        <img src="images/com-img-003.png" alt="">
                    </a>
                </li>
                <li class="aui-slide-item-item">
                    <a href="javascript:;">
                        <img src="images/com-img-001.png" alt="">
                    </a>
                </li>
                <li class="aui-slide-item-item">
                    <a href="javascript:;">
                        <img src="images/com-img-002.png" alt="">
                    </a>
                </li>
                <li class="aui-slide-item-item">
                    <a href="javascript:;">
                        <img src="images/com-img-003.png" alt="">
                    </a>
                </li>
            </ul>
        </div>
        <div class="aui-flex">
            <div class="aui-flex-box">
                <h4>北京海淀区上地十街10号百度大厦</h4>
            </div>
            <div class="aui-arrow"></div>
        </div>
        <div class="divHeight"></div>

        <div class="aui-tab" data-ydui-tab>
            <ul class="tab-nav b-line">
                <li class="tab-nav-item tab-active">
                    <a href="javascript:;">
                        <span>公司介绍</span>
                    </a>
                </li>
                <li class="tab-nav-item">
                    <a href="javascript:;">
                        <span>所在职位</span>
                    </a>
                </li>
            </ul>
            <div class="tab-panel">
                <div class="tab-panel-item tab-active">
                    <div class="aui-com-text">
                        <p>百度（纳斯达克：BIDU），全球最大的中文搜索引擎、最大的中文网站。1999年底,身在美国硅谷的李彦宏看到了中国互联网及中文搜索引擎服务的巨大发展潜力，抱着技术改变世界的梦想，他毅然辞掉硅谷的高薪工作，携搜索引擎专利技术，于 2000年1月1日在中关村创建了百度公司。</p>
                        <p>“百度”二字,来自于八百年前南宋词人辛弃疾的一句词：众里寻他千百度。这句话描述了词人对理想的执着追求。</p>
                        <p>百度拥有数万名研发工程师，这是中国乃至全球最为优秀的技术团队。这支队伍掌握着世界上最为先进的搜索引擎技术，使百度成为中国掌握世界尖端科学核心技术的中国高科技企业，也使中国成为美国、俄罗斯、和韩国之外，全球仅有的4个拥有搜索引擎核心技术的国家之一。</p>
                        <p>从创立之初，百度便将“让人们最平等便捷地获取信息，找到所求”作为自己的使命，成立以来，公司秉承“用户至上”的理念，不断坚持技术创新，致力于为用户提供“简单可依赖”的互联网搜索产品及服务，其中包括:以网络搜索为主的功能性搜索;以贴吧为主的社区搜索，针对各区域、行业所需的垂直搜索;以及门户频道、IM等，全面覆盖了中文网络世界所有的搜索需求。根据第三方权威数据，在中国，百度PC端和移动端市场份额总量达73.5%，覆盖了中国97.5%的网民，拥有6亿用户，日均响应搜索60亿次。</p>

                    </div>

                </div>
                <div class="tab-panel-item">
                    <a href="javascript:;" class="aui-flex b-line">
                        <div class="aui-flex-box">
                            <h5>前端开发工程师 </h5>
                            <h6>15k-25k /上海 / 经验3-5年 </h6>
                        </div>
                        <div class="aui-right-text">
                            <h2>15k-25k/月</h2>
                            <h3>今天</h3>
                        </div>
                    </a>

                </div>
            </div>
        </div>

    </section>
</section>
</body>
</html>
