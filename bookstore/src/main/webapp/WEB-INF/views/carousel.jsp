         <style>
		   .carousel-control {
			  top:50%;
			  width:auto;
			  height:1em;
			  background:transparent;
			}
			.carousel-control .glyphicon-chevron-left, .carousel-control .glyphicon-chevron-right  {
			  position:static;
			  display:block;
			  width:auto;
			}
			.carousel-control .glyphicon-chevron-left:before {
			  margin-left:0;
            }
         </style>
         
         <div class="span9">

				<div id="myCarousel" class="carousel slide">
				<div class="carousel-inner">
				  <div class="item active">
					<img src="<c:url value="/resources/images/carousel_1.jpg"/>" alt=""/>
					

				  </div>
				  <div class="item">
					<img src="<c:url value="/resources/images/carousel_2.jpg"/>" alt=""/>
					
				  </div>

				  <div class="item">
					<img src="<c:url value="/resources/images/carousel_3.jpg"/>" alt=""/>
				  </div>
				</div>

				<a class="left carousel-control" href="#myCarousel" data-slide="prev">  <span class="glyphicons glyphicons-chevron-left"> </span></a>
				<a class="right carousel-control" href="#myCarousel" data-slide="next"> <span class="glyphicons glyphicons-chevron-right"> </span></a>
			  </div>
          </div>