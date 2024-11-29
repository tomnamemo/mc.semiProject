$(function () {
  var org = $("#camp0");
  var val_name = sessionStorage.getItem("campName");
  console.log(sessionStorage.getItem("campName"));
  document.getElementById("search_camp_name").value = val_name;
  $("#search_camp_name").on("propertychange change paste input", function () {
    val_name = $("#search_camp_name").val();

  });


  $("#camp_searching_button").click(function () {
    sessionStorage.setItem("campName", val_name);
  });

  org.hide();
  $(".result").hide();
  var apiLength = 0;
  var api_key =
    "PZwX%2BV1nRQ9MeukR1fUa4An%2FZQe0m1hDTLJmrEJZyJtYN8T85VrP4RD1ACUAYN4mriEWKsKpJiVvTUsgvLcTYg%3D%3D";
  var req_url = `http://apis.data.go.kr/B551011/GoCamping/basedList?serviceKey=${api_key}&MobileOS=ETC&MobileApp=TestApp&_type=json`;

  $(".lds-grid").show();
  $(".result").hide();
  fetch(req_url)
    .then((res) => res.json())
    .then((myData) => {
      // apiLength = myData.response.body.totalCount;
      apiLength = 50;
      req_url =
        "http://apis.data.go.kr/B551011/GoCamping/basedList?serviceKey=" +
        api_key +
        "&numOfRows=" +
        apiLength +
        "&MobileOS=ETC&MobileApp=TestApp&_type=json";

      fetch(req_url)
        .then((res) => res.json())
        .then((myData) => {
          var kw_camp = document.getElementById("search_camp_name").value;
           var placeholder = $("#search_prov_name").find(".placeholder").text();
     
          for (let i = 0; i < apiLength; i++) {
            let rows = myData.response.body.items.item[i];
            // console.log(rows);
            if (rows.facltNm.indexOf(kw_camp) > -1 ) 
            {
              var item = $("#camp0").clone();
              item.attr("id", "camp" + (i + 1));

              var title = rows.facltNm;
              item.find(".info-title").text(title);
              var phone = rows.tel;
              var address = rows.addr1 + " " + rows.addr2;

              item.find(".info-address").text("주소: " + address);
              if (phone != "")
                item.find(".info-phone").text("전화번호: " + phone);
             // console.log(rows.firstImageUrl);
              if (rows.firstImageUrl != undefined && rows.firstImageUrl!="")
                item.find(".img").attr("src", rows.firstImageUrl);

              item.find(".reserv").click(function () {
                if (rows.resveUrl != "") window.open(rows.resveUrl);
                else window.open(rows.homepage);
              });
              item.appendTo(".camp-list");
              item.show();
            }
            $(".result").show();
            $(".lds-grid").hide();
          }
        });
    });

    // window.addEventListener("beforeunload", function (event) {
    //         alert(val_name);
    //   });


  //   $(window).unload(function() {
  
  //     window.localStorage.removeItem(val_name);
  //     document.getElementById("search_camp_name").value = null;
  //     alert(val_name);

  // });

  // var mapDiv = document.getElementById("map");
  // var map = new naver.maps.Map(mapDiv, {
  //   center: new naver.maps.LatLng(37.3595704, 127.10599),
  //   zoom: 12,
  //   zoomControl: true,
  // });

  // //pin icon
  // var markerImageUrl = "/assets/images/common/pin.png";
  // var markerImageSize = new naver.maps.Size(38, 50);
  // var markerImageOptions = {
  //   url: markerImageUrl,
  //   size: markerImageSize,
  // };
  // var marker = new naver.maps.Marker({
  //   position: new naver.maps.LatLng(37.3595704, 127.10599),
  //   map: map,
  //   icon: markerImageOptions,
  // });
});
