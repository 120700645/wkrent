<!DOCTYPE html>
<!-- saved from url=(0027)https://www.wktrip.com/self -->
<html>

	<head>
        <#assign base = rc.contextPath/>
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
		<script type="text/javascript" charset="utf-8" async="" src="${base}/js/0.f6e92aef6c71e3f85cb8.js"></script>
		<style type="text/css">
			.slider {
				margin-top: 55px
			}
			
			.carousel-indicators .active {
				background: red;
				border: #d00000
			}
			
			.carousel-indicators {
				bottom: 0
			}
		</style>
		<style type="text/css">
			.test {
				margin-right: 38px
			}
			
			.tags_1 {
				background: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAJkAAAAfCAYAAAD0tW9/AAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAA4BpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMy1jMDExIDY2LjE0NTY2MSwgMjAxMi8wMi8wNi0xNDo1NjoyNyAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wTU09Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9tbS8iIHhtbG5zOnN0UmVmPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvc1R5cGUvUmVzb3VyY2VSZWYjIiB4bWxuczp4bXA9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC8iIHhtcE1NOk9yaWdpbmFsRG9jdW1lbnRJRD0ieG1wLmRpZDoyZjM2ZDg1OS1mZTM1LTRkOWItYjMyOS1mNWVkYzEwYTMxY2UiIHhtcE1NOkRvY3VtZW50SUQ9InhtcC5kaWQ6M0U2REVCQzE1OTY0MTFFNzgwQjRBQ0U3M0QyNzBCNjciIHhtcE1NOkluc3RhbmNlSUQ9InhtcC5paWQ6M0U2REVCQzA1OTY0MTFFNzgwQjRBQ0U3M0QyNzBCNjciIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENTNiAoV2luZG93cykiPiA8eG1wTU06RGVyaXZlZEZyb20gc3RSZWY6aW5zdGFuY2VJRD0ieG1wLmlpZDo5ODUzNzU0OS0zODYwLTQ3ZGQtYTZiNi0wYjE3NjViNmMwOTEiIHN0UmVmOmRvY3VtZW50SUQ9ImFkb2JlOmRvY2lkOnBob3Rvc2hvcDpjYmVjNjY5Yy03ZmQyLTExN2EtOWQ4NS1hMWM3NzcyMTM2N2MiLz4gPC9yZGY6RGVzY3JpcHRpb24+IDwvcmRmOlJERj4gPC94OnhtcG1ldGE+IDw/eHBhY2tldCBlbmQ9InIiPz7/ZnAbAAABSElEQVR42uyar0tDYQBF38RsMVlNZsHgH2BaEddWREUWTNpson/EYLhomRYNYlEssmEWBJNFRFjQafPH8172kv0mz4HD2sLl8L099tXKsiwAkky+rzeG+pxmCkgxITfkF1NAMrJT2ZTfzAGpyMyxXJX8QINYZOZI7jEJJCMzB7LHLJCMzI/LTfnINJCKzIzkFtNAMjJzLi+YB5KRmX3mgXRkfXnJRJCMzLSZCNKRnckXZoJkZJ/VSwBALDJzx0yQjqzPTJCO7Fa+MhUkI/MVoBOmgmRkpstUkI5sIK+ZC5KRmd2CS40Qjsyn2SGTQTIysyMfmA2SkX3IZfnGdJCKzNzLejG+3AgQiczcyCX5zISQisz4n4AFecWMkIrMPFUnWksOmRMSkZkf2ZGzcpu3T/hLbbS2kvje+eqEW5RzckZOMff/5FeAAQA5SzQF4qYVOgAAAABJRU5ErkJggg==) no-repeat;
				background-position: 47px
			}
			
			.tags_1,
			.tags_2 {
				width: 153px;
				height: 31px
			}
			
			.tags_2 {
				background: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAJkAAAAeCAYAAAA/6bzaAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAA4BpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMy1jMDExIDY2LjE0NTY2MSwgMjAxMi8wMi8wNi0xNDo1NjoyNyAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wTU09Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9tbS8iIHhtbG5zOnN0UmVmPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvc1R5cGUvUmVzb3VyY2VSZWYjIiB4bWxuczp4bXA9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC8iIHhtcE1NOk9yaWdpbmFsRG9jdW1lbnRJRD0ieG1wLmRpZDoyZjM2ZDg1OS1mZTM1LTRkOWItYjMyOS1mNWVkYzEwYTMxY2UiIHhtcE1NOkRvY3VtZW50SUQ9InhtcC5kaWQ6NjEzRTczMkQ1OTY4MTFFN0E3OURFODcwQzk0QUEyRTIiIHhtcE1NOkluc3RhbmNlSUQ9InhtcC5paWQ6NjEzRTczMkM1OTY4MTFFN0E3OURFODcwQzk0QUEyRTIiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENTNiAoV2luZG93cykiPiA8eG1wTU06RGVyaXZlZEZyb20gc3RSZWY6aW5zdGFuY2VJRD0ieG1wLmlpZDo5ODUzNzU0OS0zODYwLTQ3ZGQtYTZiNi0wYjE3NjViNmMwOTEiIHN0UmVmOmRvY3VtZW50SUQ9ImFkb2JlOmRvY2lkOnBob3Rvc2hvcDpjYmVjNjY5Yy03ZmQyLTExN2EtOWQ4NS1hMWM3NzcyMTM2N2MiLz4gPC9yZGY6RGVzY3JpcHRpb24+IDwvcmRmOlJERj4gPC94OnhtcG1ldGE+IDw/eHBhY2tldCBlbmQ9InIiPz7tHJseAAABIklEQVR42uyasUqCUQBGbz2ID9FYk+Aj9AgFPUG4JW5SU2OTi4i1NDs4OSYORgaCYlNt4qSh6PfR1v5t58D3AofD/8O992T1UB2UUqoFIMSpdoYGSEd2iwZIR/akdVEBycjMjfaFDkhGttautQNKIBWZ6WvPKIFkZKah7dECycg+tQ5aIBmZeUQLpCMbaRPUQDIyw7kZxCN7RQ2kI5tqC/RAMjLzjh5IRzZDD6QjG6EH0pEN0QPpyPwq4wNFkIzM9FAE6cja2g5NkIzMv8wXNEEyMnPH1wzSkfm87B5VkIzMNLUxuiAZ2Ua71H5QBqnIzFyrad9og1Rkxpfm59ob6iAVmfEToAutrq1QCInIzK/W0iraVfl75LjUtiiFf2yPAgwA7zUtPacDfGEAAAAASUVORK5CYII=) no-repeat;
				background-position: 47px
			}
			
			.tags_3 {
				background: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAJkAAAAeCAYAAAA/6bzaAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAA4BpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMy1jMDExIDY2LjE0NTY2MSwgMjAxMi8wMi8wNi0xNDo1NjoyNyAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wTU09Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9tbS8iIHhtbG5zOnN0UmVmPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvc1R5cGUvUmVzb3VyY2VSZWYjIiB4bWxuczp4bXA9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC8iIHhtcE1NOk9yaWdpbmFsRG9jdW1lbnRJRD0ieG1wLmRpZDoyZjM2ZDg1OS1mZTM1LTRkOWItYjMyOS1mNWVkYzEwYTMxY2UiIHhtcE1NOkRvY3VtZW50SUQ9InhtcC5kaWQ6RTU5REI1Njg1OTY5MTFFN0I2ODBCODRERTgzNkQ3RjAiIHhtcE1NOkluc3RhbmNlSUQ9InhtcC5paWQ6RTU5REI1Njc1OTY5MTFFN0I2ODBCODRERTgzNkQ3RjAiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENTNiAoV2luZG93cykiPiA8eG1wTU06RGVyaXZlZEZyb20gc3RSZWY6aW5zdGFuY2VJRD0ieG1wLmlpZDo5ODUzNzU0OS0zODYwLTQ3ZGQtYTZiNi0wYjE3NjViNmMwOTEiIHN0UmVmOmRvY3VtZW50SUQ9ImFkb2JlOmRvY2lkOnBob3Rvc2hvcDpjYmVjNjY5Yy03ZmQyLTExN2EtOWQ4NS1hMWM3NzcyMTM2N2MiLz4gPC9yZGY6RGVzY3JpcHRpb24+IDwvcmRmOlJERj4gPC94OnhtcG1ldGE+IDw/eHBhY2tldCBlbmQ9InIiPz6WMg2OAAABKklEQVR42uyboU5CcRxGf0iS6nNQeATfw84YDhwPocOMJoIWGIFkNVhIbm5YGIlCYDoTc1rE7yeXSGH7TOds36BcwtkZ979dKC1eTh4j4jQATBxpNTSAO7IWGsAd2b12iwpwRpZcaFN0gDOyb+2seAWwRBbFN9kVSsAZWdLVlmgBZ2Sf2jVawBlZ0tfWqAFnZBnYEDXgjCy5Qw24I5toK/SAM7If7QE94Iws4QkA2CObowfckT2jB9yRvWuvKAJnZMHhH/4jsgGKwB1Z3i4naAJnZMklmsAdWZ7LnlAFzsiSuvaFLnBGNtM66AJnZMmN1kMZOCNLzgkN3JFttKbW4IwGrsh25J+Bq9o4tj8LAthLuV2vHHrthzaK7VOBN62k5YcdF+8B/vgVYADqhytAfH1OOgAAAABJRU5ErkJggg==) no-repeat;
				background-position: 47px
			}
			
			.tags_3,
			.tags_4 {
				width: 153px;
				height: 31px
			}
			
			.tags_4 {
				background: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAJkAAAAeCAYAAAA/6bzaAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAA4BpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMy1jMDExIDY2LjE0NTY2MSwgMjAxMi8wMi8wNi0xNDo1NjoyNyAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wTU09Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9tbS8iIHhtbG5zOnN0UmVmPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvc1R5cGUvUmVzb3VyY2VSZWYjIiB4bWxuczp4bXA9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC8iIHhtcE1NOk9yaWdpbmFsRG9jdW1lbnRJRD0ieG1wLmRpZDoyZjM2ZDg1OS1mZTM1LTRkOWItYjMyOS1mNWVkYzEwYTMxY2UiIHhtcE1NOkRvY3VtZW50SUQ9InhtcC5kaWQ6NDI3MjMwQzA1OTZBMTFFN0EyMkRCMzJBRkZEMjY3N0QiIHhtcE1NOkluc3RhbmNlSUQ9InhtcC5paWQ6NDI3MjMwQkY1OTZBMTFFN0EyMkRCMzJBRkZEMjY3N0QiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENTNiAoV2luZG93cykiPiA8eG1wTU06RGVyaXZlZEZyb20gc3RSZWY6aW5zdGFuY2VJRD0ieG1wLmlpZDo5ODUzNzU0OS0zODYwLTQ3ZGQtYTZiNi0wYjE3NjViNmMwOTEiIHN0UmVmOmRvY3VtZW50SUQ9ImFkb2JlOmRvY2lkOnBob3Rvc2hvcDpjYmVjNjY5Yy03ZmQyLTExN2EtOWQ4NS1hMWM3NzcyMTM2N2MiLz4gPC9yZGY6RGVzY3JpcHRpb24+IDwvcmRmOlJERj4gPC94OnhtcG1ldGE+IDw/eHBhY2tldCBlbmQ9InIiPz4KD0P9AAABLUlEQVR42uybsUqCYRhGv7yOLqJFHB29BQnBe9C14V8anRSXKGhzEB1cnNoctC1qsUDROQgiSdTyeVEX92c7B54bOJzh+z7+/+L+NT9MKZUSgImcVkADuCOrowHckT1oLVSAM7Kgpo3QAc7INlpF+0YJuCIL5toNSsAZWdDW3tACzsi2WoYWcEYW9LQFasAZ2Z92hxpwRhY8av/oAWdkS22MHnBGFvTRA+7IXtAD7sim6AF3ZDPtE0XgjCxul08oAmdkwQBF4I4sXv/5MgOskf2kw8MsgC2yoKGtUQXOyOZaE1XgjCzItA90gTOyOJtdayuUgSuy4Fmraju0gSuyoKuVtV/UgSuyU2hFzmjgjCyYaFfp8HfTFxrBEdnpMnCrXR7Pah3tncsBnLMXYADf8jAcY1dGaQAAAABJRU5ErkJggg==) no-repeat;
				background-position: 47px
			}
			
			.tags_5 {
				background: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAJkAAAAeCAYAAAA/6bzaAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAA4BpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMy1jMDExIDY2LjE0NTY2MSwgMjAxMi8wMi8wNi0xNDo1NjoyNyAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wTU09Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9tbS8iIHhtbG5zOnN0UmVmPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvc1R5cGUvUmVzb3VyY2VSZWYjIiB4bWxuczp4bXA9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC8iIHhtcE1NOk9yaWdpbmFsRG9jdW1lbnRJRD0ieG1wLmRpZDoyZjM2ZDg1OS1mZTM1LTRkOWItYjMyOS1mNWVkYzEwYTMxY2UiIHhtcE1NOkRvY3VtZW50SUQ9InhtcC5kaWQ6NjAwQjM5MTI1OTZBMTFFNzgzM0NCOTA4RDUyRkNCQkIiIHhtcE1NOkluc3RhbmNlSUQ9InhtcC5paWQ6NjAwQjM5MTE1OTZBMTFFNzgzM0NCOTA4RDUyRkNCQkIiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENTNiAoV2luZG93cykiPiA8eG1wTU06RGVyaXZlZEZyb20gc3RSZWY6aW5zdGFuY2VJRD0ieG1wLmlpZDo5ODUzNzU0OS0zODYwLTQ3ZGQtYTZiNi0wYjE3NjViNmMwOTEiIHN0UmVmOmRvY3VtZW50SUQ9ImFkb2JlOmRvY2lkOnBob3Rvc2hvcDpjYmVjNjY5Yy03ZmQyLTExN2EtOWQ4NS1hMWM3NzcyMTM2N2MiLz4gPC9yZGY6RGVzY3JpcHRpb24+IDwvcmRmOlJERj4gPC94OnhtcG1ldGE+IDw/eHBhY2tldCBlbmQ9InIiPz5kfr7dAAABMUlEQVR42uybIWtCYRhGP8d+gX9iYcWybrCZh03BvChLgs2gbWlhg7GVJZO4YDIIwtQyZhBM/gDjxG3o8zJXV9xT5Bx44r3hcPjgg3szl8NBP6VUSAAmTrQLNIA7shoawB3ZnXaPCnBGFlxp7+gAZ2RrraxtUAKuyIKpdoMScEYWNLUVWsAZWQTWRgs4IwtutQ/UgDOyOM06qAFnZMEDasAd2YALALgj+9Re0APOyII39IA7sjl6wB3ZK3rAHdlSW6AInJEFXRSBO7JnFIE7spE2RhM4IwsaaAJ3ZL39iQZgiyyIz7O/0AXOyCZaHV3gjCxoaY8oA2dkW62qPaENXJEF31pFu04/X2oA/Htkvyda/AeQ2988t2iEvzg94NmZVtTOtZKW18607IHvhSNjJ8AAjJAranSKw2cAAAAASUVORK5CYII=) no-repeat;
				background-position: 47px
			}
			
			.tags_5,
			.tags_6 {
				width: 153px;
				height: 31px
			}
			
			.tags_6 {
				background: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAJsAAAAeCAYAAAA7HGznAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAA4BpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMy1jMDExIDY2LjE0NTY2MSwgMjAxMi8wMi8wNi0xNDo1NjoyNyAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wTU09Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9tbS8iIHhtbG5zOnN0UmVmPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvc1R5cGUvUmVzb3VyY2VSZWYjIiB4bWxuczp4bXA9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC8iIHhtcE1NOk9yaWdpbmFsRG9jdW1lbnRJRD0ieG1wLmRpZDoyZjM2ZDg1OS1mZTM1LTRkOWItYjMyOS1mNWVkYzEwYTMxY2UiIHhtcE1NOkRvY3VtZW50SUQ9InhtcC5kaWQ6QzI2MkM0MDM1OTZBMTFFN0JFOEFEMEFCMkNEMUI0NTkiIHhtcE1NOkluc3RhbmNlSUQ9InhtcC5paWQ6QzI2MkM0MDI1OTZBMTFFN0JFOEFEMEFCMkNEMUI0NTkiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENTNiAoV2luZG93cykiPiA8eG1wTU06RGVyaXZlZEZyb20gc3RSZWY6aW5zdGFuY2VJRD0ieG1wLmlpZDo5ODUzNzU0OS0zODYwLTQ3ZGQtYTZiNi0wYjE3NjViNmMwOTEiIHN0UmVmOmRvY3VtZW50SUQ9ImFkb2JlOmRvY2lkOnBob3Rvc2hvcDpjYmVjNjY5Yy03ZmQyLTExN2EtOWQ4NS1hMWM3NzcyMTM2N2MiLz4gPC9yZGY6RGVzY3JpcHRpb24+IDwvcmRmOlJERj4gPC94OnhtcG1ldGE+IDw/eHBhY2tldCBlbmQ9InIiPz5ElvZbAAABQElEQVR42uycLUtDYQBG3+tP8Af4DwTDmslgXVXLZcFq9ReYbCZxWBSDQxG0ahIMCoLFujEEwwwGTX4/D95q8z7pHDhlYeHhsHfvuKyq+8PTUkq3ALTMlJxnBkjFtizfmAISsV3IFfnJHNB2bOZErjEHJGIz23KLSSARm1mXd8wCidh8UVjl+xskYjO3HKeQis1syFfmgURsz3KHeSARW2mO0i8mgkRsD/KciSARm9lnIkjFdsNEkIptxK0UUrH5x90rZoJEbOaMmSAV23HheTcIxTaRh0wFidjMpvxgLkjEdi93mQsSsRk/6zZmMkjE9iKXuCxAIjZzLevCw5UQiM0MZI9POEjEZg7konxkQmg7NnMp5+Se/GZKaDM289QcqR15JN+ZFP6iqvvD/3y/6fL7JzULclbONK9VTA0/AgwAMosyHbXaPpwAAAAASUVORK5CYII=) no-repeat;
				background-position: 47px
			}
			
			.tags_7 {
				background: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAJgAAAAeCAYAAADQK9fkAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAA4BpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMy1jMDExIDY2LjE0NTY2MSwgMjAxMi8wMi8wNi0xNDo1NjoyNyAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wTU09Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9tbS8iIHhtbG5zOnN0UmVmPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvc1R5cGUvUmVzb3VyY2VSZWYjIiB4bWxuczp4bXA9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC8iIHhtcE1NOk9yaWdpbmFsRG9jdW1lbnRJRD0ieG1wLmRpZDoyZjM2ZDg1OS1mZTM1LTRkOWItYjMyOS1mNWVkYzEwYTMxY2UiIHhtcE1NOkRvY3VtZW50SUQ9InhtcC5kaWQ6RDg1MzYzQjE1OTZBMTFFNzgzMDBGQzM3M0REMDlDRDYiIHhtcE1NOkluc3RhbmNlSUQ9InhtcC5paWQ6RDg1MzYzQjA1OTZBMTFFNzgzMDBGQzM3M0REMDlDRDYiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENTNiAoV2luZG93cykiPiA8eG1wTU06RGVyaXZlZEZyb20gc3RSZWY6aW5zdGFuY2VJRD0ieG1wLmlpZDo5ODUzNzU0OS0zODYwLTQ3ZGQtYTZiNi0wYjE3NjViNmMwOTEiIHN0UmVmOmRvY3VtZW50SUQ9ImFkb2JlOmRvY2lkOnBob3Rvc2hvcDpjYmVjNjY5Yy03ZmQyLTExN2EtOWQ4NS1hMWM3NzcyMTM2N2MiLz4gPC9yZGY6RGVzY3JpcHRpb24+IDwvcmRmOlJERj4gPC94OnhtcG1ldGE+IDw/eHBhY2tldCBlbmQ9InIiPz7tC4FlAAABM0lEQVR42uyasUpCYRiGv0TwBroHoSsQN6egJfACGlsPQYN4BU0SQTfQKjSoNUS0FrUI4h1YIG5uOlTvhydwcMt3ex54cXJ5eDj85+cc9C5nDxFxEgAGKloTDeAMrEADOAO7065QAa7Akq72hA5wBfajnWlzlIAjsCjjOkcJuAJLBtoILeAK7O889o0acAU24cAPzsCSW9SAM7BH7Qs94Aosz2B99IArsOQePeAMbIwecAa21D5RBK7AklcUgTOwFxSBM7BhcKsPxsBm2jOawBVYcoMmcAaWt/rvqAJXYPkxYlH+Auw9sORNu0YXuAJLOsG9GBgDW2un2hRt4AgsWWgtnmTgCmw7sjyTcQkLew8sWWkXWiM2n1fzhgk7qf7z/x/asVbX2uWT7Ug71GrohV8BBgBanC18g0NGdwAAAABJRU5ErkJggg==) no-repeat;
				background-position: 47px;
				width: 153px;
				height: 31px
			}
			
			.tags_8 {
				background: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAMgAAAAeCAYAAABpP1GsAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAA4BpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMy1jMDExIDY2LjE0NTY2MSwgMjAxMi8wMi8wNi0xNDo1NjoyNyAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wTU09Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9tbS8iIHhtbG5zOnN0UmVmPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvc1R5cGUvUmVzb3VyY2VSZWYjIiB4bWxuczp4bXA9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC8iIHhtcE1NOk9yaWdpbmFsRG9jdW1lbnRJRD0ieG1wLmRpZDoyZjM2ZDg1OS1mZTM1LTRkOWItYjMyOS1mNWVkYzEwYTMxY2UiIHhtcE1NOkRvY3VtZW50SUQ9InhtcC5kaWQ6RUUwRUMxQzc1OTZBMTFFN0E4QzdCOTVGNzgxMEUyRDIiIHhtcE1NOkluc3RhbmNlSUQ9InhtcC5paWQ6RUUwRUMxQzY1OTZBMTFFN0E4QzdCOTVGNzgxMEUyRDIiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENTNiAoV2luZG93cykiPiA8eG1wTU06RGVyaXZlZEZyb20gc3RSZWY6aW5zdGFuY2VJRD0ieG1wLmlpZDo5ODUzNzU0OS0zODYwLTQ3ZGQtYTZiNi0wYjE3NjViNmMwOTEiIHN0UmVmOmRvY3VtZW50SUQ9ImFkb2JlOmRvY2lkOnBob3Rvc2hvcDpjYmVjNjY5Yy03ZmQyLTExN2EtOWQ4NS1hMWM3NzcyMTM2N2MiLz4gPC9yZGY6RGVzY3JpcHRpb24+IDwvcmRmOlJERj4gPC94OnhtcG1ldGE+IDw/eHBhY2tldCBlbmQ9InIiPz4qGnaJAAABZ0lEQVR42uzcvyvEcRzH8Y/DdMP9C8pMKcl0UlLKH3CWS+w2N9lMymQ0yI+YDEbjN1FKkiRmP2JAKXH5ea9P31Pq836Pino+6nmj4X296vriWs6XuhdDCOOqPQD46aKglxHGAdjiQEbVFacA7IEcqz61zzmAdCDRjRpUm5wESAcS1VVFrXAWIB1I9KEm1TqnAdKBfI9kQu1xHjAQ26saU/ecCAzEdqmmOBEYiG9DZZwJDMRX40xgIL4Dtc2pwEB8c5wKDMS3q545FxiI7V0dci4wEN8W5wID8a2qF04GBmK7a44EYCCOWfXE2cBAbNdqhrOBgfgWAr84BANxfYX8H6tOOB8YiO1RDaszTggGYrtVZbXDGcFAbPHR75CaV5+cEwwk9aam1YA64qRgILb4B429qqpOOS0YSCp+zFpTXSH/nq1l9cCZ8V+1/dLPjY+Cs2atIf/mxn7VozpVhyqqEm8B/rKGAAMAjto2kTIgQLkAAAAASUVORK5CYII=) no-repeat;
				width: 200px;
				height: 30px
			}
			
			.h-r-main {
				width: 1200px;
				margin: 0 auto;
				margin-bottom: 50px
			}
			
			.vessel-img {
				position: relative
			}
			
			.tags {
				position: absolute;
				top: -1px;
				right: -23px;
				color: #fff;
				width: 200px;
				height: 30px;
				text-align: right;
				line-height: 30px;
				font-size: 15px
			}
			
			.sh-list {
				margin-top: 50px
			}
			
			.sh-list>h3 {
				display: inline-block;
				border-bottom: 2px solid #d00000;
				margin: 20px 0;
				font-size: 22px;
				padding-bottom: 5px;
				font-weight: 700
			}
			
			.sh-list>p {
				display: inline-block;
				margin-left: 15px;
				font-size: 15px;
				color: #787878
			}
			
			.sh-list>a {
				display: inline-block;
				text-decoration: none;
				color: #d00000;
				float: right;
				margin-top: 30px
			}
			
			p {
				padding: 0;
				margin: 0
			}
			
			.sh-nav-list {
				list-style: none
			}
			
			.sh-nav-list li {
				width: 287px;
				display: inline-block;
				margin-right: 17px;
				transition: all .5s
			}
			
			.sh-nav-list li:hover {
				transition: all .5s;
				box-shadow: 0 0 15px rgba(53, 0, 0, .3)
			}
			
			.sh-nav-list li:hover .vessel-img img {
				transition: all .5s;
				transform: translateZ(0) scale(1.2)
			}
			
			.sh-nav-list>li:nth-child(4) {
				margin-right: 0
			}
			
			.sh-nav-list li a {
				text-decoration: none;
				color: #000
			}
			
			.sh-nav-list li .vessel-img {
				overflow: hidden;
				width: 100%;
				height: 172px
			}
			
			.sh-nav-list li img {
				width: 100%;
				height: 100%;
				transition: all .5s;
				transform: translateZ(0) scale(1)
			}
			
			.sh-nav-list li .name {
				display: inline-block;
				width: 100%;
				height: 41px;
				padding: 0 7px;
				font-size: 15px;
				font-weight: 700;
				margin-top: 15px;
				text-overflow: -o-ellipsis-lastline;
				overflow: hidden;
				text-overflow: ellipsis;
				display: -webkit-box;
				-webkit-line-clamp: 2;
				transition: all .5s
			}
			
			.sh-nav-list li:hover .name {
				transition: all .5s;
				color: #d00000
			}
			
			.sh-nav-list li .message {
				position: relative;
				margin-top: 13px;
				margin-bottom: 8px
			}
			
			.qizi {
				background: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAoAAAAOCAYAAAAWo42rAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAA4BpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMy1jMDExIDY2LjE0NTY2MSwgMjAxMi8wMi8wNi0xNDo1NjoyNyAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wTU09Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9tbS8iIHhtbG5zOnN0UmVmPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvc1R5cGUvUmVzb3VyY2VSZWYjIiB4bWxuczp4bXA9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC8iIHhtcE1NOk9yaWdpbmFsRG9jdW1lbnRJRD0ieG1wLmRpZDoyZjM2ZDg1OS1mZTM1LTRkOWItYjMyOS1mNWVkYzEwYTMxY2UiIHhtcE1NOkRvY3VtZW50SUQ9InhtcC5kaWQ6QTFFRjRDMDY1MjYxMTFFN0IzODk4MTJGNTFCQ0YzNUYiIHhtcE1NOkluc3RhbmNlSUQ9InhtcC5paWQ6QTFFRjRDMDU1MjYxMTFFN0IzODk4MTJGNTFCQ0YzNUYiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENTNiAoV2luZG93cykiPiA8eG1wTU06RGVyaXZlZEZyb20gc3RSZWY6aW5zdGFuY2VJRD0ieG1wLmlpZDpmN2IwZjQzYi05YWFkLTRhYWUtYTk2Mi1lZWY2NjE5NmFkOTUiIHN0UmVmOmRvY3VtZW50SUQ9ImFkb2JlOmRvY2lkOnBob3Rvc2hvcDowYWJiM2M4Ni03ZmI2LTExN2EtOWQ4NS1hMWM3NzcyMTM2N2MiLz4gPC9yZGY6RGVzY3JpcHRpb24+IDwvcmRmOlJERj4gPC94OnhtcG1ldGE+IDw/eHBhY2tldCBlbmQ9InIiPz7if+anAAAAyUlEQVR42mJ8uUN+DwMDw1Egnifm/uAhAw7ACFT4FkgLAfEjIF4KxHOAGu5hU/gESEsjiYE0LgPiuUANF5EVgkxaAsRpQCyMpOE9EG8E4tlAfJIJSPwH4mtA/AvNNkEgToC6fzoLVJADZDoWP/wG4oNAvIsFSfA/moINQDwDiPcD3fqfBaqACerzT0C8HuQuoORRZKNZoPgjEDcC8U6ggnPYwhGkiBWIXwIVrGTAA5hgwcRAADCheQKvQi4gZiZG4UWob/ECgAADAMufN2RjDGJUAAAAAElFTkSuQmCC) no-repeat;
				left: 9px
			}
			
			.qizi,
			.weizhi {
				width: 10px;
				height: 14px;
				display: inline-block;
				position: absolute;
				top: 4px
			}
			
			.weizhi {
				background: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAoAAAAOCAYAAAAWo42rAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAA4BpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMy1jMDExIDY2LjE0NTY2MSwgMjAxMi8wMi8wNi0xNDo1NjoyNyAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wTU09Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9tbS8iIHhtbG5zOnN0UmVmPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvc1R5cGUvUmVzb3VyY2VSZWYjIiB4bWxuczp4bXA9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC8iIHhtcE1NOk9yaWdpbmFsRG9jdW1lbnRJRD0ieG1wLmRpZDoyZjM2ZDg1OS1mZTM1LTRkOWItYjMyOS1mNWVkYzEwYTMxY2UiIHhtcE1NOkRvY3VtZW50SUQ9InhtcC5kaWQ6QjlDMEU3QkY1MjYxMTFFNzhDRjBCNkZDN0RCREEwRUQiIHhtcE1NOkluc3RhbmNlSUQ9InhtcC5paWQ6QjlDMEU3QkU1MjYxMTFFNzhDRjBCNkZDN0RCREEwRUQiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENTNiAoV2luZG93cykiPiA8eG1wTU06RGVyaXZlZEZyb20gc3RSZWY6aW5zdGFuY2VJRD0ieG1wLmlpZDpmN2IwZjQzYi05YWFkLTRhYWUtYTk2Mi1lZWY2NjE5NmFkOTUiIHN0UmVmOmRvY3VtZW50SUQ9ImFkb2JlOmRvY2lkOnBob3Rvc2hvcDowYWJiM2M4Ni03ZmI2LTExN2EtOWQ4NS1hMWM3NzcyMTM2N2MiLz4gPC9yZGY6RGVzY3JpcHRpb24+IDwvcmRmOlJERj4gPC94OnhtcG1ldGE+IDw/eHBhY2tldCBlbmQ9InIiPz7/WJVXAAABCUlEQVR42mL8//8/Awg0HWK1A1LpQGwFxCxAfAaI59fZ/d4EkmcEKQQqSgGy+4CYlwEV/ALiRqDiNsbGgyzmQM4eIOaBSl4E4h9AbA7l/wHiYCYgkYqkaBEQOwGxGxD3APF/qDPSQAptkHR2A615B8SfoArfQeX0QQo5oBwQWxTJfUJAzAZlM4OMvQ/E8lCF3UCPVQLp70Bcj+S5tyCFu4DYASpgDMTboG5jRTJ9P8iU1UD8HEmQBU0RyL3LmIAOvwNkzGDADVYA1ZxggnImA/FpLIpAhrTBfMoA1PEeSBUC8QckRb+BuBwo9xCuEKr4KJCqRVLYBRRbh+xwZDAViA2g4dmCLAEQYADZ9kkxq49CsAAAAABJRU5ErkJggg==) no-repeat;
				left: 82px
			}
			
			.sh-nav-list li .message span {
				font-size: 13px;
				display: inline-block;
				margin-left: 25px;
				color: #9f9f9f
			}
			
			.sh-nav-list li .money {
				padding: 0 5px 15px;
				color: #848484;
				font-size: 13px
			}
			
			.money2 {
				font-size: 25px!important;
				font-weight: 700
			}
			
			.sh-nav-list li .money span {
				color: #d00000;
				font-size: 18px
			}
			
			.mess-border {
				border: 1px solid #e8e5ec;
				margin: 0;
				padding: 0
			}
			
			.wkxm {
				position: fixed;
				right: 0;
				bottom: 32%;
				width: 42px;
				height: 289px;
				background-color: transparent;
				z-index: 100
			}
			
			.wkxm .top {
				height: 125px
			}
			
			.wkxm-client,
			.wkxm .top {
				position: relative;
				width: 42px
			}
			
			.wkxm-client {
				height: 58px;
				border-bottom: 1px solid #fad699
			}
			
			.wkxm-client:hover .appc {
				display: block;
				left: -130px
			}
			
			.appc {
				display: none;
				cursor: pointer;
				width: 130px;
				height: 130px;
				position: absolute;
				top: -10px;
				left: 0
			}
			
			.appc img,
			.wxc img {
				cursor: pointer;
				width: 100%;
				height: 100%
			}
			
			.wkxm-wx {
				position: relative;
				width: 42px;
				height: 64px
			}
			
			.wkxm-wx:hover .wxc {
				display: block;
				left: -130px
			}
			
			.wxc {
				display: none;
				width: 130px;
				height: 130px;
				position: absolute;
				top: -68px;
				left: 0
			}
			
			.jxdz {
				width: 100%;
				height: 354px
			}
			
			.jxdz ul {
				float: left;
				list-style: none
			}
			
			.jxdz ul li {
				float: left;
				width: 300px;
				height: 114px;
				line-height: 114px
			}
			
			.jxdz ul li.jxdz-2 a {
				position: relative;
				right: 22px
			}
			
			.jxdz ul li.jxdz-3 a {
				position: relative;
				left: 22px
			}
			
			.jxdz-left {
				text-align: left
			}
			
			.jxdz-center {
				text-align: center
			}
			
			.jxdz-right {
				text-align: right
			}
			
			.new-user-banner {
				position: fixed;
				z-index: 999999;
				left: 0;
				bottom: 0;
				width: 100%;
				height: 160px;
				background-color: #333;
				filter: alpha(opacity=90);
				-moz-opacity: .9;
				-khtml-opacity: .9;
				opacity: .9
			}
			
			.new-user-banner .cent {
				position: relative;
				margin: 0 auto;
				width: 1200px;
				height: 100%
			}
			
			.wukongimg {
				left: 10px
			}
			
			.wordimg,
			.wukongimg {
				position: absolute;
				bottom: 0
			}
			
			.wordimg {
				left: 0
			}
			
			.now-get {
				cursor: pointer;
				position: absolute;
				right: 0;
				top: 35px;
				width: 98px;
				height: 98px;
				background-color: #fe0048
			}
			
			.now-get p {
				width: 100%;
				text-align: center;
				color: #fff;
				font-size: 32px;
				padding-top: 5px
			}
			
			.close-banner {
				cursor: pointer;
				position: absolute;
				right: -45px;
				top: 17px;
				background: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAYAAABzenr0AAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAyRpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMy1jMDExIDY2LjE0NTY2MSwgMjAxMi8wMi8wNi0xNDo1NjoyNyAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RSZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENTNiAoTWFjaW50b3NoKSIgeG1wTU06SW5zdGFuY2VJRD0ieG1wLmlpZDpEREY0REVEMzZGRjAxMUU3QjUwRDk3NzY2QjM5NzgxNSIgeG1wTU06RG9jdW1lbnRJRD0ieG1wLmRpZDpEREY0REVENDZGRjAxMUU3QjUwRDk3NzY2QjM5NzgxNSI+IDx4bXBNTTpEZXJpdmVkRnJvbSBzdFJlZjppbnN0YW5jZUlEPSJ4bXAuaWlkOjI5RDIyNDcwNkZDQjExRTdCNTBEOTc3NjZCMzk3ODE1IiBzdFJlZjpkb2N1bWVudElEPSJ4bXAuZGlkOkRERjRERUQyNkZGMDExRTdCNTBEOTc3NjZCMzk3ODE1Ii8+IDwvcmRmOkRlc2NyaXB0aW9uPiA8L3JkZjpSREY+IDwveDp4bXBtZXRhPiA8P3hwYWNrZXQgZW5kPSJyIj8+2XELqgAAAkZJREFUeNq8l91KG1EUhZP0aFu9Er2RPkTvfAN7IQ5pNGrjD/5QWhRK0V6VUlBBREVRqEaCrVVUVLzzBUotImqr4Av4AD6A0J90bVkDw5AzmXOcyYaPZMyZWXvW3nvmmCwWi04ikWgEhUTlIgdqwVqKXySJtxUSz4Bu8EQOFNgFRdDLBUsxireDAfANzLsJSOzx+wuQBIsxih+74t4EJLbpRI6fUTrxnOI/wIz3B+VbuAP+gZ4Iy+He+Xcw5/9RlThBeiJFJ/6CTxHZPldyBcZQRxYcgncBa4Lo4vljQetUQPYHoAZ00AmTxsxyqo7AQtBCVeZCmxSX6fgTshzyTOmn7bPlFqsQF9zmpyRRXeaOOkEfxafDWKVCWipJPAZpOrKkaTgR/xVW3CQBiTWKt7Ecy57fWtntP8G40ZxYdHcPu3uUx2kev7eZFmUx21KOh3yp1IOn4NTEdm8kJQvL+AiawA0YtL1IyvI8h+LXoAG8rGQCzeAVuABvwD6nY8gqA8OmcdhwHzSNORxnE6ZptYzaVInGrOaIpnwjGslz4BnFLwLmfB08YKK34HNUJdDZrqOX60eiKEGGzXVWwnZdbIEqzxOzYFsCxyM+adjb69xZZVmWvGkCDkftxODO/bFB8Qw3uithE2ih+Nk9xN34QifadeVQmjs/t7BdF1+5y85yRFd1CbRSXOZ8IuL/CfzlyPsTENtfg0vj97lZORRd/s39xd0f3G3UFd9wcUbB81Stk6264jv9PAbbg5J4RN177Qciif8CDAD7IvwPG996hAAAAABJRU5ErkJggg==);
				width: 32px;
				height: 32px
			}
			
			.return {
				width: 42px;
				display: block;
				position: relative;
				overflow: hidden
			}
			
			.return-a {
				width: 153px;
				height: 42px;
				background-image: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAJkAAAAqCAIAAAAvYG42AAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAA4ZpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMy1jMDExIDY2LjE0NTY2MSwgMjAxMi8wMi8wNi0xNDo1NjoyNyAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wTU09Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9tbS8iIHhtbG5zOnN0UmVmPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvc1R5cGUvUmVzb3VyY2VSZWYjIiB4bWxuczp4bXA9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC8iIHhtcE1NOk9yaWdpbmFsRG9jdW1lbnRJRD0ieG1wLmRpZDoyZjM2ZDg1OS1mZTM1LTRkOWItYjMyOS1mNWVkYzEwYTMxY2UiIHhtcE1NOkRvY3VtZW50SUQ9InhtcC5kaWQ6N0ZDMzM2MzBDNDMzMTFFN0EyMjhEMzlGNzU1RDlDQjYiIHhtcE1NOkluc3RhbmNlSUQ9InhtcC5paWQ6N0ZDMzM2MkZDNDMzMTFFN0EyMjhEMzlGNzU1RDlDQjYiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENDIDIwMTcgKE1hY2ludG9zaCkiPiA8eG1wTU06RGVyaXZlZEZyb20gc3RSZWY6aW5zdGFuY2VJRD0ieG1wLmlpZDo0ODZmMjdjNy1mOWU0LTQ1OGEtYmQyZi04ZmNiZWI0YzAyNTAiIHN0UmVmOmRvY3VtZW50SUQ9ImFkb2JlOmRvY2lkOnBob3Rvc2hvcDo3ZjQyMWJhNy1hMGEyLTExN2EtOWE2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);
				background-repeat: no-repeat;
				background-position: 0 0;
				cursor: pointer;
				position: relative;
				right: 111px
			}

            .classify-more{
                padding:0 15px;
                width:120px;
                height:30px;
                background-color:#D31733;
                color:#fff;
                line-height:30px;
                text-align:center;
                border-radius:5px;
                margin:20px auto;
                border:0 none;
                font-size:16px;
                display:none;*//*默认不显示，ajax调用成功后才决定显示与否*/
            }

            --------------增加多选样式----------------
            *{margin:0;padding:0;}
            ol, ul {list-style: none;}
            blockquote,q {quotes: none;}
            a{text-decoration:none;color:#2d2f30;-webkit-transition: all .3s linear;-moz-transition: all .3s linear;-o-transition: all .3s linear;-ms-transition: all .3s linear;transition: all .3s linear;}
            a:focus{ outline:none;}
            .content{margin:auto;width:1200px;}
            .sx_updown{width:100%;border-top:1px solid #f2f2f2;background:#fff;overflow:hidden;padding:32px 0 40px 0;z-index:9999;position:absolute;left:0;top:60px;text-align:left;}
            .updown_box{float:left;min-height:198px;width:388px;border-left:1px solid #f2f2f2;padding:0 50px;-webkit-box-sizing: content-box;-moz-box-sizing: content-box; box-sizing: content-box;}
            .updown_box h3{font-size:16px;margin-bottom:18px;padding-left:10px;}
            .updown_box ul li{float:left;margin:0 10px 10px 10px;}
            .updown_box ul li a{display:block;font-size:14px;padding:6px 8px;line-height:18px;}
            .updown_box ul li.selected a{background:#7ecbc8;color:#fff;}
            .w136{width:136px;border-left:0;padding:0;}
            .w290{width:290px;}
            .w160{width:160px;padding:0 40px;}
            .sousuo{padding:10px 0 36px 0;width:100%;}
            .select-result{width:900px;float:left;}
            .select-result ul li a{height:30px;padding:0 24px 0 10px;line-height:30px;display:block;position:relative;float:left;margin:0 10px 10px 0;color:#fff;font-size:14px;background:url(close1.png) 90% center no-repeat #7ecbc8;}

        </style>
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
								<a href="${base}/combo/comboList" class="">首页</a>
							</li>
							<li>
								<a href="${base}/combo/home" class="router-link-exact-active router-link-active">自助自驾</a>
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
            <#-------------------------选择过滤--------------------------->
			<div data-v-107a46b0="" class="self">
				<div data-v-107a46b0="" class="cf-top"></div>
				<div data-v-107a46b0="" style="height: 36px; background-color: rgb(243, 243, 243);"></div>
				<div data-v-107a46b0="" class="classify-cf">
					<div data-v-107a46b0="" id="select1" class="cf cf-one cf-choose">
						<div data-v-107a46b0="" class="tit tit-1">游玩城市:</div>
                        <span data-v-107a46b0="" style="display: inline-block; width: 2px; padding: 0px; margin: 0px;"></span>
                        <span data-v-107a46b0="" class="select-all selected">全部</span>
                        <span data-v-107a46b0="" class="">昆明</span>
                        <span data-v-107a46b0="" class="">大理</span>
                        <span data-v-107a46b0="" class="">西双版纳</span><span data-v-107a46b0="" class="">瑞丽</span>
                        <span data-v-107a46b0="" class="">普洱</span><span data-v-107a46b0="" class="">腾冲</span><span data-v-107a46b0="" class="">玉溪</span><span data-v-107a46b0="" class="">丽江</span>
                        <span data-v-107a46b0="" class="">香格里拉</span><span data-v-107a46b0="" class="">红河</span><span data-v-107a46b0="" class="">楚雄</span><span data-v-107a46b0="" class="">文山</span>
                        <span data-v-107a46b0="" class="">怒江</span><span data-v-107a46b0="" class="">临沧</span><span data-v-107a46b0="" class="">曲靖</span><span data-v-107a46b0="" class="">昭通</span></div>

                    <div data-v-107a46b0="" class="cf cf-choose">
						<div data-v-107a46b0="" id="select2" class="tit">出行天数:</div> <span data-v-107a46b0="" style="display: inline-block; width: 2px; padding: 0px; margin: 0px;"></span> <span data-v-107a46b0="" class="selected">全部</span> <span data-v-107a46b0="" class="">3天以下</span><span data-v-107a46b0="" class="">3~5天</span><span data-v-107a46b0="" class="">6~9天</span><span data-v-107a46b0="" class="">10~15天</span><span data-v-107a46b0="" class="">15天以上</span></div>
					<div data-v-107a46b0="" class="cf cf-choose">
						<div data-v-107a46b0="" id="select3" class="tit">价格区间:</div> <span data-v-107a46b0="" style="display: inline-block; width: 2px; padding: 0px; margin: 0px;"></span> <span data-v-107a46b0="" class="selected">全部</span> <span data-v-107a46b0="" class="">3千元以下</span><span data-v-107a46b0="" class="">3千~5千元</span><span data-v-107a46b0="" class="">5千~1万元</span><span data-v-107a46b0="" class="">1万~2万元</span><span data-v-107a46b0="" class="">2万元以上</span></div>
					<div data-v-107a46b0="" class="cf cf-choose">
						<div data-v-107a46b0="" id="select4" class="tit">适合人群:</div> <span data-v-107a46b0="" style="display: inline-block; width: 2px; padding: 0px; margin: 0px;"></span> <span data-v-107a46b0="" class="selected">全部</span> <span data-v-107a46b0="" class="">家庭游</span><span data-v-107a46b0="" class="">商务人士</span><span data-v-107a46b0="" class="">茶友</span><span data-v-107a46b0="" class="">同学会</span><span data-v-107a46b0="" class="">公司团建</span><span data-v-107a46b0="" class="">定制团队</span><span data-v-107a46b0="" class="">亲子游</span><span data-v-107a46b0="" class="">朋友</span><span data-v-107a46b0="" class="">情侣游</span><span data-v-107a46b0="" class="">驴友</span><span data-v-107a46b0="" class="">爸妈游</span><span data-v-107a46b0="" class="">资深旅行家</span><span data-v-107a46b0="" class="">摄影爱好者</span><span data-v-107a46b0="" class="">学生团体</span></div>
				</div>


				<div data-v-107a46b0="" class="cf-sort">
					<div data-v-107a46b0="" class="hover hover_active" style="padding-left: 4px;">默认排序</div>
					<div data-v-107a46b0="" class="">价格
						<p data-v-107a46b0="" class="arrows"><span data-v-107a46b0="" class="arr-top hover"></span> <span data-v-107a46b0="" class="arr-bottom hover"></span></p>
					</div>
				</div>
				<div data-v-107a46b0="">
					<div data-v-107a46b0="" class="all-list">
						<div data-v-107a46b0="" class="classify-list">
                            <#list comboList as combo>
                            <tr>
							<div data-v-107a46b0="" class="classify-li">
								<div data-v-107a46b0="" class="cd-list-img">
									<a data-v-107a46b0="" href="https://www.wktrip.com/self_driving/100011" class=""><img data-v-107a46b0="" src="${base}/img/cd07d77d-9e52-4c19-b5bf-cc3964e3b984.jpg" alt=""></a> <span data-v-107a46b0="" class="tags tags_7"><span data-v-107a46b0="" class="test" style="margin-right: 38px;">紫-地热农特</span></span>
									<div data-v-107a46b0=""></div>
								</div>
								<div data-v-107a46b0="" class="cd-list-text">
									<p data-v-107a46b0="" class="cd-list-title">
										<a data-v-107a46b0="" href="${base}/combo/self_driving/${combo.comboId}" class="">${combo.comboName}</a>
									</p>
									<p data-v-107a46b0="" class="cd-list-type"><span data-v-107a46b0="">${combo.comboType}</span> <span data-v-107a46b0="">${combo.comboSite}出发</span> <span data-v-107a46b0="">${combo.comboDays}</span></p>
									<p data-v-107a46b0="" class="cd-list-description advantage">${combo.comboLight}
									</p>
									<p data-v-107a46b0="" class="cd-list-label"><span data-v-107a46b0="">温泉</span><span data-v-107a46b0="">民俗</span><span data-v-107a46b0="">亲子优选</span></p>
									<p data-v-107a46b0="" class="cd-list-money"><span data-v-107a46b0="">¥<b data-v-107a46b0="">${combo.comboPrice}</b></span>起 / 人</p>
									<a data-v-107a46b0="" href="${base}/combo/self_driving/${combo.comboId}" class="">
										<div data-v-107a46b0="" class="cd-list-btn">查看详情</div>
									</a>
								</div>
							</div>
                            </tr>
                            </#list>
							<#---->
                        </div>
						</div>
					</div>
					<p data-v-107a46b0="" class="classify-more">加载更多
						<!----><span data-v-107a46b0="" class="no-more"></span></p>
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
							<p>订阅号</p> <img src="${base}/img/wxcode.cc79ece.jpg" alt=""></div>
						<div>
							<p>APP下载</p> <img src="${base}/img/appcode.e8d3d31.png" alt=""></div>
					</div>
					<div class="footer">
						<p>北京悟空国际旅行社有限公司</p>
						<p>地址：北京市东城区东直门外大街39号院航空服务楼2#B517&nbsp;电话：400-0515-507</p>
						<p>苏ICP备17014043号-2　｜　ICP证苏B2-20170199</p>
					</div>
				</div>
			</div>
		</div>
		<#--<script type="text/javascript" src="${base}/js/manifest.fb5239f97ae874448f44.js"></script>-->
		<script type="text/javascript" src="${base}/js/vendor.434b2f13fc4d603f30a3.js"></script>
		<script type="text/javascript" src="${base}/js/app.6d0a0c8dac82bcb8212b.js"></script>
	</body>

</html>



<script type="text/javascript">

    /*-----------------------增加的内容----------------------*/
    $("#select2 span").click(function () {
        $(this).addClass("selected").siblings().removeClass("selected");
        if ($(this).hasClass("select-all")) {
            $("#selectA").remove();
        } else {
            var copyThisA = $(this).clone();
            if ($("#selectA").length > 0) {
                $("#selectA a").html($(this).text());
            } else {
                $(".select-result dl").append(copyThisA.attr("id", "selectA"));
            }
        }
    });


    $(function(){
        /*初始化*/
        var counter = 0; /*计数器*/
        var pageStart = 0; /*offset*/
        var pageSize = 4; /*size*/

        /*首次加载*/
        getData(pageStart, pageSize);

        /*监听加载更多*/
        $(document).on('click', '.js-load-more', function(){
            counter ++;
            pageStart = counter * pageSize;

            getData(pageStart, pageSize);
        });
    });

    //业务逻辑代码,负责从服务端拉数据
    function getData(offset,size){
        $.ajax({
            type: 'GET', url: 'json/blog.json', dataType: 'json',
            success: function(reponse){

                var data = reponse.list;
                var sum = reponse.list.length;

                var result = '';

                /****业务逻辑块：实现拼接html内容并append到页面*********/

                //console.log(offset , size, sum);

                /*如果剩下的记录数不够分页，就让分页数取剩下的记录数
                * 例如分页数是5，只剩2条，则只取2条
                *
                * 实际MySQL查询时不写这个不会有问题
                */
                if(sum - offset < size ){
                    size = sum - offset;
                }

                /*使用for循环模拟SQL里的limit(offset,size)*/
                for(var i=offset; i< (offset+size); i++){
                    result +='<div class="weui_media_box weui_media_text">'+
                            '<a href="'+ data[i].url +'" target="_blank"><h4 class="weui_media_title">'+ data[i].title +'</h4></a>'+
                            '<p class="weui_media_desc">'+ data[i].desc +'</p>'+
                            '</div>';
                }

                $('.classify-li').append(result);

                /*******************************************/

                /*隐藏more按钮*/
                if ( (offset + size) >= sum){
                    $(".classify-more").hide();
                }else{
                    $(".classify-more").show();
                }
            },
            error: function(xhr, type){
                alert('Ajax error!');
            }
        });
    }



</script>



