<!DOCTYPE html>
<!-- saved from url=(0042)https://www.wktrip.com/self_driving/100011 -->
<html>

	<head>
        <#assign base=rc.contextPath/>
        <base id="base" href="${base}">

		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="description" content="悟空自驾游是一家立足云南、面向全国、辐射东南亚的自驾游服务平台！为全国旅游爱好者提供吃、住、行、游、购、 娱等在内的高品质服务。依托于移动互联网技术，将云南省16个地州、15个机场、火车站、高铁站、公交枢纽、酒店、旅游景点、自驾游营地、 餐饮、购物、娱乐等旅游目的地、服务点和连接点打通，打造&quot;租车+旅游&quot;全新模式。">
		<title>悟空自驾游 云南自驾游 自驾租车 云南租车 云南旅游 自驾游</title>
		<link rel="icon" href="https://static.wkzuche.com/www/images/facicon.ico">
		<script src="${base}/js/hm.js"></script>
		<script type="text/javascript">
			var _hmt = _hmt || [];
			(function() {
				var hm = document.createElement("script");
				hm.src = "https://hm.baidu.com/hm.js?02ead58d043689449fcd95b182303a33";
				var s = document.getElementsByTagName("script")[0];
				s.parentNode.insertBefore(hm, s);
			})();
		</script>
		<link href="${base}/css/app.1e82d5e3d6f6affba7436d4c5b5588a5.css" rel="stylesheet">
		<style type="text/css">
			.comp-full-calendar {
				padding: 20px;
				background: #fff;
				max-width: 560px;
				margin: 0 auto;
			}
			
			.comp-full-calendar ul,
			.comp-full-calendar p {
				margin: 0;
				padding: 0;
			}
			
			.full-calendar-body {
				margin-top: 0px;
			}
			
			.full-calendar-body .weeks {
				display: flex;
				border-top: 1px solid #e0e0e0;
				border-bottom: 1px solid #e0e0e0;
				height: 48px;
			}
			
			.full-calendar-body .weeks .week {
				width: 100%;
				position: relative;
				flex: 1;
				text-align: center;
				margin-top: 14px;
				margin-top: 10px;
				/* //border-right:1px solid #f2f2f2;*/
			}
			
			.full-calendar-body .weeks .week span {
				display: block;
				float: left;
				width: 70px;
				line-height: 40px;
				text-align: center;
			}
			
			.full-calendar-body .highlightcls {
				color: #e1061c;
			}
			
			.full-calendar-body .dates {
				position: relative;
			}
			
			.full-calendar-body .dates .week-row {
				border-left: 1px solid #f2f2f2;
				display: flex;
			}
			
			.full-calendar-body .dates .week-row .day-cell {
				flex: 1;
				min-height: 63px;
				padding: 0px;
				border-right: 1px solid #f2f2f2;
				border-bottom: 1px solid #f2f2f2;
				background-color: #fdfdfd;
			}
			
			.full-calendar-body .dates .week-row .day-cell .day-number {
				margin-top: 12px;
				text-align: center;
				opacity: 0;
			}
			
			.full-calendar-body .dates .week-row .day-cell.white-cell {
				background-color: #ffffff;
			}
			
			.full-calendar-body .dates .week-row .day-cell.not-cur-month .day-number {
				color: rgba(0, 0, 0, 0.24);
			}
			
			.full-calendar-body .dates .dates-events {
				position: absolute;
				top: 0;
				left: 0;
				z-index: 1;
				width: 100%;
			}
			
			.full-calendar-body .dates .dates-events .events-week {
				display: flex;
			}
			
			.full-calendar-body .dates .dates-events .events-week .events-day {
				cursor: pointer;
				flex: 1;
				min-height: 63px;
				overflow: hidden;
				text-overflow: ellipsis;
			}
			
			.full-calendar-body .dates .dates-events .events-week .events-day .day-number {
				text-align: center;
				padding: 14px 5px 2px 4px;
			}
			
			.full-calendar-body .dates .dates-events .events-week .events-day.today {
				border-right: 2px solid #e1061c;
				border-left: 2px solid #e1061c;
				border-top: 2px solid #e1061c;
				border-bottom: 2px solid #e1061c;
				background-color: #ffffff;
			}
			
			.full-calendar-body .dates .dates-events .events-week .events-day.not-cur-month .day-number {
				color: rgba(0, 0, 0, 0.24);
			}
			
			.full-calendar-body .dates .dates-events .events-week .events-day .event-box {
				position: absolute;
				width: 80px;
				height: 64px;
				margin-top: -40px;
				margin-left: -4px;
			}
			
			.full-calendar-body .dates .dates-events .events-week .events-day .event-box .event-item {
				cursor: pointer;
				font-size: 14px;
				margin-top: 0px;
				margin-bottom: 0px;
				color: #e1061c;
				padding: 0 0 0 0px;
				height: 100%;
				line-height: 90px;
				white-space: nowrap;
				overflow: hidden;
				text-overflow: ellipsis;
				text-align: center;
			}
			
			.full-calendar-body .dates .dates-events .events-week .events-day .event-box .event-item.is-end {
				margin-right: 4px;
			}
			
			.full-calendar-body .dates .dates-events .events-week .events-day .event-box .event-item.is-opacity {
				opacity: 0;
			}
			
			.full-calendar-body .dates .dates-events .events-week .events-day .event-box .more-link {
				cursor: pointer;
				padding-left: 8px;
				padding-right: 2px;
				color: rgba(0, 0, 0, 0.38);
				font-size: 14px;
			}
			
			.full-calendar-body .dates .more-events {
				position: absolute;
				width: 150px;
				z-index: 2;
				border: 1px solid #eee;
				box-shadow: 0 2px 6px rgba(0, 0, 0, 0.15);
			}
			
			.full-calendar-body .dates .more-events .more-header {
				background-color: #eee;
				padding: 5px;
				display: flex;
				align-items: center;
				font-size: 14px;
			}
			
			.full-calendar-body .dates .more-events .more-header .title {
				flex: 1;
			}
			
			.full-calendar-body .dates .more-events .more-header .close {
				margin-right: 2px;
				cursor: pointer;
				font-size: 16px;
			}
			
			.full-calendar-body .dates .more-events .more-body {
				height: 146px;
				overflow: hidden;
			}
			
			.full-calendar-body .dates .more-events .more-body .body-list {
				height: 144px;
				padding: 5px;
				overflow: auto;
				background-color: #fff;
			}
			
			.full-calendar-body .dates .more-events .more-body .body-list .body-item {
				cursor: pointer;
				font-size: 12px;
				background-color: #C7E6FD;
				margin-bottom: 2px;
				color: rgba(0, 0, 0, 0.87);
				padding: 0 0 0 4px;
				height: 18px;
				line-height: 18px;
				white-space: nowrap;
				overflow: hidden;
				text-overflow: ellipsis;
			}
		</style>
		<style type="text/css">
			.full-calendar-header {
				display: flex;
				align-items: center;
			}
			
			.full-calendar-header .header-left,
			.full-calendar-header .header-right {
				flex: 1;
			}
			
			.full-calendar-header .header-right {
				text-align: right;
				color: red;
				cursor: pointer;
			}
			
			.full-calendar-header .header-left {
				cursor: pointer;
			}
			
			.full-calendar-header .header-center {
				flex: 3;
				text-align: center;
				color: #e1061c;
				margin-bottom: 8px;
			}
			
			.full-calendar-header .header-center .title {
				margin: 0 10px;
			}
			
			.full-calendar-header .header-center .prev-month,
			.full-calendar-header .header-center .next-month {
				cursor: pointer;
			}
			
			.full-calendar-header .header-center .disable-style {
				cursor: auto;
				color: #f2f2f2;
			}
		</style>
		<script src="${base}/js/pc.min.js" id="zhichiload" class="customService"></script>
	</head>

	<body>
		<div id="app">
			<div class="reuse_top">
				<div class="top-main">
					<div class="top-logo">
						<a href="driving.ftl"><img src="${base}/img/logo.74f8c8e.png" alt=""></a>
					</div>
					<div class="nav">
						<ul>
							<li class="active">
								<a href="driving.ftl">首页</a>
							</li>
							<li>
								<a href="${base}/combo/home" class="">自助自驾</a>
							</li>
							<li>
								<a href="../cardriving.ftl" class="">车+X</a>
							</li>
							<li>
								<a href="../groupdriving.ftl" class="">跟团自驾</a>
							</li>
							<li>
								<a href="../freedesign.ftl" class="">自由定制</a>
							</li>
							<li>
								<a href="renting.ftl" target="_blank">自驾租车</a>
							</li>
						</ul> <span hidden="hidden"></span>
						<div class="user">
							<a href="https://www.wktrip.com/personalCenter/centerCard" class="black"><span class="user-icon"><span aria-hidden="true" class="glyphicon glyphicon-user"></span></span>王磊</a> <span class="clear">[退出]</span></div>
						<div class="top-code"></div>
						<div class="phone"><span></span> 400-0515-507
						</div>
					</div>
				</div>
			</div>
			<div data-v-06a02ad2="" class="self-driving">
				<!---->
				<div data-v-06a02ad2="" class="sd-form-select">
					<div data-v-06a02ad2="" class="form-top">
						<div data-v-06a02ad2="" class="left-silder">
							<div data-v-06a02ad2="" id="carousel-example-generic" data-ride="carousel" data-interval="2000" class="carousel slide">
								<div data-v-06a02ad2="" style="position: absolute; left: -5.6px; bottom: -90px; width: 575px;">
									<ol data-v-06a02ad2="" class="carousel-indicators" style="position: static; margin-left: 0px; margin-bottom: 5px;">
										<li data-v-06a02ad2="" data-target="#carousel-example-generic" data-slide-to="0" class="" style="margin-right: 0px;"><img data-v-06a02ad2="" src="${base}/img/cd07d77d-9e52-4c19-b5bf-cc3964e3b984.jpg" alt=""></li>
										<!---->
										<!---->
										<!---->
										<!---->
										<!---->
										<li data-v-06a02ad2="" data-target="#carousel-example-generic" data-slide-to="1" class="active"><img data-v-06a02ad2="" src="../img/4c485974-a59b-4b78-b910-43a70c3ed74d.jpg" alt=""></li>
										<li data-v-06a02ad2="" data-target="#carousel-example-generic" data-slide-to="2" class=""><img data-v-06a02ad2="" src="../img/c7f1eb60-a315-4313-bf52-17817f29d781.jpg" alt=""></li>
										<li data-v-06a02ad2="" data-target="#carousel-example-generic" data-slide-to="3" class=""><img data-v-06a02ad2="" src="../img/d03f5c50-cad3-4909-be95-6a4db0ca7c6a.jpg" alt=""></li>
										<li data-v-06a02ad2="" data-target="#carousel-example-generic" data-slide-to="4" class=""><img data-v-06a02ad2="" src="../img/bffc77e3-98a6-4f9c-b7f8-ef623be06d62.jpg" alt=""></li>
									</ol>
								</div>
								<div data-v-06a02ad2="" role="listbox" class="carousel-inner">
									<div data-v-06a02ad2="" class="item active left"><img data-v-06a02ad2="" src="../img/cd07d77d-9e52-4c19-b5bf-cc3964e3b984.jpg" alt=""></div>
									<!---->
									<!---->
									<!---->
									<!---->
									<!---->
									<div data-v-06a02ad2="" class="item next left"><img data-v-06a02ad2="" src="${base}/img/4c485974-a59b-4b78-b910-43a70c3ed74d.jpg" alt=""></div>
									<div data-v-06a02ad2="" class="item"><img data-v-06a02ad2="" src="${base}/img/c7f1eb60-a315-4313-bf52-17817f29d781.jpg" alt=""></div>
									<div data-v-06a02ad2="" class="item"><img data-v-06a02ad2="" src="${base}/img/d03f5c50-cad3-4909-be95-6a4db0ca7c6a.jpg" alt=""></div>
									<div data-v-06a02ad2="" class="item"><img data-v-06a02ad2="" src="${base}/img/bffc77e3-98a6-4f9c-b7f8-ef623be06d62.jpg" alt=""></div>
								</div>
							</div>
						</div>


						<div data-v-06a02ad2="" class="right-silder">
							<p data-v-06a02ad2="" id="pname" class="titles">${combo.comboName}</p>
							<table data-v-06a02ad2="" border="0" cellpadding="0" cellspacing="0" style="width: 100%;">
								<tr data-v-06a02ad2="">
									<td data-v-06a02ad2="" colspan="2" height="70"><span data-v-06a02ad2="" class="price_box"><!---->
                                        <span data-v-06a02ad2="" style="font-size: 20px; color: rgb(208, 0, 0);">¥</span>&nbsp;<span data-v-06a02ad2="" style="font-size: 30px; color: rgb(208, 0, 0); font-weight: bold;">${combo.comboPrice}</span> <span data-v-06a02ad2="" style="font-size: 14px; color: rgb(102, 102, 102);">起 / 人</span> <span data-v-06a02ad2="" style="font-size: 12px; color: rgb(153, 153, 153);"></span> <span data-v-06a02ad2="" class="start-desc"><a data-v-06a02ad2="" href="javascript:void(0)">起价说明</a></span></span>
									</td>
								</tr>
								<tr data-v-06a02ad2="">
									<td data-v-06a02ad2="" width="4em" height="35" class="w82"><span data-v-06a02ad2="" class="category w3">出发地</span>：
									</td>
									<td data-v-06a02ad2=""><span data-v-06a02ad2="" class="content">${combo.comboSite}</span></td>
								</tr>
								<tr data-v-06a02ad2="">
									<td data-v-06a02ad2="" height="35" class="w82"><span data-v-06a02ad2="" class="category">类<span data-v-06a02ad2="" style="width: 28px; height: 22px; display: inline-block;"></span>型</span>：
									</td>
									<td data-v-06a02ad2=""><span data-v-06a02ad2="" class="content">${combo.comboType}</span></td>
								</tr>
								<tr data-v-06a02ad2="">
									<td data-v-06a02ad2="" height="35"><span data-v-06a02ad2="" class="category w4">行程天数</span>：
									</td>
									<td data-v-06a02ad2=""><span data-v-06a02ad2="" class="content">${combo.comboDays}</span></td>
								</tr>
							</table>
							<div data-v-06a02ad2="" class="advantage">
								<div data-v-06a02ad2="" class="atitle category">产品亮点：</div>
								<div data-v-06a02ad2="" class="adesc"><textarea data-v-06a02ad2="" id="" cols="60" rows="14" readonly="readonly" disabled="disabled" class="desc" style="resize: none; background: rgb(255, 255, 255);">
                                    ${combo.comboLight}
                                </textarea></div>
							</div>
						</div>
					</div>
					<div data-v-06a02ad2="" class="form-bottom clearfix">
						<div data-v-06a02ad2="" class="calendar">
							<div data-v-06a02ad2="" class="comp-full-calendar test-fc">
								<div class="full-calendar-header">
									<div class="header-left">
										<div></div>
									</div>
									<div class="header-center"> <span prev="-1" class="prev-month disable-style" style="color: rgb(153, 153, 153);">&lt;</span> <span class="title">2018年06月</span> <span next="1" class="next-month" style="color: rgb(208, 0, 0);">&gt;</span></div>
									<div class="header-right">
										<div></div>
									</div>
								</div>
								<div class="full-calendar-body">
									<div class="weeks"><strong class="week">一</strong><strong class="week">二</strong><strong class="week">三</strong><strong class="week">四</strong><strong class="week">五</strong>
										<!---->
										<!---->
										<!---->
										<!---->
										<!---->
										<!---->
										<!----><strong class="week highlightcls">六</strong><strong class="week highlightcls">日</strong></div>
									<div class="dates">
										<div class="dates-bg">
											<div class="week-row">
												<div class="day-cell not-cur-month">
													<p class="day-number">28</p>
												</div>
												<div class="day-cell not-cur-month">
													<p class="day-number">29</p>
												</div>
												<div class="day-cell not-cur-month">
													<p class="day-number">30</p>
												</div>
												<div class="day-cell not-cur-month">
													<p class="day-number">31</p>
												</div>
												<div class="day-cell">
													<p class="day-number">1</p>
												</div>
												<div class="day-cell">
													<p class="day-number">2</p>
												</div>
												<div class="day-cell">
													<p class="day-number">3</p>
												</div>
											</div>
											<div class="week-row">
												<div class="day-cell">
													<p class="day-number">4</p>
												</div>
												<div class="day-cell">
													<p class="day-number">5</p>
												</div>
												<div class="day-cell">
													<p class="day-number">6</p>
												</div>
												<div class="day-cell white-cell">
													<p class="day-number">7</p>
													<p class="event-item  is-start is-end"></p>
												</div>
												<div class="day-cell white-cell">
													<p class="day-number">8</p>
													<p class="event-item  is-start is-end"></p>
												</div>
												<div class="day-cell white-cell">
													<p class="day-number">9</p>
													<p class="event-item  is-start is-end"></p>
												</div>
												<div class="day-cell white-cell">
													<p class="day-number">10</p>
													<p class="event-item  is-start is-end"></p>
												</div>
											</div>
											<div class="week-row">
												<div class="day-cell white-cell">
													<p class="day-number">11</p>
													<p class="event-item  is-start is-end"></p>
												</div>
												<div class="day-cell white-cell">
													<p class="day-number">12</p>
													<p class="event-item  is-start is-end"></p>
												</div>
												<div class="day-cell white-cell">
													<p class="day-number">13</p>
													<p class="event-item  is-start is-end"></p>
												</div>
												<div class="day-cell white-cell">
													<p class="day-number">14</p>
													<p class="event-item  is-start is-end"></p>
												</div>
												<div class="day-cell">
													<p class="day-number">15</p>
												</div>
												<div class="day-cell white-cell">
													<p class="day-number">16</p>
													<p class="event-item  is-start is-end"></p>
												</div>
												<div class="day-cell white-cell">
													<p class="day-number">17</p>
													<p class="event-item  is-start is-end"></p>
												</div>
											</div>
											<div class="week-row">
												<div class="day-cell">
													<p class="day-number">18</p>
												</div>
												<div class="day-cell white-cell">
													<p class="day-number">19</p>
													<p class="event-item  is-start is-end"></p>
												</div>
												<div class="day-cell white-cell">
													<p class="day-number">20</p>
													<p class="event-item  is-start is-end"></p>
												</div>
												<div class="day-cell white-cell">
													<p class="day-number">21</p>
													<p class="event-item  is-start is-end"></p>
												</div>
												<div class="day-cell white-cell">
													<p class="day-number">22</p>
													<p class="event-item  is-start is-end"></p>
												</div>
												<div class="day-cell white-cell">
													<p class="day-number">23</p>
													<p class="event-item  is-start is-end"></p>
												</div>
												<div class="day-cell white-cell">
													<p class="day-number">24</p>
													<p class="event-item  is-start is-end"></p>
												</div>
											</div>
											<div class="week-row">
												<div class="day-cell white-cell">
													<p class="day-number">25</p>
													<p class="event-item  is-start is-end"></p>
												</div>
												<div class="day-cell white-cell">
													<p class="day-number">26</p>
													<p class="event-item  is-start is-end"></p>
												</div>
												<div class="day-cell white-cell">
													<p class="day-number">27</p>
													<p class="event-item  is-start is-end"></p>
												</div>
												<div class="day-cell white-cell">
													<p class="day-number">28</p>
													<p class="event-item  is-start is-end"></p>
												</div>
												<div class="day-cell white-cell">
													<p class="day-number">29</p>
													<p class="event-item  is-start is-end"></p>
												</div>
												<div class="day-cell white-cell">
													<p class="day-number">30</p>
													<p class="event-item  is-start is-end"></p>
												</div>
												<div class="day-cell not-cur-month">
													<p class="day-number">1</p>
												</div>
											</div>
										</div>
										<div class="dates-events">
											<div class="events-week">
												<div track-by="$index" class="events-day not-cur-month">
													<p class="day-number">28</p>
													<div class="event-box">
														<!---->
													</div>
												</div>
												<div track-by="$index" class="events-day not-cur-month">
													<p class="day-number">29</p>
													<div class="event-box">
														<!---->
													</div>
												</div>
												<div track-by="$index" class="events-day not-cur-month">
													<p class="day-number">30</p>
													<div class="event-box">
														<!---->
													</div>
												</div>
												<div track-by="$index" class="events-day not-cur-month">
													<p class="day-number">31</p>
													<div class="event-box">
														<!---->
													</div>
												</div>
												<div track-by="$index" class="events-day">
													<p class="day-number">1</p>
													<div class="event-box">
														<!---->
													</div>
												</div>
												<div track-by="$index" class="events-day">
													<p class="day-number">2</p>
													<div class="event-box">
														<!---->
													</div>
												</div>
												<div track-by="$index" class="events-day">
													<p class="day-number">3</p>
													<div class="event-box">
														<!---->
													</div>
												</div>
											</div>
											<div class="events-week">
												<div track-by="$index" class="events-day">
													<p class="day-number">4</p>
													<div class="event-box">
														<!---->
													</div>
												</div>
												<div track-by="$index" class="events-day">
													<p class="day-number">5</p>
													<div class="event-box">
														<!---->
													</div>
												</div>
												<div track-by="$index" class="events-day">
													<p class="day-number">6</p>
													<div class="event-box">
														<!---->
													</div>
												</div>
												<div track-by="$index" class="events-day">
													<p class="day-number">7</p>
													<div class="event-box">
														<p class="event-item  is-start is-end">
															<p data-v-06a02ad2="" style="color: rgb(225, 6, 28);">¥1390</p>
														</p>
														<!---->
													</div>
												</div>
												<div track-by="$index" class="events-day">
													<p class="day-number">8</p>
													<div class="event-box">
														<p class="event-item  is-start is-end">
															<p data-v-06a02ad2="" style="color: rgb(225, 6, 28);">¥1390</p>
														</p>
														<!---->
													</div>
												</div>
												<div track-by="$index" class="events-day">
													<p class="day-number">9</p>
													<div class="event-box">
														<p class="event-item  is-start is-end">
															<p data-v-06a02ad2="" style="color: rgb(225, 6, 28);">¥1390</p>
														</p>
														<!---->
													</div>
												</div>
												<div track-by="$index" class="events-day">
													<p class="day-number">10</p>
													<div class="event-box">
														<p class="event-item  is-start is-end">
															<p data-v-06a02ad2="" style="color: rgb(225, 6, 28);">¥1390</p>
														</p>
														<!---->
													</div>
												</div>
											</div>
											<div class="events-week">
												<div track-by="$index" class="events-day">
													<p class="day-number">11</p>
													<div class="event-box">
														<p class="event-item  is-start is-end">
															<p data-v-06a02ad2="" style="color: rgb(225, 6, 28);">¥1390</p>
														</p>
														<!---->
													</div>
												</div>
												<div track-by="$index" class="events-day">
													<p class="day-number">12</p>
													<div class="event-box">
														<p class="event-item  is-start is-end">
															<p data-v-06a02ad2="" style="color: rgb(225, 6, 28);">¥1390</p>
														</p>
														<!---->
													</div>
												</div>
												<div track-by="$index" class="events-day">
													<p class="day-number">13</p>
													<div class="event-box">
														<p class="event-item  is-start is-end">
															<p data-v-06a02ad2="" style="color: rgb(225, 6, 28);">¥1390</p>
														</p>
														<!---->
													</div>
												</div>
												<div track-by="$index" class="events-day">
													<p class="day-number">14</p>
													<div class="event-box">
														<p class="event-item  is-start is-end">
															<p data-v-06a02ad2="" style="color: rgb(225, 6, 28);">¥1390</p>
														</p>
														<!---->
													</div>
												</div>
												<div track-by="$index" class="events-day">
													<p class="day-number">15</p>
													<div class="event-box">
														<!---->
													</div>
												</div>
												<div track-by="$index" class="events-day">
													<p class="day-number">16</p>
													<div class="event-box">
														<p class="event-item  is-start is-end">
															<p data-v-06a02ad2="" style="color: rgb(225, 6, 28);">¥2280</p>
														</p>
														<!---->
													</div>
												</div>
												<div track-by="$index" class="events-day">
													<p class="day-number">17</p>
													<div class="event-box">
														<p class="event-item  is-start is-end">
															<p data-v-06a02ad2="" style="color: rgb(225, 6, 28);">¥2280</p>
														</p>
														<!---->
													</div>
												</div>
											</div>
											<div class="events-week">
												<div track-by="$index" class="events-day">
													<p class="day-number">18</p>
													<div class="event-box">
														<!---->
													</div>
												</div>
												<div track-by="$index" class="events-day">
													<p class="day-number">19</p>
													<div class="event-box">
														<p class="event-item  is-start is-end">
															<p data-v-06a02ad2="" style="color: rgb(225, 6, 28);">¥1390</p>
														</p>
														<!---->
													</div>
												</div>
												<div track-by="$index" class="events-day">
													<p class="day-number">20</p>
													<div class="event-box">
														<p class="event-item  is-start is-end">
															<p data-v-06a02ad2="" style="color: rgb(225, 6, 28);">¥1390</p>
														</p>
														<!---->
													</div>
												</div>
												<div track-by="$index" class="events-day">
													<p class="day-number">21</p>
													<div class="event-box">
														<p class="event-item  is-start is-end">
															<p data-v-06a02ad2="" style="color: rgb(225, 6, 28);">¥1390</p>
														</p>
														<!---->
													</div>
												</div>
												<div track-by="$index" class="events-day">
													<p class="day-number">22</p>
													<div class="event-box">
														<p class="event-item  is-start is-end">
															<p data-v-06a02ad2="" style="color: rgb(225, 6, 28);">¥1390</p>
														</p>
														<!---->
													</div>
												</div>
												<div track-by="$index" class="events-day">
													<p class="day-number">23</p>
													<div class="event-box">
														<p class="event-item  is-start is-end">
															<p data-v-06a02ad2="" style="color: rgb(225, 6, 28);">¥1390</p>
														</p>
														<!---->
													</div>
												</div>
												<div track-by="$index" class="events-day">
													<p class="day-number">24</p>
													<div class="event-box">
														<p class="event-item  is-start is-end">
															<p data-v-06a02ad2="" style="color: rgb(225, 6, 28);">¥1390</p>
														</p>
														<!---->
													</div>
												</div>
											</div>
											<div class="events-week">
												<div track-by="$index" class="events-day">
													<p class="day-number">25</p>
													<div class="event-box">
														<p class="event-item  is-start is-end">
															<p data-v-06a02ad2="" style="color: rgb(225, 6, 28);">¥1390</p>
														</p>
														<!---->
													</div>
												</div>
												<div track-by="$index" class="events-day">
													<p class="day-number">26</p>
													<div class="event-box">
														<p class="event-item  is-start is-end">
															<p data-v-06a02ad2="" style="color: rgb(225, 6, 28);">¥1390</p>
														</p>
														<!---->
													</div>
												</div>
												<div track-by="$index" class="events-day">
													<p class="day-number">27</p>
													<div class="event-box">
														<p class="event-item  is-start is-end">
															<p data-v-06a02ad2="" style="color: rgb(225, 6, 28);">¥1390</p>
														</p>
														<!---->
													</div>
												</div>
												<div track-by="$index" class="events-day">
													<p class="day-number">28</p>
													<div class="event-box">
														<p class="event-item  is-start is-end">
															<p data-v-06a02ad2="" style="color: rgb(225, 6, 28);">¥1390</p>
														</p>
														<!---->
													</div>
												</div>
												<div track-by="$index" class="events-day">
													<p class="day-number">29</p>
													<div class="event-box">
														<p class="event-item  is-start is-end">
															<p data-v-06a02ad2="" style="color: rgb(225, 6, 28);">¥1390</p>
														</p>
														<!---->
													</div>
												</div>
												<div track-by="$index" class="events-day">
													<p class="day-number">30</p>
													<div class="event-box">
														<p class="event-item  is-start is-end">
															<p data-v-06a02ad2="" style="color: rgb(225, 6, 28);">¥1390</p>
														</p>
														<!---->
													</div>
												</div>
												<div track-by="$index" class="events-day not-cur-month">
													<p class="day-number">1</p>
													<div class="event-box">
														<!---->
													</div>
												</div>
											</div>
										</div>
										<div class="more-events" style="left: 0px; top: 0px; display: none;">
											<div class="more-header"><span class="title"></span> <span class="close">x</span></div>
											<div class="more-body">
												<ul class="body-list"></ul>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div data-v-06a02ad2="" class="booked">
							<p data-v-06a02ad2="" class="titles" style="margin-top: 67px;">选择出游日期及人数</p>
							<p data-v-06a02ad2="" class="category" style="color: rgb(102, 102, 102); font-size: 14px;">出发日期&nbsp;&nbsp;&nbsp; <span data-v-06a02ad2="" style="color: rgb(51, 51, 51);">请选择出行时间</span></p>
							<p data-v-06a02ad2="" class="category num_cal" style="color: rgb(102, 102, 102); font-size: 14px; position: relative;">出发人数&nbsp;&nbsp;&nbsp;
								<span data-v-06a02ad2="" class="adult-box"><div data-v-7ccd666e="" data-v-06a02ad2="" class="counter adult-counter"><span data-v-7ccd666e="" class="sub">-</span> <span data-v-7ccd666e="" class="number-input" style="color: rgb(51, 51, 51);">1</span> <span data-v-7ccd666e="" class="add">+</span></div>&nbsp;&nbsp;&nbsp;
						<span data-v-06a02ad2="" class="adult-word">成人</span> &nbsp;&nbsp;
						</span> <span data-v-06a02ad2="" class="child-box"><div data-v-7ccd666e="" data-v-06a02ad2="" class="counter child-counter"><span data-v-7ccd666e="" class="sub">-</span> <span data-v-7ccd666e="" class="number-input" style="color: rgb(51, 51, 51);">0</span> <span data-v-7ccd666e="" class="add">+</span></div>&nbsp;&nbsp;&nbsp;
					<span data-v-06a02ad2="" class="child-word">儿童</span> <span data-v-06a02ad2="" class="child-note desc"> 2~12岁</span></span>
					</p>
					<p data-v-06a02ad2=""><button data-v-06a02ad2="" class="booked-btn" style="background-color: gray;">立即预订</button></p>
					<!---->
				</div>
			</div>
		</div>
		<div data-v-06a02ad2="">
			<div data-v-06a02ad2="" id="travel1_fixed_p" style="padding-top: 0px;">
				<div data-v-06a02ad2="" id="travel1_fixed" class="travel1" style="margin-top: 55px; top: 7px;">
					<ul data-v-06a02ad2="" class="clearfix">
						<li data-v-06a02ad2="">
							<a data-v-06a02ad2="" class="actived">${combo.comboDays}日行程</a>
						</li>
						<li data-v-06a02ad2="">
							<a data-v-06a02ad2="" class="">费用说明</a>
						</li>
						<li data-v-06a02ad2="">
							<a data-v-06a02ad2="" class="">预订须知 </a>
						</li>
						<li data-v-06a02ad2="">
							<a data-v-06a02ad2="" class="">退订政策</a>
						</li>
						<li data-v-06a02ad2="">
							<a data-v-06a02ad2="" class="">用户点评(0)</a>
						</li>
					</ul>
				</div>
				<div data-v-06a02ad2="" style="height: 40px;"></div>
				<div data-v-06a02ad2="" class="travel1-content">
					<div data-v-06a02ad2="" class="page">
						<div data-v-6bba608e="" data-v-06a02ad2="" class="days">
							<section data-v-6bba608e="">
								<h1 data-v-6bba608e="" class="day1">养生弥勒-氧吧可邑</h1>
								<div data-v-6bba608e="">
									<h2 data-v-6bba608e="">取车</h2>
									<p data-v-6bba608e="">昆明长水机场15912534047</p>
								</div>
								<h2 data-v-6bba608e="">行程路线 <span data-v-6bba608e="" style="font-size: 13px;"> (预计140公里　预计2小时)</span></h2>
								<p data-v-6bba608e="">昆明-九乡-弥勒湖泉生态园。</p>
								<!---->
								<div data-v-6bba608e="">
									<h2 data-v-6bba608e="" class="spot">景区推荐</h2>
									<div data-v-6bba608e="" style="position: relative; overflow: hidden;">
										<div data-v-6bba608e="" class="el-dialog__wrapper" style="display: none;">
											<div class="el-dialog el-dialog--small" style="top: 15%;">
												<div class="el-dialog__header"><span class="el-dialog__title"></span><button type="button" aria-label="Close" class="el-dialog__headerbtn"><i class="el-dialog__close el-icon el-icon-close" style="color: rgb(255, 255, 255);"></i></button></div>
												<!---->
												<!---->
											</div>
										</div>
										<div data-v-6bba608e="" style="overflow: hidden; font-size: 14px; margin-bottom: 15px;"><span data-v-6bba608e="">九乡风景区</span> <span data-v-6bba608e="" class="map_mark3"></span></div>
										<ul data-v-6bba608e="" class="flex list-img">
											<li data-v-6bba608e="" class="flex-item"><img data-v-6bba608e="" src="../img/c912ec21-d1f5-4b14-8e5f-ff50e330bf3b.jpg" style="width: 484px; height: 290.4px;"></li>
										</ul>
										<p data-v-6bba608e="">九乡风景名胜区位于宜良县九乡彝族回族乡境内，国家AAAA级旅游区。</p>
									</div>
								</div>
								<!---->
								<div data-v-6bba608e="">
									<h2 data-v-6bba608e="">用餐</h2>
									<p data-v-6bba608e="" class="text-left">推荐湖泉酒店水云间餐厅</p>
								</div>
								<div data-v-6bba608e="">
									<h2 data-v-6bba608e="" class="hotel">住宿</h2>
									<div data-v-6bba608e="" style="position: relative;">
										<div data-v-6bba608e="" class="el-dialog__wrapper" style="display: none;">
											<div class="el-dialog el-dialog--small" style="top: 15%;">
												<div class="el-dialog__header"><span class="el-dialog__title"></span><button type="button" aria-label="Close" class="el-dialog__headerbtn"><i class="el-dialog__close el-icon el-icon-close" style="color: rgb(255, 255, 255);"></i></button></div>
												<!---->
												<!---->
											</div>
										</div>
										<div data-v-6bba608e=""><img data-v-6bba608e="" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAWCAYAAADJqhx8AAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAyJpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMy1jMDExIDY2LjE0NTY2MSwgMjAxMi8wMi8wNi0xNDo1NjoyNyAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RSZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENTNiAoV2luZG93cykiIHhtcE1NOkluc3RhbmNlSUQ9InhtcC5paWQ6QjQ2RDc2OEU4MTkzMTFFNzg4Q0VEQkI5MDI0QzlFMjgiIHhtcE1NOkRvY3VtZW50SUQ9InhtcC5kaWQ6QjQ2RDc2OEY4MTkzMTFFNzg4Q0VEQkI5MDI0QzlFMjgiPiA8eG1wTU06RGVyaXZlZEZyb20gc3RSZWY6aW5zdGFuY2VJRD0ieG1wLmlpZDpCNDZENzY4QzgxOTMxMUU3ODhDRURCQjkwMjRDOUUyOCIgc3RSZWY6ZG9jdW1lbnRJRD0ieG1wLmRpZDpCNDZENzY4RDgxOTMxMUU3ODhDRURCQjkwMjRDOUUyOCIvPiA8L3JkZjpEZXNjcmlwdGlvbj4gPC9yZGY6UkRGPiA8L3g6eG1wbWV0YT4gPD94cGFja2V0IGVuZD0iciI/PtH3Eo8AAAFMSURBVHjaYrzAgAHEgTgKiH2AWA+I/wPxZSDeAsTLgPglsmJGNANygLgTiLkYsIPvQFwNxP0wASYkyYlAPBmPZhDgBOI+IJ6BboATEOcxEA/Sgdgf2YAFOBSeA+KTOORAephABtgCsSya5H+oDcZAbAFV8wFNjQAQe4MMcMZiehEQb0LiHwHiaCzqzEAGKGCRWIpFbBsWMSGQASxYJPSxiGGziBlkwHksErOAmJ8IVz0CJSRJIOMZFklQilsCxL+AOASIVbGoUYOlxFVAHMpAGtgFxO6wdFDOQDooQk5I94F4LwmaQYnrKnpeiCLBgDBsmekVEPcSoXkaKPRxZWdY6Ivh0PwOiEWB+B82F8CAFx7bvZA14zLgLBDPwyI+H1vOxOYFGHgIxHJQ9gMgVsSmiAmPc32R2N64FLHgMeASEHcB8U8gvoZLEUCAAQCPRDnts9qxcwAAAABJRU5ErkJggg==" class="map_mark">
											<h3 data-v-6bba608e="" class="tow_img" style="overflow: hidden;"><div data-v-6bba608e="" style="float: left; margin-left: 10px;"><div data-v-6bba608e="" style="float: left; overflow: hidden;"><span data-v-6bba608e="">弥勒湖泉酒店</span> <!----> <span data-v-6bba608e="" style="margin-left: 10px;"><span data-v-6bba608e="" class="el-rate__item" style="cursor: auto;"><i data-v-6bba608e="" class="el-rate__icon el-icon-star-on" style="color: rgb(220, 17, 17); margin-right: 0px; font-size: 14px;"></i></span><span data-v-6bba608e="" class="el-rate__item" style="cursor: auto;"><i data-v-6bba608e="" class="el-rate__icon el-icon-star-on" style="color: rgb(220, 17, 17); margin-right: 0px; font-size: 14px;"></i></span><span data-v-6bba608e="" class="el-rate__item" style="cursor: auto;"><i data-v-6bba608e="" class="el-rate__icon el-icon-star-on" style="color: rgb(220, 17, 17); margin-right: 0px; font-size: 14px;"></i></span><span data-v-6bba608e="" class="el-rate__item" style="cursor: auto;"><i data-v-6bba608e="" class="el-rate__icon el-icon-star-on" style="color: rgb(220, 17, 17); margin-right: 0px; font-size: 14px;"></i></span><span data-v-6bba608e="" class="el-rate__item" style="cursor: auto;"><i data-v-6bba608e="" class="el-rate__icon el-icon-star-on" style="color: rgb(220, 17, 17); margin-right: 0px; font-size: 14px;"></i></span></span></div></div></h3></div>
										<ul data-v-6bba608e="" class="flex list-img">
											<li data-v-6bba608e="" class="flex-item"><img data-v-6bba608e="" src="../img/46d12b28-54b1-4cfe-8fd2-3a7cd62cddc9.jpg" style="width: 484px; height: 290.4px;"></li>
											<li data-v-6bba608e="" class="flex-item"><img data-v-6bba608e="" src="../img/07db98b9-78dd-4d62-be50-225a028faf98.jpg" style="width: 484px; height: 290.4px;"></li>
											<!---->
										</ul>
										<p data-v-6bba608e="">弥勒湖泉酒店隶属云南红河投资有限公司，是一家按照星级标准投资兴建的集住宿、温泉、餐饮、会议、娱乐等为一体的休闲度假酒店。湖泉生态园是水城风光、生态景观集一体的优良人文景观旅游资源，酒店依水而筑，傍山而立，客房格调典雅，整体设计构思新颖是中西式建筑的完美结合。</p>
									</div>
								</div>
								<!---->
							</section>
							<section data-v-6bba608e="">
								<h1 data-v-6bba608e="" class="day2">养生弥勒-氧吧可邑</h1>
								<!---->
								<h2 data-v-6bba608e="">行程路线 <span data-v-6bba608e="" style="font-size: 13px;"> (预计20公里　预计30小时)</span></h2>
								<p data-v-6bba608e="">弥勒-云南红酒庄-可邑小镇。</p>
								<!---->
								<div data-v-6bba608e="">
									<h2 data-v-6bba608e="" class="spot">景区推荐</h2>
									<div data-v-6bba608e="" style="position: relative; overflow: hidden;">
										<div data-v-6bba608e="" class="el-dialog__wrapper" style="display: none;">
											<div class="el-dialog el-dialog--small" style="top: 15%;">
												<div class="el-dialog__header"><span class="el-dialog__title"></span><button type="button" aria-label="Close" class="el-dialog__headerbtn"><i class="el-dialog__close el-icon el-icon-close" style="color: rgb(255, 255, 255);"></i></button></div>
												<!---->
												<!---->
											</div>
										</div>
										<div data-v-6bba608e="" style="overflow: hidden; font-size: 14px; margin-bottom: 15px;"><span data-v-6bba608e="">红河弥勒红酒庄</span> <span data-v-6bba608e="" class="map_mark3"></span></div>
										<ul data-v-6bba608e="" class="flex list-img">
											<li data-v-6bba608e="" class="flex-item"><img data-v-6bba608e="" src="../img/a7bd4b4b-58cc-4d76-95c3-8461967737ef.jpg" style="width: 484px; height: 290.4px;"></li>
										</ul>
										<p data-v-6bba608e="">酒庄拥有2万亩玫瑰蜜、赤霞珠、法国野等世界知名优质酿酒葡萄品种种植基地，并拥有国际标准的大型现代化厂房及国际一流的葡萄酒生产设备。</p>
									</div>
								</div>
								<!---->
								<div data-v-6bba608e="">
									<h2 data-v-6bba608e="">用餐</h2>
									<p data-v-6bba608e="" class="text-left">弥勒红酒庄内</p>
								</div>
								<div data-v-6bba608e="">
									<h2 data-v-6bba608e="" class="hotel">住宿</h2>
									<div data-v-6bba608e="" style="position: relative;">
										<div data-v-6bba608e="" class="el-dialog__wrapper" style="display: none;">
											<div class="el-dialog el-dialog--small" style="top: 15%;">
												<div class="el-dialog__header"><span class="el-dialog__title"></span><button type="button" aria-label="Close" class="el-dialog__headerbtn"><i class="el-dialog__close el-icon el-icon-close" style="color: rgb(255, 255, 255);"></i></button></div>
												<!---->
												<!---->
											</div>
										</div>
										<div data-v-6bba608e=""><img data-v-6bba608e="" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAWCAYAAADJqhx8AAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAyJpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMy1jMDExIDY2LjE0NTY2MSwgMjAxMi8wMi8wNi0xNDo1NjoyNyAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RSZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENTNiAoV2luZG93cykiIHhtcE1NOkluc3RhbmNlSUQ9InhtcC5paWQ6QjQ2RDc2OEU4MTkzMTFFNzg4Q0VEQkI5MDI0QzlFMjgiIHhtcE1NOkRvY3VtZW50SUQ9InhtcC5kaWQ6QjQ2RDc2OEY4MTkzMTFFNzg4Q0VEQkI5MDI0QzlFMjgiPiA8eG1wTU06RGVyaXZlZEZyb20gc3RSZWY6aW5zdGFuY2VJRD0ieG1wLmlpZDpCNDZENzY4QzgxOTMxMUU3ODhDRURCQjkwMjRDOUUyOCIgc3RSZWY6ZG9jdW1lbnRJRD0ieG1wLmRpZDpCNDZENzY4RDgxOTMxMUU3ODhDRURCQjkwMjRDOUUyOCIvPiA8L3JkZjpEZXNjcmlwdGlvbj4gPC9yZGY6UkRGPiA8L3g6eG1wbWV0YT4gPD94cGFja2V0IGVuZD0iciI/PtH3Eo8AAAFMSURBVHjaYrzAgAHEgTgKiH2AWA+I/wPxZSDeAsTLgPglsmJGNANygLgTiLkYsIPvQFwNxP0wASYkyYlAPBmPZhDgBOI+IJ6BboATEOcxEA/Sgdgf2YAFOBSeA+KTOORAephABtgCsSya5H+oDcZAbAFV8wFNjQAQe4MMcMZiehEQb0LiHwHiaCzqzEAGKGCRWIpFbBsWMSGQASxYJPSxiGGziBlkwHksErOAmJ8IVz0CJSRJIOMZFklQilsCxL+AOASIVbGoUYOlxFVAHMpAGtgFxO6wdFDOQDooQk5I94F4LwmaQYnrKnpeiCLBgDBsmekVEPcSoXkaKPRxZWdY6Ivh0PwOiEWB+B82F8CAFx7bvZA14zLgLBDPwyI+H1vOxOYFGHgIxHJQ9gMgVsSmiAmPc32R2N64FLHgMeASEHcB8U8gvoZLEUCAAQCPRDnts9qxcwAAAABJRU5ErkJggg==" class="map_mark">
											<h3 data-v-6bba608e="" class="tow_img" style="overflow: hidden;"><div data-v-6bba608e="" style="float: left; margin-left: 10px;"><div data-v-6bba608e="" style="float: left; overflow: hidden;"><span data-v-6bba608e="">弥勒可邑.帐篷度假酒店</span> <!----> <span data-v-6bba608e="" style="margin-left: 10px;"><span data-v-6bba608e="" class="el-rate__item" style="cursor: auto;"><i data-v-6bba608e="" class="el-rate__icon el-icon-star-on" style="color: rgb(220, 17, 17); margin-right: 0px; font-size: 14px;"></i></span><span data-v-6bba608e="" class="el-rate__item" style="cursor: auto;"><i data-v-6bba608e="" class="el-rate__icon el-icon-star-on" style="color: rgb(220, 17, 17); margin-right: 0px; font-size: 14px;"></i></span><span data-v-6bba608e="" class="el-rate__item" style="cursor: auto;"><i data-v-6bba608e="" class="el-rate__icon el-icon-star-on" style="color: rgb(220, 17, 17); margin-right: 0px; font-size: 14px;"></i></span></span></div></div></h3></div>
										<ul data-v-6bba608e="" class="flex list-img">
											<li data-v-6bba608e="" class="flex-item"><img data-v-6bba608e="" src="../img/c57978f5-c414-45f3-bc17-47f304bb4cc5.jpg" style="width: 484px; height: 290.4px;"></li>
											<li data-v-6bba608e="" class="flex-item"><img data-v-6bba608e="" src="../img/d775d353-3e3c-4cc8-b86b-d820c7c8ddd8.jpg" style="width: 484px; height: 290.4px;"></li>
											<!---->
										</ul>
										<p data-v-6bba608e="">弥勒可邑·帐篷度假酒店位于云南省红河州弥勒市可邑小镇景区内，距离景区入口约5公里。酒店四周青山环抱、空气清新、风景宜人，北面依天然崖壁，南面紧接真人CS竞技场地，既保留了帐篷的外观特点，又融合了现代酒店舒适元素，回归自然、崇尚自由。</p>
									</div>
								</div>
								<!---->
							</section>
							<section data-v-6bba608e="">
								<h1 data-v-6bba608e="" class="day3">养生弥勒-氧吧可邑</h1>
								<!---->
								<h2 data-v-6bba608e="">行程路线 <span data-v-6bba608e="" style="font-size: 13px;">(预计公里)</span></h2>
								<p data-v-6bba608e="">可邑小镇-锦屏山弥勒大佛-昆明。</p>
								<!---->
								<div data-v-6bba608e="">
									<h2 data-v-6bba608e="" class="spot">景区推荐</h2>
									<div data-v-6bba608e="" style="position: relative; overflow: hidden;">
										<div data-v-6bba608e="" class="el-dialog__wrapper" style="display: none;">
											<div class="el-dialog el-dialog--small" style="top: 15%;">
												<div class="el-dialog__header"><span class="el-dialog__title"></span><button type="button" aria-label="Close" class="el-dialog__headerbtn"><i class="el-dialog__close el-icon el-icon-close" style="color: rgb(255, 255, 255);"></i></button></div>
												<!---->
												<!---->
											</div>
										</div>
										<div data-v-6bba608e="" style="overflow: hidden; font-size: 14px; margin-bottom: 15px;"><span data-v-6bba608e="">可邑小镇</span> <span data-v-6bba608e="" class="map_mark3"></span></div>
										<ul data-v-6bba608e="" class="flex list-img">
											<li data-v-6bba608e="" class="flex-item"><img data-v-6bba608e="" src="../img/5207228a-4bf0-40d3-b390-b23f6bf0acc3.jpg" style="width: 484px; height: 290.4px;"></li>
										</ul>
										<p data-v-6bba608e="">步入弥勒西部百里彝山的可邑旅游小镇，感受原汁原味的彝族生态文化; 品阿细美食。</p>
									</div>
									<div data-v-6bba608e="" style="position: relative; overflow: hidden;">
										<div data-v-6bba608e="" class="el-dialog__wrapper" style="display: none;">
											<div class="el-dialog el-dialog--small" style="top: 15%;">
												<div class="el-dialog__header"><span class="el-dialog__title"></span><button type="button" aria-label="Close" class="el-dialog__headerbtn"><i class="el-dialog__close el-icon el-icon-close" style="color: rgb(255, 255, 255);"></i></button></div>
												<!---->
												<!---->
											</div>
										</div>
										<div data-v-6bba608e="" style="overflow: hidden; font-size: 14px; margin-bottom: 15px;"><span data-v-6bba608e="">锦屏山风景区</span> <span data-v-6bba608e="" class="map_mark3"></span></div>
										<ul data-v-6bba608e="" class="flex list-img">
											<li data-v-6bba608e="" class="flex-item"><img data-v-6bba608e="" src="../img/594edb44-26b9-4397-a24e-01907c7e7e30.jpg" style="width: 484px; height: 290.4px;"></li>
										</ul>
										<p data-v-6bba608e="">锦屏山风景区是滇东南最为著名的佛教胜地，弥勒市与智佛弥勒同名，遂成市名弥勒，山似弥勒，寺名弥勒，佛名弥勒之大奇。</p>
									</div>
								</div>
								<!---->
								<div data-v-6bba608e="">
									<h2 data-v-6bba608e="">用餐</h2>
									<p data-v-6bba608e="" class="text-left">可邑小镇民族餐厅</p>
								</div>
								<!---->
								<div data-v-6bba608e="">
									<h2 data-v-6bba608e="" class="end">还车</h2>
									<p data-v-6bba608e="" class="noline">昆明高铁站15912534047</p>
								</div>
							</section>
						</div>
					</div>
				</div>
			</div>
			<div data-v-06a02ad2="" class="travel-desc">
				<div data-v-06a02ad2="" class="car-recommended">
					<div data-v-06a02ad2="" class="car-center">
						<p data-v-06a02ad2=""><span data-v-06a02ad2="" class="car-title">用车推荐</span></p>
						<div data-v-06a02ad2="" class="img-info">
							<div data-v-06a02ad2="" class="l-img"><img data-v-06a02ad2="" src="../img/97a78a9a-2675-4f56-8b37-d19ecc453224.jpg" alt="" style="width: 469px; height: 281.4px;"></div>
							<div data-v-06a02ad2="" class="r-info">
								<p data-v-06a02ad2="" style="font-size: 20px; margin-bottom: 15px;">现代 朗动 <span data-v-06a02ad2="" class="content">(或同级车型)</span></p>
								<ul data-v-06a02ad2="">
									<li data-v-06a02ad2="">
										<dl data-v-06a02ad2="">
											<dd data-v-06a02ad2="">档位 : 自动</dd>
											<dd data-v-06a02ad2="">型号 : 三厢车</dd>
										</dl>
									</li>
									<li data-v-06a02ad2="">
										<dl data-v-06a02ad2="">
											<dd data-v-06a02ad2="">排量 : 1.6L</dd>
											<dd data-v-06a02ad2="">载客 : 5座</dd>
										</dl>
									</li>
								</ul>
							</div>
						</div>
					</div>
					<div data-v-06a02ad2="" style="position: absolute; left: 98px; z-index: -1;"><img data-v-06a02ad2="" width="1100" src="../img/bottom-shadow.c701ee9.png" alt=""></div>
				</div>
				<div data-v-06a02ad2="" id="1" class="cost-description">
					<div data-v-06a02ad2="" style="width: 100%; height: 35px;"></div> <span data-v-06a02ad2="" class="slogo"><img data-v-06a02ad2="" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACIAAAAjCAYAAADxG9hnAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAA4ZpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMy1jMDExIDY2LjE0NTY2MSwgMjAxMi8wMi8wNi0xNDo1NjoyNyAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wTU09Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9tbS8iIHhtbG5zOnN0UmVmPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvc1R5cGUvUmVzb3VyY2VSZWYjIiB4bWxuczp4bXA9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC8iIHhtcE1NOk9yaWdpbmFsRG9jdW1lbnRJRD0ieG1wLmRpZDo5MjcxZmY0YS03ZTk0LTRjOWEtOTgwOC03ZDg2M2MyOTRlNGMiIHhtcE1NOkRvY3VtZW50SUQ9InhtcC5kaWQ6RTFCNzJDMThDOTIwMTFFN0FGNjBBMUQ3NEIyN0FDNEMiIHhtcE1NOkluc3RhbmNlSUQ9InhtcC5paWQ6RTFCNzJDMTdDOTIwMTFFN0FGNjBBMUQ3NEIyN0FDNEMiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENDIDIwMTcgKE1hY2ludG9zaCkiPiA8eG1wTU06RGVyaXZlZEZyb20gc3RSZWY6aW5zdGFuY2VJRD0ieG1wLmlpZDoxY2QxZGY0Mi1kNmFjLTQ5MDgtOGU3Zi04YjlhNWRlYTkxN2QiIHN0UmVmOmRvY3VtZW50SUQ9ImFkb2JlOmRvY2lkOnBob3Rvc2hvcDpmODE2ZTA5Ni1kOGE5LTExN2EtOGY0Zi1iNGVhNjgxNDdhNDgiLz4gPC9yZGY6RGVzY3JpcHRpb24+IDwvcmRmOlJERj4gPC94OnhtcG1ldGE+IDw/eHBhY2tldCBlbmQ9InIiPz4KB4X3AAAEFElEQVR42uxYXUhUURCeu+vu2rrqau6aFIgpKgghhoEPpajZkz+IaJo+BL5kuuqjD2pG9BCKrmm9CCIEpUgvFqmJSKAiUW+CGEWBqbn+rFir7a67zbmejbv3Z+/1J/ChgeEsx5k5352ZMzNHxuv1wmkgFZwSOjVAgnw/2traZIUrrVYNLjeQryOnI19ENtI/25G/IL9Hfos89qy+3iVns7W11R+IDAByWANyDbJJQiyacgayBXkd9Xpx7UJA9mOHBo3dxGWBgA8AQoyiqM4CtaEsNCIA1Lg8Rr5zzPATLz1He9dwrUPv7Cv2CAUxdAIguERsDVHbikPThVz8Dy4HsWlVBAQRl+FSK2fR2NAAps7OAyN6PUT390PY7dtKwNylZ0jnCL0d3ZLB7usDj90OrqUlONvSwu5pYmNBZTSCLjUVDIWFwOh07G9wuWCtrk7KVDeeNca9TfxkJVfULKWtSUgA3aVLfntnsrL8r8rDh+y6NzcXyCtmetY93wbj6zWfIyO1uCwFuqIh+flwbmBAUTKslJSAY3IykIgN+UL85qaTnyN5cnXC8eYN7NtssiCIjGNqSk7MRM8UhCZPTtPrdoOtsRFCy8rA6xKv3oxGAzvDwwAejxLHkXbxig8kTYnmmcxMUMfE4Gcf1CVVSAh48VDv7u6BgFoN+uxs+DUyosRcmliOrMmFJvjKFTg/OurvJQTAaLUsAC4tYz7tTk/LAbFhjpj5ORIup3WWdkofuZeX4WtyMny7fFmQO5HNzUo8En7oeSQ4I4NlH3m2t2Hr0SMwWixgKC6G9aYm8Dgcft7jyh+m6W0HCk0EJqlfSDBZ3VjYotrbgQkKgt2ZGXSRW6CzMjsb6PxtMY98kixkWD31ubl+e+qoKAitqIAV9MZqZSUEp6WBKizMT4boaOLiAgH5JAbkg5Q0OVBwlff2wFBUBDGDg+xNWsMQcUPzV/fWrUBAPooBGZeSJjnAJ8/ODqxWVYHn508ILS9ncwacTqEu9h9tYqKU6XGxHCGbG+RyCEITHy+woDaZwICFbSknBz9HBaaODrb5ienq0tPBubgoVuLHBB7BTkg+p+cww4WhoABMmKxmqxX0BJDUjYiOFtt+Qs8U7b5ddJIyKwWjz5PtDOD+/l3MG12SgxGdDyx8rV+vXx95JCO6jokJ/raFP9kLhmcUGMSh5SqZpHx7P6qrwVhbC9qUFDY32IYm9VRlGDZnSKV1zs+DvacHvL9/cyV68YwXSqf4euQY39xKDG1hMp4AvaS2lQ3PdOQvRX56goMzsVUq9ZyQfNdQhRoM0zs6eZuPCIB09XqxcBzqpUcNJCHfp3VGKW1QnSQ5EIrfvjTDW9E7D+hUlcd5hEdQsS3OI5wUx3FunZAj5v8/anj0R4ABAPIdVIc7zKfKAAAAAElFTkSuQmCC" width="34" height="34" alt=""></span>
					<p data-v-06a02ad2="" style="margin-bottom: 10px;">
						<a data-v-06a02ad2="" name="cost-description" id="cost-description" class="red-title">费用说明</a>
					</p>
					<div data-v-06a02ad2="" class="bw">
                        <p style="text-align:justify"><strong>${combo.instruction.instructionContent}</strong></p>
						<#--<p style="text-align:justify"><span style="color:#FF0000"><strong>费用说明：此产品价格均按4人/车计算，如人数增加或减少，费用将发生变化！</strong></span></p>
						<p style="text-align:justify"><strong>特别说明：本产品为自助自驾线路产品，如您进行产品自由搭配，行程费用将根据您的选择发生变化并在订单总价处显示，下列费用中列示价格仅为原线路标配产品价格说明。</strong><strong>&nbsp;</strong></p>
						<p style="text-align:justify"><strong>【费用包含】</strong></p>
						<p style="text-align:justify"><strong>奢华型：</strong></p>
						<p style="text-align:justify"><strong>&nbsp;【住宿】</strong>1晚5星温泉酒店+1晚特色帐篷酒店</p>
						<p style="text-align:justify"><strong>&nbsp;【用餐】</strong>全程早餐为2早餐（双早），正餐自理可品尝当地特色美食</p>
						<p style="text-align:justify"><strong>&nbsp;【用车】</strong>全程用车为5座奥迪A4L</p>
						<p style="text-align:justify">&nbsp;【<strong>景点】</strong>行程所列景点首道大门票包含：九乡弥勒酒庄（及酒庄内教堂）、锦屏山“弥勒大佛”、可邑小镇景区</p>
						<p style="text-align:justify"><strong>&nbsp;【保险】</strong>旅游意外险、旅行社责任险</p>
						<p style="text-align:justify">&nbsp;</p>
						<p style="text-align:justify"><strong>尊享型：</strong></p>
						<p style="text-align:justify"><strong>&nbsp;【住宿】</strong>1晚5星酒店（弥勒湖泉酒店）、1晚特色帐篷酒店（弥勒.可邑帐篷酒店）</p>
						<p style="text-align:justify"><strong>&nbsp;【用餐】</strong>全程早餐为5早餐（双早），正餐自理可品尝当地特色美食</p>
						<p style="text-align:justify"><strong>&nbsp;【用车】</strong>全程用车为5座奥迪A3车</p>
						<p style="text-align:justify">&nbsp;【<strong>景娱】</strong>行程所列景点首道大门票包含：九乡、弥勒酒庄（及酒庄内教堂）、锦屏山“弥勒大佛”、可邑小镇景区</p>
						<p style="text-align:justify"><strong>&nbsp;【保险】</strong>旅游意外险、旅行社责任险</p>
						<p style="text-align:justify">&nbsp;</p>-->
						<p style="text-align:justify"><strong>&nbsp;【费用不含】</strong></p>
						<p style="text-align:justify">1)行程内未提及的其他个人消费；</p>
						<p style="text-align:justify">2)自驾车辆的过路费、停车费、燃油费、违章罚款、救援费、维修费、拖车费等；</p>
						<p style="text-align:justify">3）此套餐价格不包含持特殊证件人群（学生、军人、残疾人，老年人等），下单时应正确填写游客信息系统正确计算实际价格，建议特殊群体携带可优惠证件至景区购票点自行购买，按景区实际情况享受优惠政策；</p>
						<p style="text-align:justify">4)因交通延阻、罢工、天气、飞机、机器故障、航班取消或更改时间等不可抗力因素所导致的额外费用；</p>
						<p style="text-align:justify">5）酒店内洗衣、理发、电话、饮品等个人消费；</p>
						<p style="text-align:justify">6）线路中未含的其他项目；</p>
						<p style="text-align:justify">7）往返飞机票、火车票、长途汽车票等交通费用；</p>
						<p style="text-align:justify">8）车辆逾期费用（详见须知）；</p>
						<p style="text-align:justify">9）取车时的车辆押金和还车时的违章押金。</p>
					</div>
					<!---->
				</div>
				<div data-v-06a02ad2="" id="2" class="booking-information">
					<div data-v-06a02ad2="" style="width: 100%; height: 35px;"></div> <span data-v-06a02ad2="" class="slogo"><img data-v-06a02ad2="" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACoAAAAqCAMAAADyHTlpAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAyRpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMy1jMDExIDY2LjE0NTY2MSwgMjAxMi8wMi8wNi0xNDo1NjoyNyAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RSZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENTNiAoTWFjaW50b3NoKSIgeG1wTU06SW5zdGFuY2VJRD0ieG1wLmlpZDpEQUIyRTBFRjUyQUYxMUU3QjVENEYxNDc3QjI1NDBFNSIgeG1wTU06RG9jdW1lbnRJRD0ieG1wLmRpZDpEQUIyRTBGMDUyQUYxMUU3QjVENEYxNDc3QjI1NDBFNSI+IDx4bXBNTTpEZXJpdmVkRnJvbSBzdFJlZjppbnN0YW5jZUlEPSJ4bXAuaWlkOkRBQjJFMEVENTJBRjExRTdCNUQ0RjE0NzdCMjU0MEU1IiBzdFJlZjpkb2N1bWVudElEPSJ4bXAuZGlkOkRBQjJFMEVFNTJBRjExRTdCNUQ0RjE0NzdCMjU0MEU1Ii8+IDwvcmRmOkRlc2NyaXB0aW9uPiA8L3JkZjpSREY+IDwveDp4bXBtZXRhPiA8P3hwYWNrZXQgZW5kPSJyIj8+WwMiywAAAPlQTFRF3BER////9bq6/fPz3h4e3h0d3BMT5VBQ7Ht76Wxs+dfX9bi46GRk86ys3h8f4C0t/vb27Hp6/vf3++fn6GVl9sTE4Cws/vv7//z89bm5/Ojo9b6+63h46m1t9sXF+dXV4C4u8qSk3RYW6Wpq86qq3RgY98vL9by863p68qio++bm6Wlp6Who7o2N7oiI7ouL+dbW+M/P51tb63l53yQk+djY/fX1/fHx7Hx851xc3iIi5EhI/O3t98jI63Z251pa++Pj3BIS86ur+tvb4TAw3RcX/vj44z4++M3N862t515e98bG5lZW63V13hsb6Wtr/Onp9La2////JroMlwAAAFN0Uk5T/////////////////////////////////////////////////////////////////////////////////////////////////////////////wBmiX5ZAAABfklEQVR42rTV15KCMBQG4KMG6SD2uvZVV93ee++V93+YVUIkgZB1nNn/JmcyH0zmkARwlw6sTLMVRbYtsGxZ0bMiqqkWBLHUgzhaNdLAJm1UudREEA265VAH+HEitAtxmZRZqkB8Lhn6AqKYFM0hIUUbAc2DOPkF1YJ+dtqpIO0O6a9GqBo8P03QmZLphk8z1EoLDC2QaSmDaYVa1QCbrWtvGCzmdUzpniY9sg7H3phczCuYyiFa+n6Cz+YjQ2VMWww9PDt9mFf7902K2pgihpY2/fL9nKISphBawE9/Xg2ZBQDvrbO19knbIm9thegIbnaLYDDU5ndg9HqXOPpQeB2I9pUk0ld9Cep/rYz0JyV7gN5ZNfxhzR1vrJFplbNf32Zg7WpWnFzMq8h+pU5BN7U98cuv51TDL42VzpZrLn1iXXcokHuh22UcK8fhi6hcj5H1cvQm7EkcKPW492uOc7/m4m9t+s2Sqgn/BbojFxGgouyI/wX/9TMS5VeAAQCGZuBoBUKY6AAAAABJRU5ErkJggg==" width="34" height="34" alt=""></span>
					<p data-v-06a02ad2="" style="margin-bottom: 10px;">
						<a data-v-06a02ad2="" class="red-title">预订须知</a>
					</p>
					<div data-v-06a02ad2="" class="bw">
						<p><strong>${combo.notice.noticeContent}</strong></p>
						<#--<p>全程为高速路段90%高速路面，全程过路费约为 60元。</p>
						<p><strong>加 油 点</strong></p>
						<p>全程90%为高速公路，沿途加油站充足，进入乡镇可在乡镇上加油。（您需注意所使用车辆车型所需加油的油品型号，详情可看车内<strong>行车提示卡</strong>中标注信息）。</p>
						<p><strong>温馨提示：请驾驶人员准备好身份证、驾驶证原件及足额信用卡。</strong></p>
						<p><strong>出游装备提示</strong></p>
						<p>我们为您提供丰富的<strong>可选物资</strong>，以便您能轻装出行，您可在预订产品时同时选租、选购您所需物资，在您落地取车时将由网点服务人员把您所选物资同车辆一并交付给您。</p>
						<p><strong>可选物资包含</strong></p>
						<p>1）用品类：如血压仪、老人手杖、轮椅、儿童手推车、尿不湿、婴儿座椅、儿童玩具、儿童书籍等。</p>
						<p>2）装备类：如帐篷、睡袋、烧烤架、便携氧气瓶、登山杖、防潮垫、野餐垫、户外套锅等。</p>
						<p>3）器材类：单反相机、相机三脚架、大疆无人机、望远镜等。</p>
						<p>4）特产类：如鲜花饼、云南三七、咖啡等。</p>
						<p>5）服务类：司机、导游、随行达人（运动、美食、摄影）、动植物专家、订婚策划、户外体验等。</p>
						<p>建议您出发前需要准备的<strong>物品清单</strong>包括：</p>
						<p>1）数码产品：相机、手机、自拍杆、笔记本或数码伴侣 (切记自备充电器和数据线)。</p>
						<p>2）日用品：洗漱品酒店内有可自行选择(毛巾、牙刷、牙膏)，湿巾、内衣裤、袜子、日记本、帽子、伞、梳子、靠枕等需自带。如有儿童随行，建议为儿童携带合适大小的拖鞋及其它儿童必备物品。</p>
						<p>3）护肤品：防晒霜30倍、补水喷雾、墨镜。</p>
						<p>4）衣物：短袖、长袖外套一两件即可(云南十八怪，四季衣服同穿戴，请合理准备衣物)，七八月份记得带上一件雨衣出行。</p>
						<p>5）证件及资料：身份证、驾驶证、信用卡、军人证、学生证、老年证、伤残证等。</p>
						<p>6）<strong>离线地图</strong>：由于云南部分地区较偏僻导致信号不好，建议您提前下载行程中所有旅游目的地离线地图。</p>
						<p>7）药品：悟空自驾游车内均已为您配备<strong>急救包</strong>，内含无菌敷贴、无菌手套、纱布、手电筒、绷带、创可贴、口罩、红霉素软膏等常用物品，如您有其它日常<strong>自用药品</strong>需要携带，请注意在出发前准备与出行时间相匹配的药量。 &nbsp;&nbsp;</p>
						<p><strong>取车/还车</strong>：</p>
						<p>长水机场取车人员联系电话：&nbsp;13759475722</p>
						<p>昆明高铁站取车人员联系电话：13529293634</p>
						<p><strong>客服管家</strong>：13759441592</p>-->
						<p><strong>其他提示</strong></p>
						<p>1）取车时需缴纳<strong>车辆押金</strong>：根据您所选车型不同，车辆押金预授权金额为每车20000元-60000元不等，平台将根据您的信用等级进行相应额度的减免，具体升级方法将有悟空服务人员在您出发前为您进行电话指导。</p>
						<p>2）车辆押金支付时刷取的预授权金额还在您的信用额度中，由银行暂时冻结，车辆押金在您还车至网点并由工作人员查验车辆无损伤后即时解冻预授权。</p>
						<p>3）还车时需缴纳<strong>违章押金：</strong>违章押金金额为2000元/车，在您还车后经查询无违章记录情况下1个月内返还。</p>
						<p><strong>注意：由于各银行解冻周期不同，部分银行卡解冻到账日期会有延误。</strong></p>
						<p>4）行程中所含酒店价格会根据淡旺季进行相应的调整，悟空自驾游产品对应采用<strong>浮动价格</strong>方式报价，建议您提前预订产品。</p>
						<p>5）儿童1.2米以下门票免费，1.2米以上需根据景区具体规定购买门票，如购买学生票需要携带学生证原件。</p>
						<p>6）<strong>酒店入住时间</strong>为当日14:00以后，退房时间为退房日12:00之前，入住时若有房间可提前办理入住手续。</p>
						<p>7）预订产品时<strong>订单总金额</strong>会根据您提交的人数、车辆数、房间数、门票数和出行日期自动计算。</p>
						<p>8）旅途中汽油费、过路费、停车费、罚单<strong>需要自理。</strong></p>
						<p>9）在您所使用车辆里，我们为您准备了手机支架和USB充电接口工具，方便您在旅途中使用，鉴于各类电子产品型号不一、通用性有限，建议您谨慎使用，使用过程中因型号不匹配或工具质量问题导致您的物品损坏悟空将无法承担赔偿责任，但会积极协助您与生产制造方沟通协调。</p>
						<p><strong>常见问题</strong><br>1、悟空自驾游为您提供5座轿车、5座SUV、MPV&nbsp;7座商务车等多品牌多档次车型供您选择，在您落地之后，我们的工作人员将在昆明长水国际机场到达口3号门悟空自驾游柜台或昆明高铁站门店恭候您，并为您提供取车服务。行程结束时，您可直接将车辆还至机场悟空自驾游停车位或高铁站悟空自驾游停车位，由工作人员为您办理查验及还车手续。</p>
						<p>2、行程内车辆使用时限<br>悟空自驾游产品所提供的用车服务为预订行程内用车，具体计算方式为：</p>
						<p>1）用车时间为点对点即取车时刻与还车时刻保持一致，24小时为一天。</p>
						<p>2）未协商一致情况下，提前还车不做退费处理。</p>
						<p>3）为方便您的行程安排，若延迟还车时间≦4小时，不收取额外费用；如延迟还车时间&gt;4小时，则按照超时使用一天计费，费用以“悟空租车”APP当天车辆出租价格为准收取租车费用。以5天4晚行程为例：如第一天提车时间为14:00，则最后一天还车时间同为14:00，允许延迟还车时间为18:00，在此时限内还车不收取额外费用，若晚于18:00点还车，则加收一天租车费用。</p>
						<p>3、悟空自驾游已提前为您预订好行程内所包含的酒店及客栈，您在酒店或客栈前台出示身份证即可办理入住<br>4、行程中的景点、娱乐项目门票的取得</p>
						<p>1）代取门票：我们已经为您购买并取回的景点门票及娱乐项目门票，在您提车时由工作人员交接给您，您随身携带至景区或剧场出示即可入园。</p>
						<p>2）自取门票：我们已为您准备“悟空自驾游”行程单，您携带行程单至景区售票大厅或剧场即可兑换门票入园，如有问题请拨打您的专属客服管家电话。</p>
						<p>3）推荐自由选择的景点及娱乐项目门票：我们在行程中为您推荐的景点及娱乐项目，需要您前往您所选择的景点景区及娱乐剧场购买门票。</p>
						<p>5、安全提示<br>1）悟空提示您合理安排在景区景点的游玩时间，避免长时间驾驶、夜间驾驶、疲劳驾驶等安全隐患。<br>2）悟空为您提供7X24小时服务支持，在旅行过程中遇到任何突发情况时，您可以随时联系您的<strong>专属客服管家</strong>，我们将第一时间为您提供服务。</p>
						<p>3）悟空自驾游产品保险费包含车辆及旅游保险两部分，其中自驾游车辆已包含交强险、第三者责任险50万、车损险、驾乘人员座位险120万。旅游保险包含我们已经为您购买的<strong>旅游意外险</strong>及悟空旅行社自身已购买的<strong>旅行社责任险</strong>。</p>
						<p>6、车辆故障应急预案<br>旅行过程中，如您的车辆出现故障或发生保险事故导致车辆无法安全行驶的，请第一时间致电我们的车辆保障专员（电话号码：18669052747），保障专员将根据车辆故障及事故情况做出合理判断，并在第一时间安排就近维修、道路救援，或为您提供替换车服务，确保您在最短时间内继续行程。</p>
					</div>
					<!---->
				</div>
				<div data-v-06a02ad2="" id="3" class="change-policy"><span data-v-06a02ad2="" class="slogo"><img data-v-06a02ad2="" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACIAAAAjCAYAAADxG9hnAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAA4ZpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMy1jMDExIDY2LjE0NTY2MSwgMjAxMi8wMi8wNi0xNDo1NjoyNyAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wTU09Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9tbS8iIHhtbG5zOnN0UmVmPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvc1R5cGUvUmVzb3VyY2VSZWYjIiB4bWxuczp4bXA9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC8iIHhtcE1NOk9yaWdpbmFsRG9jdW1lbnRJRD0ieG1wLmRpZDo5MjcxZmY0YS03ZTk0LTRjOWEtOTgwOC03ZDg2M2MyOTRlNGMiIHhtcE1NOkRvY3VtZW50SUQ9InhtcC5kaWQ6RTJFNTUwNDFDOTIwMTFFN0FGNjBBMUQ3NEIyN0FDNEMiIHhtcE1NOkluc3RhbmNlSUQ9InhtcC5paWQ6RTJFNTUwNDBDOTIwMTFFN0FGNjBBMUQ3NEIyN0FDNEMiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENDIDIwMTcgKE1hY2ludG9zaCkiPiA8eG1wTU06RGVyaXZlZEZyb20gc3RSZWY6aW5zdGFuY2VJRD0ieG1wLmlpZDoxY2QxZGY0Mi1kNmFjLTQ5MDgtOGU3Zi04YjlhNWRlYTkxN2QiIHN0UmVmOmRvY3VtZW50SUQ9ImFkb2JlOmRvY2lkOnBob3Rvc2hvcDpmODE2ZTA5Ni1kOGE5LTExN2EtOGY0Zi1iNGVhNjgxNDdhNDgiLz4gPC9yZGY6RGVzY3JpcHRpb24+IDwvcmRmOlJERj4gPC94OnhtcG1ldGE+IDw/eHBhY2tldCBlbmQ9InIiPz622J0LAAADaklEQVR42uxYS0wTURS903+BCAX5FUlEQBISFpC4wGBCCAJhaYKfFWHhAhTCgoQdGjcswUZhyYKFSogh4AIxsEASFkbZ8QlRQyxRWwqUT4XWmfG+4bXU8jrz2mJg4U1OZjoz77wz9913594KsizDeTAdnBM7N0IMwZPP6ek8zxsR9YibiGuIK4g0em8b8QXxAfEO8RYR0CIs3NxUjkIwRjSEkMk6EW2ITM6X3EA8R/RTkapCeJbmLmIZ8SgGEcQu0jHLlCPuGNEjBhAvENkJLH825RignDEJIQNGEK2nGI+tlFMfixCyrrf+weYgnE9Vd02Y3UE8VGMTzGawdXaCtboa5MPD4+sWC+xPTsK2wwEgSdGGP0C8R7xS8wjZHQ7NPVxcDLbubpD29kDc2ADR41GO0u4uZPT0gKmoSIvCEbbtmR4hWzSL6bq8PDCXl4Ps84G1pkYR8b2p6cRzBU4nXGhuBt/0NAhJSXC4sAC/19cjH8uicz0OeTMsj5jw4Iy2RfPn5sBUWhr6LW1twY+WFkVQyL0pKZAzNAQ6my10zb+4CN+qqliUbsQlzCP+SI/UqeUJfdbfjiKT2cfGNKMzclyYZdI530TGSJ0aIVn/eExjXD0rWCvO4FtXwRJy9QyEFLOEpMbKsjsyAgfz84kISVVLaJomut3w8/59+DU7q+QUSwV6WBDAWFAAtq4u5TyRwsjLO0gOBMC/tHQUjPgZJwktsLYGm7294KytBfnggJfKy/LIKu9n3mC3w+WVFdgZHlayqKWyMpRbvhYWgm9mBpIbG3moVllCPiKux+LO5IYGEF0uJXuCTgd7o6NHpPn5vBSfWEKmEO3ccYJLso5vLXm9RzGBGVra2YHMvj4wl5Xx0kxFE+JBZPAw6NPSwD4xcfyVFUXQ5+aCYOCOfzeta08IITn/GS3vOMJcB4acnES27gCdk1kGkILIxaxBjMa4ZhNMpmje6FerR0i13cEktFrjE8J+gY7Iyp61oKRyukErqeNXaG+HJAxOAQNTxnjQFKDXAykx9sfHI2+RFuPlieej9DXB4vm069bXiNsktHn7GpEOGDxFEYORInj7GpF2dveiBTCnuShHWzQRvJ0eWc8SxBOaZ3jNQ8eUsGKCN0a0mvC6sCY8WKBuhTXhUxT+mJvw//+PUPsjwAAh4glRBA2RrgAAAABJRU5ErkJggg==" width="34" height="34" alt=""></span>
					<p data-v-06a02ad2="" class="red-nav" style="margin-bottom: 10px;">
						<a data-v-06a02ad2="" class="red-title">退订政策</a>
					</p>
					<div data-v-06a02ad2="" class="bw">
						<p style="text-align:justify">&nbsp;</p>
						<p style="text-align:justify">【<strong>总退改规则</strong>】</p>
						<p style="text-align:justify">因旅游淡旺季、各民族节假日之间存在差异，故各条线路所执行淡旺季、节假日的时间、价格均有不同，具体以悟空自驾游平台线路说明为准。</p>
						<p style="text-align:justify">活动期间预订、购买的产品退费原则为不超过实际购买价总额。</p>
						<p style="text-align:justify">【<strong>预订提示</strong>】</p>
						<p style="text-align:justify">65周岁（含）以上老年人预订出行需确保身体健康适宜旅游，并有20周岁以上家属或朋友（因服务能力所限无法接待及限制接待的人除外）全程陪同出行。</p>
						<p style="text-align:justify">【<strong>预订流程</strong>】</p>
						<p style="text-align:justify">选择产品-----填写信息-----下单支付-----客服二次确认-----订单生效-----开始旅程-----结束还车-----产品评价</p>
						<p style="text-align:justify"><strong>一、预订规则</strong></p>
						<p style="text-align:justify">１、您的订单将以客服管家在系统平台上进行订单确认为准，确认后订单生效</p>
						<p style="text-align:justify">线上完成订单提交后，客服管家会根据您所预订产品的具体信息进行相关酒店、景区、车辆的预订，完成所有产品资源预订后，客服管家将在线上对您的订单进行确认，确认后的订单正式生效。若产品资源不足，客服管家会与您取得联系协商调整行程时间或更换产品项目，如无法达成一致则客服管家会在系统平台拒绝原订单。</p>
						<p style="text-align:justify">2、客服管家系统确认订单时间</p>
						<p style="text-align:justify">您在系统平台下单预订产品30分钟内将有客服管家与您联系并进行初次沟通，（非工作时间20:00-次日8:59时间段推迟到工作日时间9:00以后的30分钟内）。</p>
						<p style="text-align:justify">订单确认<strong>最长</strong>时间</p>
						<p style="text-align:justify">周一至周五00:00点至20:00点预订产品，确认时间为48小时。</p>
						<p style="text-align:justify">周五20:00点至周日24:00点，确认时间为3工作日。</p>
						<p style="text-align:justify">法定国家节假日期间预订订单确认时间为假期后48小时。</p>
						<p style="text-align:justify"><strong>二、线路退改规则</strong></p>
						<p style="text-align:justify"><strong>订单取消</strong></p>
						<p style="text-align:justify">【淡季执行规则】</p>
						<p style="text-align:justify">全额退款：距离行程起始日前7天以上取消（不含7天）。</p>
						<p style="text-align:justify">退款80%：距离行程起始日前3-7天取消（不含3天含7天）。</p>
						<p style="text-align:justify">退款60%：距离行程起始日前3天内取消（含3天）。</p>
						<p style="text-align:justify">备 &nbsp;&nbsp;&nbsp;注：特殊景点及娱乐项目，产品线路中标明的限时、限量购票景点或娱乐项目的门票不可退换，价格以景点、娱乐项目票面价格为准。</p>
						<p style="text-align:justify">&nbsp;【旺季执行规则】</p>
						<p style="text-align:justify">全额退款：距离行程起始日前15天以上取消（不含15天）。</p>
						<p style="text-align:justify">退款80%：距离行程起始日前7-15天取消（不含7天含15天）。</p>
						<p style="text-align:justify">退款60%：距离行程起始日前7天内取消（含7天）。</p>
						<p style="text-align:justify">备 &nbsp;&nbsp;&nbsp;注：特殊景点及娱乐项目，产品线路中标明的限时、限量购票景点或娱乐项目的门票不可退换，价格以景点、娱乐项目票面价格为准。</p>
						<p style="text-align:justify"><strong>订单修改</strong></p>
						<p style="text-align:justify">1、行程<strong>开始前</strong>订单修改</p>
						<p style="text-align:justify">关于出行<strong>日期</strong>修改</p>
						<p style="text-align:justify">【淡季执行规则】出行日期修改执行以下规则：</p>
						<p style="text-align:justify">距离行程起始日前7天以上的修改（不含7天）：</p>
						<p style="text-align:justify">联系客服管家取消原订单，根据新的行程计划重新进行平台预订。</p>
						<p style="text-align:justify">距离行程起始日前3-7天的修改（不含3天含7天）：</p>
						<p style="text-align:justify">联系客服管家取消原订单，悟空自驾游收取订单总金额20%违约金，您可根据新的行程计划重新进行平台预订。</p>
						<p style="text-align:justify">距离行程起始日前3天内的修改（含3天）：</p>
						<p style="text-align:justify">联系客服管家取消原订单，悟空自驾游收取订单总金额40%违约金，您可根据新的行程计划重新进行平台预订。</p>
						<p style="text-align:justify">【旺季执行规则】出行日期修改执行以下规则：</p>
						<p style="text-align:justify">距离行程起始日前15天以上取消（不含15天）：</p>
						<p style="text-align:justify">联系客服管家取消原订单，根据新的行程计划重新进行平台预订。</p>
						<p style="text-align:justify">距离行程起始日前7-15天取消（不含7天含15天）：</p>
						<p style="text-align:justify">联系客服管家取消原订单，悟空自驾游收取订单总金额20%违约金，您可根据新的行程计划重新进行平台预订。</p>
						<p style="text-align:justify">距离行程起始日前7天内取消（含7天）：</p>
						<p style="text-align:justify">联系客服管家取消原订单，悟空自驾游收取订单总金额40%违约金，您可根据新的行程计划重新进行平台预订。</p>
						<p style="text-align:justify"><strong>特别提醒</strong></p>
						<p style="text-align:justify">特殊景点及娱乐项目，产品线路中标明的限时、限量购票景点或娱乐项目的门票不可退换，价格以景点、娱乐项目票面价格为准。</p>
						<p style="text-align:justify">关于行程<strong>内容</strong>修改</p>
						<p style="text-align:justify">如增加景点、延长行程时间、调整行程、续租车辆、物品增加需联系客服管家进行沟通，由其告知您相关增加、调整后产生的费用，您确认无误后，客服管家就所增加、调整的项目部分生成书面《补充协议》（原旅游协议之有效附件），由您以短信、微信等方式先行确认电子版补充协议内容，在您落地到达取车门店时签署纸质版补充协议并支付费用。</p>
						<p style="text-align:justify">同行<strong>人员</strong>的更改</p>
						<p style="text-align:justify">驾驶人员变更：需要您提交变更后驾驶人员的驾驶证、身份证信息</p>
						<p style="text-align:justify">同行人数减少退费流程：</p>
						<p style="text-align:justify">联系客服管家进行沟通后，客服管家将与您确认扣除需补缴的车位差、单房差费用以及将退还给您的金额。就所减少、调整后产生的费用，您确认无误后，客服管家出具书面《补充协议》（原旅游协议之有效附件），由您以短信、微信等方式先行确认电子版补充协议内容，并给管家发送您的退款账户信息，我们将在10个工作日之内将款项退还至您的银行账户。在您落地到达取车门店时签署纸质版旅游协议及调整后的补充协议。</p>
						<p style="text-align:justify"><strong>说明：</strong></p>
						<p style="text-align:justify">a.特殊景点及娱乐项目：产品线路中标明的限时、限量购票景点或娱乐项目的门票不可退换，价格以景点、娱乐项目票面价格为准。</p>
						<p style="text-align:justify">b.车位差：同行人员减少需补缴因减少所产生的车位差，车位差金额因每条线路配备车辆不同，故以每条线路说明为准。</p>
						<p style="text-align:justify">c.单房差：人员如出现单人需补缴单房差情况，以每条线路单房差金额为准。</p>
						<p style="text-align:justify">同行人数增加调整流程：</p>
						<p style="text-align:justify">联系客服管家进行沟通后，客服管家将与您确认需要增加的车辆、酒店、景区以及其它资源的相关费用。相关增加、调整后产生的费用，您确认无误后，客服管家就所增加、调整的项目部分生成书面《补充协议》（原旅游协议之有效附件），由您以短信、微信等方式先行确认电子版补充协议内容，在您落地到达取车门店时签署纸质版旅游协议及调整后的补充协议并支付调整后增加的款项。</p>
						<p style="text-align:justify">包含以下二种情况：</p>
						<p style="text-align:justify">同行人员增加后无需变更车型或增加车辆数量的，免收新增人员车辆费用，仅对新增人员所需预订的房费、门票、娱乐等付费项目增收费用。</p>
						<p style="text-align:justify">同行人员增加后导致车型发生变更或需要增加车辆数量的，需要补交新增车辆或更换车型导致的费用差，及新增人员所需预订的房费、门票、娱乐等付费项目费用。</p>
						<p style="text-align:justify">2、行程<strong>开始后</strong>订单修改</p>
						<p style="text-align:justify"><strong>未使用项目的退费</strong></p>
						<p style="text-align:justify">【淡季执行规则】房费：距离预订入住日期3天以内的不予退费（含3天）。</p>
						<p style="text-align:justify">【旺季执行规则】房费：距离预订入住日期7天以内的不予退费（含7天）。</p>
						<p style="text-align:justify">车费：按实际还车与计划还车时间计算时长差，参考“悟空租车”平台车辆未使用期间价格进行退费。</p>
						<p style="text-align:justify">景点：保留完整票据情况下，按票面价格退还50%。</p>
						<p style="text-align:justify">娱乐：保留完整票据情况下，按票面价格退还50%。</p>
						<p style="text-align:justify">注意：特殊景点及娱乐项目，产品线路中标明的限时、限量购票景点或娱乐项目的门票不可退换，价格以票面价格为准。</p>
						<p style="text-align:justify"><strong>线路内容修改</strong></p>
						<p style="text-align:justify">如增加景点、延长时间、调整行程、续租车辆、租购物品等调整事项，由您和客服管家确认无误后，客服管家就所增加、调整的项目部分生成书面《补充协议》（原旅游协议之有效附件），由您以短信、微信等方式先行确认电子版补充协议内容，在您行程结束将车辆归还门店时签署纸质版《补充协议》并支付费用。</p>
						<p style="text-align:justify">&nbsp;</p>
						<p style="text-align:justify"><strong>因自然灾害、政治因素、不可抗力因素等引起的订单取消、人员更改变动、行程修改产生的费用损失悟空自驾游不进行退补。</strong></p>
					</div>
					<!---->
				</div>
				<div data-v-06a02ad2="" id="3" class="change-policy"><span data-v-06a02ad2="" class="slogo"><img data-v-06a02ad2="" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACIAAAAjCAYAAADxG9hnAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAA4ZpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMy1jMDExIDY2LjE0NTY2MSwgMjAxMi8wMi8wNi0xNDo1NjoyNyAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wTU09Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9tbS8iIHhtbG5zOnN0UmVmPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvc1R5cGUvUmVzb3VyY2VSZWYjIiB4bWxuczp4bXA9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC8iIHhtcE1NOk9yaWdpbmFsRG9jdW1lbnRJRD0ieG1wLmRpZDo5MjcxZmY0YS03ZTk0LTRjOWEtOTgwOC03ZDg2M2MyOTRlNGMiIHhtcE1NOkRvY3VtZW50SUQ9InhtcC5kaWQ6RTJFNTUwNDVDOTIwMTFFN0FGNjBBMUQ3NEIyN0FDNEMiIHhtcE1NOkluc3RhbmNlSUQ9InhtcC5paWQ6RTJFNTUwNDRDOTIwMTFFN0FGNjBBMUQ3NEIyN0FDNEMiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENDIDIwMTcgKE1hY2ludG9zaCkiPiA8eG1wTU06RGVyaXZlZEZyb20gc3RSZWY6aW5zdGFuY2VJRD0ieG1wLmlpZDoxY2QxZGY0Mi1kNmFjLTQ5MDgtOGU3Zi04YjlhNWRlYTkxN2QiIHN0UmVmOmRvY3VtZW50SUQ9ImFkb2JlOmRvY2lkOnBob3Rvc2hvcDpmODE2ZTA5Ni1kOGE5LTExN2EtOGY0Zi1iNGVhNjgxNDdhNDgiLz4gPC9yZGY6RGVzY3JpcHRpb24+IDwvcmRmOlJERj4gPC94OnhtcG1ldGE+IDw/eHBhY2tldCBlbmQ9InIiPz72hvhBAAADLklEQVR42uxYS0tbQRQ+N7kmWnzF1ie6aGt1K0pdCCqoVdFdhT52brXFCv6A2v4CCz7wF7R0kYWIUC0ILgSt7VIsWhGNpGpjq5hEE6+3Z25O7PVmxkzUtC564COZuXfOfJk5zyi6rsN1EBtcE7k2RNTol285OTLvpyBaEA8Q9xF3ENn07BdiFfEJMYX4gAjHU3h3d9f4VKI2EocI26wX0Y3IlfyRPxBDiAEieS4Rmat5glhCvEyABJNbtGaJdFzYRuyIYcRbRP4lrj+fdAyTzoSIsAXvEV1XaI9dpNOeCBF2rw+T4BxM5xtZIo8Rz5Poqc9ojzNi9RrmHV8ReeaXnBUV4OrrAyU1FUDTEohSNtDDYdgbHYXgzIz5yTainHlT1GtUy9JeKwkmRW432LKzLx6sCgrA09honsqjvfp5V+OgOBH7wzIzL3UXJwcHvOlu2jOGSLMoTggUSYt+fMybzqU9uUT+trTE5BqUSpmV4dVV0INBUEtKjCvTfD7QvF7DhtTiYjgJBEDb2gLF6QS1qCieukreiZTJEPE0NMBGbS34x8cjmW5wEDbq6uB7Z6cx9o+NwXpVldU4RXKPRyRLygPwJBSHA5T09EgIdrmMsVpYGIkHzMXZvFw2z+LFkSOzFZvl9traqeewa9ExlrANFVUFPRQywL6zOWPs9yNjFWwZGcaawPQ0eDs6eKpDGEecVhvZk8muSloaKOYxOx2HQziOI3u8q1n+B16zzCPyWXgKdO8XFcUmrDa+8Ih8FCqy2y9FxE6GzJEpXhyZRPgQN61vb7a1QWpNTcQgmQ1gjLjR2gqOsliPP5ybg8OFhbNz8/OiUnJSlH37qbyLf9xIqmR2FlJKS/8Eu5UVWK+ulj2oV2w/Uc06QClaKn94mpogtLh4mo8229tlSezQXsLCiFXbPdJZdX8fNurrwT8xYcQJbWdHdmmPtbIXtRODVEklQ4bMFWC8duIFwp0EEm7SLV08s3rwEWLkCkmMkE4t0b5GoyrqqawBC2SbdHSLSMh2eu+o0H1NcUZWfLSmnHScHw4ke19rE95sasJd9OynqQmfJIQSbsL//z9C8luAAQA3A+8h5ANJFwAAAABJRU5ErkJggg==" width="34" height="34" alt=""></span>
					<p data-v-06a02ad2="" class="red-nav" style="margin-bottom: 10px;">
						<a data-v-06a02ad2="" class="red-title">用户点评(0)</a>
					</p>
					<div data-v-06a02ad2="">
						<div data-v-06a02ad2="" class="my-comment-i">
							<div data-v-06a02ad2="" class="no-comment">目前还没有评论哦~</div>
							<!---->
						</div>
					</div>
				</div>
			</div>
		</div>
		<div data-v-06a02ad2="" class="wkxm">
			<div data-v-06a02ad2="" class="top">
				<a data-v-06a02ad2="" href="javascript:void(0)" class="customService"><img data-v-06a02ad2="" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACoAAAB9CAMAAADjlgEmAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAyRpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMy1jMDExIDY2LjE0NTY2MSwgMjAxMi8wMi8wNi0xNDo1NjoyNyAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RSZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENTNiAoTWFjaW50b3NoKSIgeG1wTU06SW5zdGFuY2VJRD0ieG1wLmlpZDo3Qzc3OTY3MzU4OEIxMUU3OUMxNUJEMTU4QzhEMDlDMSIgeG1wTU06RG9jdW1lbnRJRD0ieG1wLmRpZDo3Qzc3OTY3NDU4OEIxMUU3OUMxNUJEMTU4QzhEMDlDMSI+IDx4bXBNTTpEZXJpdmVkRnJvbSBzdFJlZjppbnN0YW5jZUlEPSJ4bXAuaWlkOjdDNzc5NjcxNTg4QjExRTc5QzE1QkQxNThDOEQwOUMxIiBzdFJlZjpkb2N1bWVudElEPSJ4bXAuZGlkOjdDNzc5NjcyNTg4QjExRTc5QzE1QkQxNThDOEQwOUMxIi8+IDwvcmRmOkRlc2NyaXB0aW9uPiA8L3JkZjpSREY+IDwveDp4bXBtZXRhPiA8P3hwYWNrZXQgZW5kPSJyIj8+gMIUpgAAAaFQTFRF0gAA////9NTU6aOj3mdn77y81SQk99/f+urq/PX12D8/5IeH21RU8cjI4Xh47LCw5paW++np0gEB+uPj3T092Sgo0wcH0wYG1hgY3kZG++jo42Ji2Scn2CMj/fb23Tw88ri4+uTk4VZW8Kqq++vr6YGB9L6+1hUV42Fh+d/f2zMz1AwM+dzc++bm2zEx3Dg453h41hcX9cjI/O7u/vn53kJC+NbW7JWV8Kys1Q8P99PT1AkJ+NjY99LS/vv72zIy76Oj3T4+99TU7p+f+dvb1xsb1RER+d7e0wMD1xwc4ltb7p6e6YOD9cbG6YWF2Skp7Zqa6H9/6H193Ds730tL/fHx1hkZ1A0N5GRk7Zub8Kur4VVV646O//7+/fLy5nBw8bGx4FBQ7ZiY7qCg/vf3/O3t98/P76Ki5Wpq//399MPD4lpa42Bg76en5nJy4E1N7p2d9s7O5Gho1x0d4E5O99HR4VRU1A4O8Kmp5nR04FJS9cXF9srK+d3d7JOT6YCA30hI8a+v3UBA+NfX1RAQ++rq0gIC8bCw9MDA6YKC87u7TRkOggAAAupJREFUeNrslmWTGzEMhi3jcpKDHvau12MqMzMzMzMzM7e/uvIGLunMWtuZfulM9GE3yjyjlexXlhlrWtP+sNPfV029nfo8cp4Ct26aHuzpXb3z4qUt3Uud5GxY0YKv9lF8HIS5LvToKcYOPyyVSq17GOuB0WzyxhXG3sGBiW2PH40PfWHXLmSjex+wlzBR/r1oiH0YyM609QibSRB2sa9dWeg4TG6crnln3jCALLQExw/9qnlP1rb0ZaLb4fmCHzXv2dOWdZkoQOe8czXv8ogjgeEXkwzeV5wdcJ/tvu7ahFcwlr5XXr1FyqWte/B2f9fPgeW0stYvBugDgGGSnAMn5x/rXNg7VlrS7yaXnd1f/bkB2lzkXZg142yGjmyyvTHQzY+ORFsb3Dv132i0b7CvwW+BE1lox5pPjX+8vtc8lgiLuMqDBVLKAnCZWuBEBdSZcKJSCAOeKJskUtA+JMzRq3UWA2f50CL4AX4bExXuVFkIGLRalhtVFsV1AsAHsfwiTTVfWX+FhtWyQhLl1bI4iUayYlGzdShphRqVyJkKGKlsH1EO0geqCQQUmUWZ9AuaCGoCrkx5YyWh15gDBx9i7EJNSduqREGxKJRbWUHkQRBXlFVwl1UAEXDjoWoV0YYJgMEGkKAKYDSB+vZwC/DzhtqDQMsw0NgwsfYFkaqNB7haJiTKUmCUAC9ktsHcGQTVhxY8bPZODtOJyEPZswo1U7Rvt1xk/dySBKpkKEIb05CoSHzwOBrV3Vp4qCxuj2OyNOMrFFZigJ7eWgfpSI6pWcQSjgn4SnkWdwcOuefHdmorz1PULMg9X9KTrW7U/buo5StGDjSqLFJzwNFmRR0WeGrEcqV3QZ6nt3DrpUWtyEnUFC0aYVBf50rA5pxQtxxPWTQtK8yVK/ewc4ieBd9YNPZwLORbLAE44gi1gigvFrZsQt1fy2iAs6tIXZ9jz6J4blGTOzIShysHFeuIGMdMN7ya9t/abwEGAGUOM3jfMxrnAAAAAElFTkSuQmCC" alt=""></a>
			</div>
			<div data-v-06a02ad2="" class="bottom">
				<div data-v-06a02ad2="" class="wkxm-client">
					<a data-v-06a02ad2="" href="javascript:void(0);"><img data-v-06a02ad2="" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACoAAAA5CAMAAAB3X0lcAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAyRpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMy1jMDExIDY2LjE0NTY2MSwgMjAxMi8wMi8wNi0xNDo1NjoyNyAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RSZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENTNiAoTWFjaW50b3NoKSIgeG1wTU06SW5zdGFuY2VJRD0ieG1wLmlpZDo0RDkwNDUwMjU4QUQxMUU3OUMxNUJEMTU4QzhEMDlDMSIgeG1wTU06RG9jdW1lbnRJRD0ieG1wLmRpZDo0RDkwNDUwMzU4QUQxMUU3OUMxNUJEMTU4QzhEMDlDMSI+IDx4bXBNTTpEZXJpdmVkRnJvbSBzdFJlZjppbnN0YW5jZUlEPSJ4bXAuaWlkOjdDNzc5Njc1NTg4QjExRTc5QzE1QkQxNThDOEQwOUMxIiBzdFJlZjpkb2N1bWVudElEPSJ4bXAuZGlkOjdDNzc5Njc2NTg4QjExRTc5QzE1QkQxNThDOEQwOUMxIi8+IDwvcmRmOkRlc2NyaXB0aW9uPiA8L3JkZjpSREY+IDwveDp4bXBtZXRhPiA8P3hwYWNrZXQgZW5kPSJyIj8+n3dbDgAAAMBQTFRF9ZkA/////vDZ/ezQ+cZx+s6F/vLf+cJm/e/X/e3R+b9f+cdy/e/W/N2p/N+w+LpT+sh1/Nyn/e/Y/ebB+LhN/vXm/e3S+9ec/vHb/erL/N2r+b9e9qUd/vbo+sdz+cNo9qcj/OW9/e7U96st/e7V/vXl/vTk/OW++LVH96ss/efD+LpS96or+LxY/OK2+cFl96419682/OO6/vXn+LNC/ejG/vDa97A6/vbp//78/enJ/vPg/e3T/vju/vPi+s+GXiN3IAAAALhJREFUeNrs1ccOgkAQgGEGEXeXJtXee++9vf9bqUhiCBkkHM3+F8jMdyCbbBAEHi9VTZN4lFzbRFXVLqXUs8wqQm14pdwG09Vy1AI/HaH39/J8qmm6Xt586B6hIhQcozFjdUlSmGFMHA0oSll4kIcMSpXw4BFDpfAgyymnf0IrSS+MBRrLfVuwOUoJRPpJdzQptd+fHU/lYF88DI/Bq4ieQKQxQrclV/br9f3HxV13+P+Bl66nAAMAIT4LhxvhtooAAAAASUVORK5CYII=" alt=""></a>
					<div data-v-06a02ad2="" class="appc"><img data-v-06a02ad2="" src="${base}/img/appc.fd9965f.jpg" alt=""></div>
				</div>
				<div data-v-06a02ad2="" class="wkxm-wx">
					<a data-v-06a02ad2="" href="javascript:void(0)"><img data-v-06a02ad2="" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACoAAABACAMAAABbchVVAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAyRpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMy1jMDExIDY2LjE0NTY2MSwgMjAxMi8wMi8wNi0xNDo1NjoyNyAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RSZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENTNiAoTWFjaW50b3NoKSIgeG1wTU06SW5zdGFuY2VJRD0ieG1wLmlpZDo0RDkwNDUwNjU4QUQxMUU3OUMxNUJEMTU4QzhEMDlDMSIgeG1wTU06RG9jdW1lbnRJRD0ieG1wLmRpZDo0RDkwNDUwNzU4QUQxMUU3OUMxNUJEMTU4QzhEMDlDMSI+IDx4bXBNTTpEZXJpdmVkRnJvbSBzdFJlZjppbnN0YW5jZUlEPSJ4bXAuaWlkOjREOTA0NTA0NThBRDExRTc5QzE1QkQxNThDOEQwOUMxIiBzdFJlZjpkb2N1bWVudElEPSJ4bXAuZGlkOjREOTA0NTA1NThBRDExRTc5QzE1QkQxNThDOEQwOUMxIi8+IDwvcmRmOkRlc2NyaXB0aW9uPiA8L3JkZjpSREY+IDwveDp4bXBtZXRhPiA8P3hwYWNrZXQgZW5kPSJyIj8+bgRg0gAAAVlQTFRF9ZkA////+9qj/enH//v0+sdz/vPi/OK3+cVt/e/X+cFk///++9id9qIW+b5c/evM/vfq/evN/vnx9qck+sd0/N+v+syA/vLf//369Z0J/vXm+cNp/N2r+LNC96st+s2C/vXn+LNA9682+LVG9ZwI+cdy/OG0/vHc+tGM9683/vju+LxY97E8/e7V/efC/OCx97I/960y+LpS+9WW+LRD/OO6+cVu+sh19ZwH9Z0L96419ZsG//78/OO5960x//35/vbp9p4N/vnw+9mg/e/W/Nyo+9mf/e3T+sl5+LZJ/N+w+cNo+LlP+sh2+LdK+LhO/N6t9p8P+LtW/vHd/vHb+b9e/vTk//v2/N+u+9WX9ZsF/vLe/vry/N2q+LNB/N2p+LxX/OCy96ko97E9/efD960z//rz/vPh+LhN+s6E+9ie+9ea/OW/+cZw/vDa/ezP+sl4/OO4/e3SwCUzWwAAAUVJREFUeNpiYBgFo2AU0B74ZUbw56Uw+SoRUsilywgD7Mr4FEqKMiIDDTxKixhRQTxOlUxAWSlVERYglSZmpgCkxHCo1AQZxMHAYAukshkYCkDcJOxK3UBygnEmIOPE/ZOlGBnDBLmwK3VBdWi0CCtrrrw21kCTQFHJoaPKDxbh9JDEUMqGpNBe0ZMFzkmXRVcqg6Q0lA/FCkU0pcoIqYAMICHA4w4kmZ2dGBlteNHUqsGVJoBskGcwBJK8DJFA0hhNaZQ6VCWbNzfIP6zsQNLVHOSHYHTXBuZwg5XqS6PFMGM4ZoAJgSX0MJRqYaiUY2T0inVgZOETQlPKjK7SOqsQGIQWwnaWpmhKfdCVqsjBWKmoKnnwpXIjZJWi+LOOATNcJRPBDBnElC8QI57IxBhCTPZVcQQSVmrCowXZKBgFgwYABBgAs74dx7Hp7BUAAAAASUVORK5CYII=" alt=""></a>
					<div data-v-06a02ad2="" class="wxc"><img data-v-06a02ad2="" src="${base}/img/wxc.4886e67.jpg" alt=""></div>
				</div>
			</div>
			<!---->
		</div> <i data-v-06a02ad2="" class="extra-fixed" style="display: none;"></i>
		<div data-v-06a02ad2="" class="travel1-days travel1-days-absolute" style="top: 1162.99px; left: -58px; margin-left: 0px; display: block;">
			<div data-v-06a02ad2="" class="actived">第1天</div>
			<div data-v-06a02ad2="" class="">第2天</div>
			<div data-v-06a02ad2="" class="">第3天</div>
		</div>
		<!---->
		</div>
		<div class="reuse_bottom">
			<div class="bottom-main">
				<div class="bottom-ul">
					<ul>
						<li>服务协议</li>
						<li>
							<a href="https://www.wktrip.com/reuse_left/select_travel_agreement" class="">旅游协议</a>
						</li>
						<li>
							<a href="https://www.wktrip.com/reuse_left/car_agreement" class="">车辆服务协议</a>
						</li>
						<li>
							<a href="https://www.wktrip.com/reuse_left/user_agreement" class="">用户服务协议</a>
						</li>
					</ul>
					<ul>
						<li>帮助中心</li>
						<li>
							<a href="https://www.wktrip.com/reuse_left/about_five" class="">保险条款</a>
						</li>
						<li>
							<a href="https://www.wktrip.com/reuse_left/about_six" class="">人工服务</a>
						</li>
						<li>
							<a href="https://www.wktrip.com/reuse_left/about_sever" class="">常见问题</a>
						</li>
					</ul>
					<ul>
						<li>关于我们</li>
						<li>
							<a href="https://www.wktrip.com/about_jxdz" class="">匠心打造</a>
						</li>
						<li>
							<a href="https://www.wktrip.com/reuse_left/about_two" class="">媒体报道</a>
						</li>
						<li>
							<a href="https://www.wktrip.com/reuse_left/about_one" class="">悟空故事</a>
						</li>
						<li>
							<a href="https://www.wktrip.com/reuse_left/about_three" class="">联系我们</a>
						</li>
						<li>
							<a href="https://www.wktrip.com/reuse_left/about_four" class="">加入我们</a>
						</li>
					</ul>
					<ul>
						<li>经营资质</li>
						<li>
							<a href="https://www.wktrip.com/reuse_left/business_license" class="">营业执照</a>
						</li>
						<li>
							<a href="https://www.wktrip.com/reuse_left/business_license2" class="">经营许可证</a>
						</li>
					</ul>
				</div>
				<div class="code">
					<div>
						<p>订阅号</p> <img src="../img/wxcode.cc79ece.jpg" alt=""></div>
					<div>
						<p>APP下载</p> <img src="../img/appcode.e8d3d31.png" alt=""></div>
				</div>
				<div class="footer">
					<p>北京悟空国际旅行社有限公司</p>
					<p>地址：北京市东城区东直门外大街39号院航空服务楼2#B517&nbsp;电话：400-0515-507</p>
					<p>苏ICP备17014043号-2　｜　ICP证苏B2-20170199</p>
				</div>
			</div>
		</div>
		</div>
		<!--<script type="text/javascript" src="js/manifest.fb5239f97ae874448f44.js.下载"></script>-->
		<script type="text/javascript" src="../js/vendor.434b2f13fc4d603f30a3.js"></script>
		<script type="text/javascript" src="../js/app.6d0a0c8dac82bcb8212b.js"></script>
	</body>

</html>