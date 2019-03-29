// COUNTDOWN;
// $("#countdown").countdown("2022/10/10", function(event) {
//   var $this = $(this).html(
//     event.strftime(
//       "" +
//         //+ '<li><span>%w</span> weeks</li> '
//         "<li><span>%D</span> days</li> " +
//         "<li><span>%H</span> hr</li> " +
//         "<li><span>%M</span> min</li> " +
//         "<li><span>%S</span> sec</li>"
//     )
//   );
// });

// initialize and configuration for wow js - animations
wow = new WOW({
  animateClass: "animated",
  offset: 150,
  mobile: false,
  callback: function(box) {
    //console.log("WOW: animating <" + box.tagName.toLowerCase() + ">")
  }
});
wow.init();

// initialize tooltips and popovers
$(function() {
  $('[data-toggle="tooltip"]').tooltip();
  $("[data-toggle=popover]").popover();
});

// smoth scroll
$(".navbar-nav li a[href^='#']").on("click", function(e) {
  // prevent default anchor click behavior
  e.preventDefault();

  // store hash
  var hash = this.hash;

  // animate
  $("html, body").animate(
    {
      scrollTop: $(this.hash).offset().top
    },
    300,
    function() {
      // when done, add hash to url
      // (default click behaviour)
      window.location.hash = hash;
    }
  );
});

// // Google maps configuration
// // set your latitude, longitude and address of any point on Google Maps - http://www.gps-coordinates.net/
// // Google maps reference - https://developers.google.com/maps/
// // You need API key - https://developers.google.com/maps/documentation/javascript/get-api-key
// // place your api key in link to script  <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_API_KEY"></script>
// var map;
// var mapAddress = new google.maps.LatLng(52.406374, 16.925168100000064);

// function initialize() {
//   var roadAtlasStyles = [
//     {
//       featureType: "road.highway",
//       elementType: "geometry",
//       stylers: [
//         {
//           saturation: -100
//         },
//         {
//           lightness: -8
//         },
//         {
//           gamma: 1.18
//         }
//       ]
//     },
//     {
//       featureType: "road.arterial",
//       elementType: "geometry",
//       stylers: [
//         {
//           saturation: -100
//         },
//         {
//           gamma: 1
//         },
//         {
//           lightness: -24
//         }
//       ]
//     },
//     {
//       featureType: "poi",
//       elementType: "geometry",
//       stylers: [
//         {
//           saturation: -100
//         }
//       ]
//     },
//     {
//       featureType: "administrative",
//       stylers: [
//         {
//           saturation: -100
//         }
//       ]
//     },
//     {
//       featureType: "transit",
//       stylers: [
//         {
//           saturation: -100
//         }
//       ]
//     },
//     {
//       featureType: "water",
//       elementType: "geometry.fill",
//       stylers: [
//         {
//           saturation: -100
//         }
//       ]
//     },
//     {
//       featureType: "road",
//       stylers: [
//         {
//           saturation: -100
//         }
//       ]
//     },
//     {
//       featureType: "administrative",
//       stylers: [
//         {
//           saturation: -100
//         }
//       ]
//     },
//     {
//       featureType: "landscape",
//       stylers: [
//         {
//           saturation: -100
//         }
//       ]
//     },
//     {
//       featureType: "poi",
//       stylers: [
//         {
//           saturation: -100
//         }
//       ]
//     },
//     {}
//   ];

//   var mapOptions = {
//     zoom: 15,
//     scrollwheel: false,
//     center: mapAddress,
//     mapTypeControlOptions: {
//       mapTypeIds: [google.maps.MapTypeId.ROADMAP, "usroadatlas"]
//     }
//   };

//   map = new google.maps.Map(document.getElementById("map-canvas"), mapOptions);

//   var styledMapOptions = {};

//   var marker = new google.maps.Marker({
//     position: mapAddress,
//     map: map
//   });

//   var usRoadMapType = new google.maps.StyledMapType(
//     roadAtlasStyles,
//     styledMapOptions
//   );

//   map.mapTypes.set("usroadatlas", usRoadMapType);
//   map.setMapTypeId("usroadatlas");
// }

// google.maps.event.addDomListener(window, "load", initialize);
