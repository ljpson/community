<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8" />
  <title>Swiper demo</title>
  <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1" />

  <!-- Link Swiper's CSS -->
  <link rel="stylesheet" href="https://unpkg.com/swiper@8/swiper-bundle.min.css" />

  <!-- Demo styles -->
  <style>
    html,
    body {
      position: relative;
      height: 100%;
    }

    body {
      background: #eee;
      font-family: Helvetica Neue, Helvetica, Arial, sans-serif;
      font-size: 14px;
      color: #000;
      margin: 0;
      padding: 0;
    }

    .swiper {
      width: 100%;
      height: 100%;
    }

    .swiper-slide {
      text-align: center;
      
      font-size: 18px;
      background: #fff;

      /* Center slide text vertically */
      display: -webkit-box;
      display: -ms-flexbox;
      display: -webkit-flex;
      display: flex;
      -webkit-box-pack: center;
      -ms-flex-pack: center;
      -webkit-justify-content: center;
      justify-content: center;
      -webkit-box-align: center;
      -ms-flex-align: center;
      -webkit-align-items: center;
      align-items: center;
    }

    .menu {
      min-width: 100px;
      width: 70%;
      max-width: 320px;

      background-color: #2c8dfb;
      color: #fff;
    }

    .content {
      width: 100%;
    }

    .menu-button {
      position: absolute;
      top: 0px;
      left: 0px;

      padding: 10px;

      cursor: pointer;

      -webkit-transition: 0.3s;
      transition: 0.3s;

      background-color: #2c8dfb;

      /*margin: 14px;
			border-radius: 5px;*/
    }

    .menu-button .bar:nth-of-type(1) {
      margin-top: 0px;
    }

    .menu-button .bar:nth-of-type(3) {
      margin-bottom: 0px;
    }

    .bar {
      position: relative;
      display: block;

      width: 20px;
      height: 2.5px;

      margin: 5px auto;
      background-color: #fff;

      border-radius: 5px;

      -webkit-transition: 0.3s;
      transition: 0.3s;
    }

    .menu-button:hover .bar:nth-of-type(1) {
      -webkit-transform: translateY(1.5px) rotate(-4.5deg);
      -ms-transform: translateY(1.5px) rotate(-4.5deg);
      transform: translateY(1.5px) rotate(-4.5deg);
    }

    .menu-button:hover .bar:nth-of-type(2) {
      opacity: 0.9;
    }

    .menu-button:hover .bar:nth-of-type(3) {
      -webkit-transform: translateY(-1.5px) rotate(4.5deg);
      -ms-transform: translateY(-1.5px) rotate(4.5deg);
      transform: translateY(-1.5px) rotate(4.5deg);
    }

    .cross .bar:nth-of-type(1) {
      -webkit-transform: translateY(15px) rotate(-45deg);
      -ms-transform: translateY(15px) rotate(-45deg);
      transform: translateY(15px) rotate(-45deg);
    }

    .cross .bar:nth-of-type(2) {
      opacity: 0;
    }

    .cross .bar:nth-of-type(3) {
      -webkit-transform: translateY(-15px) rotate(45deg);
      -ms-transform: translateY(-15px) rotate(45deg);
      transform: translateY(-15px) rotate(45deg);
    }

    .cross:hover .bar:nth-of-type(1) {
      -webkit-transform: translateY(13.5px) rotate(-40.5deg);
      -ms-transform: translateY(13.5px) rotate(-40.5deg);
      transform: translateY(13.5px) rotate(-40.5deg);
    }

    .cross:hover .bar:nth-of-type(2) {
      opacity: 0.1;
    }

    .cross:hover .bar:nth-of-type(3) {
      -webkit-transform: translateY(-13.5px) rotate(40.5deg);
      -ms-transform: translateY(-13.5px) rotate(40.5deg);
      transform: translateY(-13.5px) rotate(40.5deg);
    }
  </style>
</head>

<body>
  <!-- Swiper -->
  <div class="swiper">
    <div class="swiper-wrapper">
      <div class="swiper-slide menu"">Menu slide<br>메뉴가 들어갈 자리<br>메뉴가 들어갈 자리<br>메뉴가 들어갈 자리</div>
      <div class="swiper-slide content">
        <div class="menu-button">
          <div class="bar"></div>
          <div class="bar"></div>
          <div class="bar"></div>
        </div>
        <center>
        Content slide<br><br><br>
        <table border=1 width=300 heigth=300>
	        <tr>
		        <td>sdfsdf</td>
		        <td>sdfsdf</td>
		        <td>sdfsdf</td>
				<td>sdfsdf</td>
	        </tr>
	        <tr>
		        <td>sdfsdf</td>
		        <td>sdfsdf</td>
		        <td>sdfsdf</td>
				<td>sdfsdf</td>
	        </tr>
        </table>
        </center>
      </div>
    </div>
  </div>

  <!-- Swiper JS -->
  <script src="https://unpkg.com/swiper@8/swiper-bundle.min.js"></script>

  <!-- Initialize Swiper -->
  <script>
    var menuButton = document.querySelector('.menu-button');
    var openMenu = function () {
      swiper.slidePrev();
    };
    var swiper = new Swiper('.swiper', {
      slidesPerView: 'auto',
      initialSlide: 1,
      resistanceRatio: 0,
      slideToClickedSlide: true,
      on: {
        slideChangeTransitionStart: function () {
          var slider = this;
          if (slider.activeIndex === 0) {
            menuButton.classList.add('cross');
            // required because of slideToClickedSlide
            menuButton.removeEventListener('click', openMenu, true);
          } else {
            menuButton.classList.remove('cross');
          }
        },
        slideChangeTransitionEnd: function () {
          var slider = this;
          if (slider.activeIndex === 1) {
            menuButton.addEventListener('click', openMenu, true);
          }
        },
      },
    });
  </script>
</body>

</html>
