<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<div id="mainwrap">
	<!-- mvisual -->
	<div id="mvisual" style="height: 400px;">
		<div class="mv_pat">
			<h3 class="blind">공연목록</h3>
			<div class="control">
				<a href="#prev" rel="prev" class="prev"><span class="hide">공연목록
						이전</span></a> <a href="#next" rel="next" class="next"><span class="hide">공연목록
						다음</span></a>
			</div>
			<div class="mv_cnt">
				<div class="mask" style="left: 0px;">
					<ul class="obj">
						<c:forEach items="${adList}" var="ad">
							<li>
								<div style="background-position:center;
											background-size:cover;
											background-repeat:no-repeat;
											background-image:url('${ad.thumbimg }');
											width:200px;height:150px; margin:0 auto;
											"
									title="${ad.performVO.name}"></div>
								<p> 
									<span style="font-size:18px;font-weight:bold;color:white;">${ad.performVO.name}</span>								
									<span class="date">
									<fmt:formatDate value="${ad.startdate }" pattern="yyyy년 MM월 dd일"/>								
									 - 
									 <fmt:formatDate value="${ad.enddate }" pattern="yyyy년 MM월 dd일"/>									  
									 </span>
								</p> 
								<a href="#" class="view">View</a> 
								<a href="#total" onclick="" class="reser">예매</a>
							</li>
						</c:forEach>
					</ul>					
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>



	<script type="text/javascript">
		$(document).ready(
				function() {
					var param = "#mvisual";
					var obj = ".obj";
					var btn = param + " .control";
					var interval = 5000;
					var speed = 500;
					var viewSize = 1;
					var moreSize = 0;
					var dir = "x";
					var data = 0;
					var auto = true;
					var hover = false;
					var method = "easeInOutCubic";
					var op1 = false;

					stateScrollObj(param, obj, btn, interval, speed, viewSize,
							moreSize, dir, data, auto, hover, method, op1);
				});
	</script>
	<!-- //mvisual -->









	<!-- mshedule -->
	<div id="mshedule">
		<div class="msc_cnt">
			<h3 class="blind">공연일정</h3>
			<div id="calendar">
				<div class="date">
					<span class="cmonth_en">July</span> <span class="cyear">2019.</span>
					<span class="cmonth">07</span>
					<div class="control">
						<a href="#" rel="prev" class="prev"><span class="hide">공연일정
								이전</span></a> <a href="#next" rel="next" class="next"><span
							class="hide">공연일정 다음</span></a>
					</div>
				</div>
				<div class="msc_num">
					<div class="mask">
						<ul>
							<li class="M">M<span><a href="#1">1</a></span></li>
							<li class="T">T<span><a href="#2">2</a></span></li>
							<li class="W">W<span><a href="#3">3</a></span></li>
							<li class="T">T<span><a href="#4">4</a></span></li>
							<li class="F">F<span><a href="#5">5</a></span></li>
							<li class="S">S<span><a href="#6">6</a></span></li>
							<li class="S">S<span><a href="#7">7</a></span></li>
							<li class="M">M<span><a href="#8" class="">8</a></span></li>
							<li class="T">T<span><a href="#9" class="">9</a></span></li>
							<li class="W">W<span><a href="#10">10</a></span></li>
							<li class="T">T<span><a href="#11">11</a></span></li>
							<li class="F">F<span><a href="#12">12</a></span></li>
							<li class="S">S<span><a href="#13">13</a></span></li>
							<li class="S">S<span><a href="#14">14</a></span></li>
							<li class="M">M<span><a href="#15">15</a></span></li>
							<li class="T">T<span><a href="#16">16</a></span></li>
							<li class="W">W<span><a href="#17">17</a></span></li>
							<li class="T">T<span><a href="#18">18</a></span></li>
							<li class="F">F<span><a href="#19">19</a></span></li>
							<li class="S">S<span><a href="#20">20</a></span></li>
							<li class="S">S<span><a href="#21">21</a></span></li>
							<li class="M">M<span><a href="#22">22</a></span></li>
							<li class="T">T<span><a href="#23">23</a></span></li>
							<li class="W">W<span><a href="#24">24</a></span></li>
							<li class="T">T<span><a href="#25">25</a></span></li>
							<li class="F">F<span><a href="#26">26</a></span></li>
							<li class="S">S<span><a href="#27">27</a></span></li>
							<li class="S">S<span><a href="#28">28</a></span></li>
							<li class="M">M<span><a href="#29">29</a></span></li>
							<li class="T">T<span><a href="#30">30</a></span></li>
							<li class="W">W<span><a href="#31">31</a></span></li>
						</ul>
					</div>
				</div>

				<div class="clearfix"></div>
			</div>

			<div class="msc_list"
				style="left: 229.917px; bottom: 45px; display: none;">





















				<h3>
					2019.07.09<a href="#close" rel="close"><span class="hide">일별공연목록
							닫기</span></a>
				</h3>
				<div class="scroll-wrapper scrollbar-outer"
					style="position: relative;">
					<div class="scrollbar-outer scroll-content"
						style="margin-bottom: 0px; margin-right: 0px;">
						<ul>

							<li><img
								src="/upload/performance/thm_performance_1_155262739629133_1981207274.jpg"
								alt="2019아침을 여는 클래식 7월"> <strong>2019아침을 여는 클래식
									7월</strong> <span>2019.07.09~07.09</span> <a class="view" href="#">상세보기</a>
								<a class="reser" href="#total"
								onclick="javascript:INTER_Login_check();">예매하기</a></li>
						</ul>
					</div>
					<div class="scroll-element scroll-x">
						<div class="scroll-element_outer">
							<div class="scroll-element_size"></div>
							<div class="scroll-element_track"></div>
							<div class="scroll-bar" style="width: 100px;"></div>
						</div>
					</div>
					<div class="scroll-element scroll-y">
						<div class="scroll-element_outer">
							<div class="scroll-element_size"></div>
							<div class="scroll-element_track"></div>
							<div class="scroll-bar" style="height: 100px;"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<script src="/js/kr/jquery.scrollbar.min.js" type="text/javascript"></script>
		<script type="text/javascript">
			$(document).ready(function() {
				kCalendar();
			});
		</script>
	</div>
	<div class="clearfix"></div>
</div>
<div id="mcontainer" style="">
	<!-- msection1-->
	<div id="msection1">
		<!-- 대관,시립예술단 리스트 -->
		<div class="marea1">
			<div id="showcnt_dg">
				<h3>
					<a href="#" class="ov">대관공연</a><span class="bar">|</span>
				</h3>
				<div class="showcnt" style="display: block;">
					<div class="control">
						<span class="count"><em>1</em>/2</span> <a href="#prev" rel="prev"
							class="prev"><span class="hide">대관공연 이전</span></a> <a
							href="#next" rel="next" class="next"><span class="hide">대관공연
								다음</span></a>
					</div>
					<ul class="item" style="display: block;">
						<li><img
							src="/upload/performance/thm_performance_1_155859349768625_2079534649.jpg"
							alt="한현진 바이올린 독주회"> <strong class="date">July<br>03
						</strong>
							<p class="cnt">
								<strong><a href="#">한현진 바이올린 독주회</a></strong>

							</p>
							<div class="clearfix"></div></li>

						<li><img
							src="/upload/performance/thm_performance_1_156090902772618_761897816.jpg"
							alt="2019 앙상블 소토보체 정기연주회 <Gloria - Vivaldi>"> <strong
							class="date">July<br>04
						</strong>
							<p class="cnt">
								<strong><a href="#"> </a>
							</p> <a href="#">
								<div class="clearfix"></div>
						</a></li>
						<a href="#"> </a>
						<li><a href="#"> <img
								src="/upload/performance/thm_performance_1_155988327792533_2139716721.jpg"
								alt="신이은 피아노 독주회 <베토벤 피아노 소나타 전곡 시리즈 II>"> <strong
								class="date">July<br>05
							</strong>
						</a>
							<p class="cnt">
								<a href="#"> <strong></strong></a><strong><a href="#">신이은
										피아노 독주회 &lt;베토벤 피아노 소나타 전...</a></strong>

							</p>
							<div class="clearfix"></div></li>
					</ul>
					<ul class="item" style="display: none;">
						<li><img
							src="/upload/performance/thm_performance_1_156091836937539_1855893872.jpg"
							alt="소프라노 고지완 리사이틀"> <strong class="date">July<br>06
						</strong>
							<p class="cnt">
								<strong><a href="#">소프라노 고지완 리사이틀</a></strong>

							</p>
							<div class="clearfix"></div></li>

						<li><img
							src="/upload/performance/thm_performance_1_156167951160936_224745689.jpg"
							alt="솔리스트디바(야외공연)"> <strong class="date">July<br>06
						</strong>
							<p class="cnt">
								<strong><a href="#">솔리스트디바(야외공연)</a></strong> &nbsp;
							</p>
							<div class="clearfix"></div></li>

						<li><img
							src="/upload/performance/thm_performance_1_155963265527637_784011221.jpg"
							alt="2019 콰르텟 이즈 정기연주회 “낭만, 그리고 열정”"> <strong class="date">July<br>06
						</strong>
							<p class="cnt">
								<strong><a href="#">2019 콰르텟 이즈 정기연주회 “낭만, 그리고 열...</a></strong>

							</p>
							<div class="clearfix"></div></li>
					</ul>
					<a href="#" class="more" title="대관공연 더보기"><span class="hide">대관공연
							더보기</span></a>
				</div>
			</div>

			<div id="showcnt_srys">
				<h3>
					<a href="#시립예술단공연">시립예술단공연</a>
				</h3>
				<div class="showcnt" style="display: none;">
					<div class="control">
						<span class="pag count"><em>1</em>/2</span> <a href="#prev"
							rel="prev" class="prev"><span class="hide">시립예술단공연 이전</span></a>
						<a href="#next" rel="next" class="next"><span class="hide">시립예술단공연
								다음</span></a>
					</div>
					<ul class="item" style="display: block;">
						<li><img
							src="/upload/performance/thm_performance_1_156073444557731_1479453398.jpg"
							alt="대전시립합창단 제144회 정기연주회 “현대합창의 아름다움”"> <strong
							class="date">July<br>05
						</strong>
							<p class="cnt">
								<strong><a href="#">대전시립합창단 제144회 정기연주회 “현대합창의...</a></strong>


							</p>
							<div class="clearfix"></div></li>

						<li><img
							src="/upload/performance/thm_performance_1_156107600675646_1122142676.jpg"
							alt="대전시립교향악단 <바그너의 오페라>"> <strong class="date">July<br>12
						</strong>
							<p class="cnt">
								<strong><a href="#">대전시립교향악단 &lt;바그너의 오페라&gt;</a></strong>

							</p>
							<div class="clearfix"></div></li>

						<li><img
							src="/upload/performance/thm_performance_1_155297807827559_964779103.jpg"
							alt="대전시립합창단 기획연주회 가족음악회 1"> <strong class="date">August<br>20
						</strong>
							<p class="cnt">
								<strong><a href="#">대전시립합창단 기획연주회 가족음악회 1</a></strong> &nbsp;
							</p>
							<div class="clearfix"></div></li>
					</ul>
					<ul class="item" style="display: none;">
						<li><img
							src="/upload/performance/thm_performance_1_155297823348173_1282841853.jpg"
							alt="대전시립합창단 제145회 정기연주회 황금빛 가을"> <strong class="date">September<br>10
						</strong>
							<p class="cnt">
								<strong><a href="#">대전시립합창단 제145회 정기연주회 황금빛 가을</a></strong>
								&nbsp;
							</p>
							<div class="clearfix"></div></li>

						<li><img
							src="/upload/performance/thm_performance_1_155272416413074_242370593.jpg"
							alt="대전시립청소년합창단 기획연주회  2019 청소년합창페스티벌"> <strong
							class="date">October<br>18
						</strong>
							<p class="cnt">
								<strong><a href="#">대전시립청소년합창단 기획연주회 2019 청소년합...</a></strong>

							</p>
							<div class="clearfix"></div></li>

						<li><img
							src="/upload/performance/thm_performance_1_155297834468466_1196711831.jpg"
							alt="대전시립합창단 기획연주회 가곡의 향기"> <strong class="date">October<br>31
						</strong>
							<p class="cnt">
								<strong><a href="#">대전시립합창단 기획연주회 가곡의 향기</a></strong> &nbsp;
							</p>
							<div class="clearfix"></div></li>
					</ul>
					<a href="#" class="more" title="시립예술단공연 더보기"><span class="hide">시립예술단공연
							더보기</span></a>
				</div>
			</div>
		</div>
		<script type="text/javascript">
			$(document).ready(function() {

				var param = "#showcnt_dg";
				var btn = ".control";
				var obj = ".item";
				var auto = false;
				var f = 300;
				var s = 5000;
				var p = {
					use : true,
					type : 1,
					path : btn + " .count"
				};
				var h = false;

				commonPopzone(param, btn, obj, auto, f, s, p, h);
			});

			$(document).ready(function() {

				var param = "#showcnt_srys";
				var btn = ".control";
				var obj = ".item";
				var auto = false;
				var f = 300;
				var s = 5000;
				var p = {
					use : true,
					type : 1,
					path : btn + " .count"
				};
				var h = false;

				commonPopzone(param, btn, obj, auto, f, s, p, h);
			});

			$(document).ready(function() {
				var param = ".marea1";
				var btn = "h3>a";
				var obj = ".showcnt";
				var event = "click";
				latest_bbs(param, btn, obj, event);
			});
		</script>
		<!-- //대관,시립예술단 리스트 -->
		<!-- 팝업존,퀵메뉴 -->

		<div class="marea2">
			<div class="popupz">
				<div class="matit">
					<h3>
						<em>Event</em>
					</h3>
				</div>

			</div>
		</div>


		<script type="text/javascript">
			$(document).ready(function() {
				var param = ".popupz";
				var btn = ".control";
				var obj = ".item";
				var auto = true;
				var f = 300;
				var s = 7000;
				var p = {
					use : true,
					type : 1,
					path : btn + " .count"
				};
				var h = true;

				commonPopzone(param, btn, obj, auto, f, s, p, h);
			});
		</script>
		<!-- //팝업존,퀵메뉴 -->
	</div>
	<!-- //msection1-->
	<div class="clearfix"></div>

	<!-- msection2-->

	<!-- //msection2-->

	<!-- msection3-->
	<div id="msection3">
		<div class="marea1">
			<div class="matit">
				<h3>예술의전당 새소식</h3>
			</div>
			<ul class="y_news">
				<li><a href="#">인터파크 시스템 점검으로 인한 티켓 예... </a>06-27</li>
				<li><a href="#">2019 제작연극 &lt;죄와 벌&gt; 배우 2차... </a>06-14</li>
				<li><a href="#">오페라 &lt;투란도트&gt; 주요배역 오디... </a>06-14</li>
				<li><a href="#">대전예술의전당 공연용 마이크 구매 소액... </a>06-13</li>
			</ul>
			<a href="#" class="more">더보기</a>
		</div>
		<div class="marea1">
			<div class="matit">
				<h3>아카데미 새소식</h3>
			</div>
			<ul class="a_news">
				<li><a href="#">봄학기 문화와 예술교육 프로그램 휴강 ... </a>05-13</li>
				<li><a href="#">2019 DJAC 청년오케스트라 성악파트 오디... </a>03-27</li>
				<li><a href="#">2019 DJAC 청년오케스트라 신규단원 오디... </a>03-06</li>
				<li><a href="#">봄학기 강좌 추가 접수 및 폐강 안내 </a>03-04</li>
			</ul>
			<a href="#" class="more">더보기</a>
		</div>
		<div class="marea1">
			<div class="matit">
				<h3>아카데미 새소식</h3>
			</div>
			<ul class="f_news">
				<li><a href="#">봄학기 문화와 예술교육 프로그램 휴강 ... </a>05-13</li>
				<li><a href="#">2019 DJAC 청년오케스트라 성악파트 오디... </a>03-27</li>
				<li><a href="#">봄학기 강좌 추가 접수 및 폐강 안내 </a>03-04</li>
			</ul>
			<a href="#" class="more">더보기</a>
		</div>

	</div>
	<!-- //msection3-->
	<div class="clearfix"></div>

	<!-- msection4-->


	<!-- //msection4-->

	<!-- msection5-->






	<div class="clearfix"></div>
</div>
<script type="text/javascript">
	$(document).ready(
			function() {
				var param = ".ms_banner";
				var obj = ".banner ul li";
				var btn = param + " .control";
				var interval = 5000;
				var speed = 500;
				var viewSize = 1;
				var moreSize = 0;
				var dir = "x";
				var data = 0;
				var auto = true;
				var hover = true;
				var method = "easeInOutCubic";
				var op1 = false;
				var h = false;

				stateScrollObj(param, obj, btn, interval, speed, viewSize,
						moreSize, dir, data, auto, hover, method, op1, h);
			});
</script>
</div>
<!-- //msection5-->
</div>
