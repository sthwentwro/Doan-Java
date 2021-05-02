<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 4.01 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title><dec:title default="Trang Chu" /></title>
<link rel="stylesheet" type="text/css" href="template/web/css/internal.css">
<link href="template/web/css/bootstrap.min.css" rel="stylesheet"
	type="text/css">
<link
	href="template/web/css/font-awesome.css"
	rel="stylesheet" type="text/css" media="all">
<link
	href="template/web/css/simple-line-icons.css"
	rel="stylesheet" type="text/css" media="all">
<link
	href="template/web/css/owl.carousel.css"
	rel="stylesheet" type="text/css">
<link
	href="template/web/css/owl.theme.css"
	rel="stylesheet" type="text/css">
<link
	href="template/web/css/jquery.bxslider.css"
	rel="stylesheet" type="text/css">
<link
	href="template/web/css/jquery.mobile-menu.css"
	rel="stylesheet" type="text/css">
<link
	href="template/web/css/revslider.css"
	rel="stylesheet" type="text/css">
<link href="template/web/css/style.css" rel="stylesheet" type="text/css"
	media="all">

<!-- Google Fonts -->
<link
	href='https://fonts.googleapis.com/css?family=Raleway:400,100,200,300,500,600,700,800,900'
	rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Montserrat:400,700'
	rel='stylesheet' type='text/css'>
<link
	href='https://fonts.googleapis.com/css?family=Open+Sans:400,300italic,300,600,600italic,400italic,700,700italic,800,800italic'
	rel='stylesheet' type='text/css'>
</head>
<body>
	<!-- header -->
	<%@ include file="/common/web/header.jsp"%>
	<!-- /header -->

	<dec:body />

	<!-- footer -->
	<%@ include file="/common/web/footer.jsp"%>
	<!-- /footer -->
	<!-- JavaScript -->
	<script type="text/javascript"
		src=" <c:url value='/template/web/js/jquery.min.js'/>"></script>
	<script type="text/javascript"
		src=" <c:url value='/template/web/js/bootstrap.min.js'/>"></script>
	<script type="text/javascript"
		src=" <c:url value='/template/web/js/common.js'/>"></script>
	<script type="text/javascript"
		src=" <c:url value='/template/web/js/countdown.js'/>"></script>
	<script type="text/javascript"
		src=" <c:url value='/template/web/js/owl.carousel.min.js'/>"></script>
	<script type="text/javascript"
		src=" <c:url value='/template/web/js/jquery.mobile-menu.min.js'/>"></script>
	<script type="text/javascript"
		src=" <c:url value='/template/web/js/revolution-slider.js'/>"></script>
	<script type="text/javascript"
		src=" <c:url value='/template/web/js/revolution.extension.js'/>"></script>
	<script type="text/javascript">
		var dthen1 = new Date("12/25/17 11:59:00 PM");
		start = "05/03/15 03:02:11 AM";
		start_date = Date.parse(start);
		var dnow1 = new Date(start_date);
		if (CountStepper > 0)
			ddiff = new Date((dnow1) - (dthen1));
		else
			ddiff = new Date((dthen1) - (dnow1));
		gsecs1 = Math.floor(ddiff.valueOf() / 1000);

		var iid1 = "countbox_1";
		CountBack_slider(gsecs1, "countbox_1", 1);

		var dthen1 = new Date("12/12/17 11:59:00 PM");
		start = "01/20/16 03:02:11 AM";
		start_date = Date.parse(start);
		var dnow1 = new Date(start_date);
		if (CountStepper > 0)
			ddiff = new Date((dnow1) - (dthen1));
		else
			ddiff = new Date((dthen1) - (dnow1));
		gsecs1 = Math.floor(ddiff.valueOf() / 1000);

		var iid1 = "countbox_2";
		CountBack_slider(gsecs1, "countbox_2", 1);
	</script>

	<script type="text/javascript">
		var tpj = jQuery;
		var revapi4;
		tpj(document)
				.ready(
						function() {
							if (tpj("#rev_slider_4_1").revolution == undefined) {
								revslider_showDoubleJqueryError("#rev_slider_4_1");
							} else {
								revapi4 = tpj("#rev_slider_4_1")
										.show()
										.revolution(
												{
													sliderType : "standard",
													sliderLayout : "fullwidth",
													dottedOverlay : "none",
													delay : 9000,
													navigation : {
														keyboardNavigation : "off",
														keyboard_direction : "horizontal",
														mouseScrollNavigation : "off",
														onHoverStop : "off",
														touch : {
															touchenabled : "on",
															swipe_threshold : 75,
															swipe_min_touches : 1,
															swipe_direction : "horizontal",
															drag_block_vertical : false
														},
														arrows : {
															style : "zeus",
															enable : true,
															hide_onmobile : true,
															hide_under : 750,
															hide_onleave : true,
															hide_delay : 200,
															hide_delay_mobile : 1200,
															tmp : '<div class="tp-title-wrap">  	<div class="tp-arr-imgholder"></div> </div>',
															left : {
																h_align : "left",
																v_align : "center",
																h_offset : 30,
																v_offset : 0
															},
															right : {
																h_align : "right",
																v_align : "center",
																h_offset : 30,
																v_offset : 0
															}
														},
														bullets : {
															enable : true,
															hide_onmobile : true,
															hide_under : 600,
															style : "metis",
															hide_onleave : true,
															hide_delay : 200,
															hide_delay_mobile : 1200,
															direction : "horizontal",
															h_align : "center",
															v_align : "bottom",
															h_offset : 0,
															v_offset : 30,
															space : 5,
															tmp : '<span class="tp-bullet-img-wrap">  <span class="tp-bullet-image"></span></span><span class="tp-bullet-title">{{title}}</span>'
														}
													},
													viewPort : {
														enable : true,
														outof : "pause",
														visible_area : "80%"
													},
													responsiveLevels : [ 1240,
															1024, 778, 480 ],
													gridwidth : [ 768, 1024,
															778, 480 ],
													gridheight : [ 890, 600,
															500, 400 ],
													lazyType : "none",
													parallax : {
														type : "mouse",
														origo : "slidercenter",
														speed : 2000,
														levels : [ 2, 3, 4, 5,
																6, 7, 12, 16,
																10, 50 ],
													},
													shadow : 0,
													spinner : "off",
													stopLoop : "off",
													stopAfterLoops : -1,
													stopAtSlide : -1,
													shuffle : "off",
													autoHeight : "off",
													hideThumbsOnMobile : "off",
													hideSliderAtLimit : 0,
													hideCaptionAtLimit : 0,
													hideAllCaptionAtLilmit : 0,
													debugMode : false,
													fallbacks : {
														simplifyAll : "off",
														nextSlideOnWindowFocus : "off",
														disableFocusListener : false,
													}
												});
							}
						}); /*ready*/
	</script>
</body>
</html>