$(function () {
var resultCnt = 30	;

for(let i = 0; i<resultCnt; i++){

var item = $("#listitem0").clone();
item.attr("id", "listitem"+(i+1));
var name = ("캠핑장"+(i+1));

item.find(".camp-name").text(name);

var price = 39800+(i*100);
const score= Math.floor(Math.random()*6);
item.find(".score").text(score+".0");
var scorebg = item.find(".score")
switch(score){
	case 0:
		scorebg.css("background-color", "red") ;
		break;
	case 1:
		scorebg.css("background-color", "orange") ;
		break;
	case 2:
		scorebg.css("background-color", "yellow") ;
		scorebg.css("color","black");
		break;
	case 3:
		scorebg.css("background-color", "yellowgreen") ;
		break;
	case 4:
		scorebg.css("background-color", "yellowgreen") ;
		
		break;
		case 5:
			scorebg.css("background-color", "green") ;
			break;
	default:
		scorebg.css("background-color", "red") 
		break;

}
item.appendTo(".result_visible_grid");

}
console.log((item.height()+50));
$(".tmpgrid").css("height", (resultCnt+1)*(item.height()+54));
});





