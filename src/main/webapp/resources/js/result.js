$(function () {
	var org = $("#camp0");
	org.hide();
	var apiLength = 0;
    var api_key =
      "PZwX%2BV1nRQ9MeukR1fUa4An%2FZQe0m1hDTLJmrEJZyJtYN8T85VrP4RD1ACUAYN4mriEWKsKpJiVvTUsgvLcTYg%3D%3D";
    var req_url = `http://apis.data.go.kr/B551011/GoCamping/basedList?serviceKey=${api_key}&MobileOS=ETC&MobileApp=TestApp&_type=json`;

    fetch(req_url)
      .then((res) => res.json())
      .then((myData) => {
       apiLength = myData.response.body.totalCount;
        req_url =
          "http://apis.data.go.kr/B551011/GoCamping/basedList?serviceKey=" +
          api_key +
          "&numOfRows=" +
          apiLength +
          "&MobileOS=ETC&MobileApp=TestApp&_type=json";

        fetch(req_url)
          .then((res) => res.json())
          .then((myData) => {
 	console.log(myData);
	 var resultCnt = apiLength;

	for (let i = 0; i < resultCnt; i++) {
		var kw_camp = document.getElementById("search_camp_name").value;
		let rows = myData.response.body.items.item[i];
		if(rows.facltNm.indexOf(kw_camp)>-1){
		var item = $("#camp0").clone();
		item.attr("id", "camp" + (i + 1));

		var title = rows.facltNm;
		item.find(".info-title").text(title);
		var phone = rows.tel;
		var address = rows.addr1+" "+rows.addr2;

		item.find(".info-address").text("주소: "+address);
		if(phone!="")
		item.find(".info-phone").text("전화번호: "+phone);
		if(rows.firstImageUrl!=undefined)
		 item.find(".img").attr("src",rows.firstImageUrl );
		// const score = Math.floor(Math.random() * 6);
		// item.find(".score").text(score + ".0");
		// var scorebg = item.find(".score");
		// switch (score) {
		// 	case 0:
		// 		scorebg.css("background-color", "red");
		// 		break;
		// 	case 1:
		// 		scorebg.css("background-color", "orange");
		// 		break;
		// 	case 2:
		// 		scorebg.css("background-color", "yellow");
		// 		scorebg.css("color", "var(--fc-black)");
		// 		break;
		// 	case 3:
		// 		scorebg.css("background-color", "yellowgreen");
		// 		break;
		// 	case 4:
		// 		scorebg.css("background-color", "yellowgreen");
		// 		break;
		// 	case 5:
		// 		scorebg.css("background-color", "var(--primary-green)");
		// 		break;
		// 	default:
		// 		scorebg.css("background-color", "red");
		// 		break;
		// }

		// $(".reserv").click(function(){
		// 	window.open(rows.resveUrl);
		// 	// $(location).attr("href", rows.resveUrl)
		// });
		item.find(".reserv").click(function(){
			if(rows.resveUrl!="")
				window.open(rows.resveUrl);
			else
			window.open(rows.homepage);
			
			});
		item.appendTo(".camp-list");
		item.show();
	}
	}

	
});
});
	var mapDiv = document.getElementById("map");
	var map = new naver.maps.Map(mapDiv, {
		center: new naver.maps.LatLng(37.3595704, 127.10599),
		zoom: 12,
		zoomControl: true,
	});

	//pin icon
	var markerImageUrl = "/assets/images/common/pin.png";
	var markerImageSize = new naver.maps.Size(38, 50);
	var markerImageOptions = {
		url: markerImageUrl,
		size: markerImageSize,
	};
	var marker = new naver.maps.Marker({
		position: new naver.maps.LatLng(37.3595704, 127.10599),
		map: map,
		icon: markerImageOptions,
	});
});
