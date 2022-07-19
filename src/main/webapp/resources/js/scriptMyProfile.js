let basicButton = document.getElementById('basicButton');
let interestsButton = document.getElementById('interestsButton');
let typeButton = document.getElementById('typeButton');
let findInfoButton = document.getElementById('findInfoButton');
let photoButton = document.getElementById('photoButton');

let buttonChangeBasic = document.getElementById('buttonChangeBasic');
let buttonChangeInterests = document.getElementById('buttonChangeInterests');
let buttonChangeType = document.getElementById('buttonChangeType');
let buttonChangeFind = document.getElementById('buttonChangeFind');

let basicInfo = document.getElementById('basicInfo');
let interestsInfo = document.getElementById('interestsInfo');
let typeInfo = document.getElementById('typeInfo');
let findInfo = document.getElementById('findInfo');
let photoInfo = document.getElementById('photoInfo');

let basicForma = document.getElementById('basicForma');
let inerestsForma = document.getElementById('interestsForma');
let typeForma = document.getElementById('typeForma');
let findForma = document.getElementById('findForma');
/*Основная информация*/
basicButton.onclick = function (){
	basicInfo.style.display = 'block';
	interestsInfo.style.display = 'none';
	typeInfo.style.display = 'none';
	findInfo.style.display = 'none';
	photoInfo.style.display = 'none';

	findForma.style.display = 'none';
	typeForma.style.display = 'none';
	inerestsForma.style.display = 'none';
	basicForma.style.display = 'none';

	interestsButton.style.height = '30px';
	interestsButton.style.borderRadius = '30px 30px 0px 0px';
	interestsButton.style.marginTop = "0px";
	interestsButton.style.paddingTop = "3px";

	typeButton.style.height = '30px';
	typeButton.style.borderRadius = '30px 30px 0px 0px';
	typeButton.style.marginTop = "0px";
	typeButton.style.paddingTop = "3px";

	findInfoButton.style.height = '30px';
	findInfoButton.style.borderRadius = '30px 30px 0px 0px';
	findInfoButton.style.marginTop = "0px";
	findInfoButton.style.paddingTop = "3px";

	photoButton.style.height = '30px';
	photoButton.style.borderRadius = '30px 30px 0px 0px';
	photoButton.style.marginTop = "0px";
	photoButton.style.paddingTop = "3px";

	basicButton.style.borderRadius = '10px 10px 0px 0px';
	basicButton.style.paddingTop = "6px";
}
/*интересы*/
interestsButton.onclick = function (){
	basicInfo.style.display = 'none';
	interestsInfo.style.display = 'block';
	typeInfo.style.display = 'none';
	findInfo.style.display = 'none';
	photoInfo.style.display = 'none';

	findForma.style.display = 'none';
	typeForma.style.display = 'none';
	inerestsForma.style.display = 'none';
	basicForma.style.display = 'none';

	basicButton.style.height = '30px';
	basicButton.style.borderRadius = '30px 30px 0px 0px';
	basicButton.style.marginTop = "0px";
	basicButton.style.paddingTop = "3px";

	typeButton.style.height = '30px';
	typeButton.style.borderRadius = '30px 30px 0px 0px';
	typeButton.style.marginTop = "0px";
	typeButton.style.paddingTop = "3px";

	findInfoButton.style.height = '30px';
	findInfoButton.style.borderRadius = '30px 30px 0px 0px';
	findInfoButton.style.marginTop = "0px";
	findInfoButton.style.paddingTop = "3px";

	photoButton.style.height = '30px';
	photoButton.style.borderRadius = '30px 30px 0px 0px';
	photoButton.style.marginTop = "0px";
	photoButton.style.paddingTop = "3px";

	interestsButton.style.borderRadius = '10px 10px 0px 0px';
	interestsButton.style.paddingTop = "6px";

}
/*Типаж*/
typeButton.onclick = function (){
	basicInfo.style.display = 'none';
	interestsInfo.style.display = 'none';
	typeInfo.style.display = 'block';
	findInfo.style.display = 'none';
	photoInfo.style.display = 'none';

	findForma.style.display = 'none';
	typeForma.style.display = 'none';
	inerestsForma.style.display = 'none';
	basicForma.style.display = 'none';

	basicButton.style.height = '30px';
	basicButton.style.borderRadius = '30px 30px 0px 0px';
	basicButton.style.marginTop = "0px";
	basicButton.style.paddingTop = "3px";

	interestsButton.style.height = '30px';
	interestsButton.style.borderRadius = '30px 30px 0px 0px';
	interestsButton.style.marginTop = "0px";
	interestsButton.style.paddingTop = "3px";

	findInfoButton.style.height = '30px';
	findInfoButton.style.borderRadius = '30px 30px 0px 0px';
	findInfoButton.style.marginTop = "0px";
	findInfoButton.style.paddingTop = "3px";

	photoButton.style.height = '30px';
	photoButton.style.borderRadius = '30px 30px 0px 0px';
	photoButton.style.marginTop = "0px";
	photoButton.style.paddingTop = "3px";


	typeButton.style.borderRadius = '10px 10px 0px 0px';
	typeButton.style.paddingTop = "6px";
}
/*кого ищу*/
findInfoButton.onclick = function (){
	basicInfo.style.display = 'none';
	interestsInfo.style.display = 'none';
	typeInfo.style.display = 'none';
	findInfo.style.display = 'block';
	photoInfo.style.display = 'none';

	findForma.style.display = 'none';
	typeForma.style.display = 'none';
	inerestsForma.style.display = 'none';
	basicForma.style.display = 'none';

	basicButton.style.height = '30px';
	basicButton.style.borderRadius = '30px 30px 0px 0px';
	basicButton.style.marginTop = "0px";
	basicButton.style.paddingTop = "3px";

	interestsButton.style.height = '30px';
	interestsButton.style.borderRadius = '30px 30px 0px 0px';
	interestsButton.style.marginTop = "0px";
	interestsButton.style.paddingTop = "3px";

	typeButton.style.height = '30px';
	typeButton.style.borderRadius = '30px 30px 0px 0px';
	typeButton.style.marginTop = "0px";
	typeButton.style.paddingTop = "3px";

	photoButton.style.height = '30px';
	photoButton.style.borderRadius = '30px 30px 0px 0px';
	photoButton.style.marginTop = "0px";
	photoButton.style.paddingTop = "3px";

	findInfoButton.style.borderRadius = '10px 10px 0px 0px';
	findInfoButton.style.paddingTop = "6px";
}
/*фото*/
photoButton.onclick = function (){
	basicInfo.style.display = 'none';
	interestsInfo.style.display = 'none';
	typeInfo.style.display = 'none';
	findInfo.style.display = 'none';
	photoInfo.style.display = 'block';

	findForma.style.display = 'none';
	typeForma.style.display = 'none';
	inerestsForma.style.display = 'none';
	basicForma.style.display = 'none';

	basicButton.style.height = '30px';
	basicButton.style.borderRadius = '30px 30px 0px 0px';
	basicButton.style.marginTop = "0px";
	basicButton.style.paddingTop = "3px";

	interestsButton.style.height = '30px';
	interestsButton.style.borderRadius = '30px 30px 0px 0px';
	interestsButton.style.marginTop = "0px";
	interestsButton.style.paddingTop = "3px";

	typeButton.style.height = '30px';
	typeButton.style.borderRadius = '30px 30px 0px 0px';
	typeButton.style.marginTop = "0px";
	typeButton.style.paddingTop = "3px";

	findInfoButton.style.height = '30px';
	findInfoButton.style.borderRadius = '30px 30px 0px 0px';
	findInfoButton.style.marginTop = "0px";
	findInfoButton.style.paddingTop = "3px";

	
	photoButton.style.borderRadius = '10px 10px 0px 0px';
	photoButton.style.paddingTop = "6px";
}

buttonChangeBasic.onclick = function(){
	basicInfo.style.display = 'none';
	interestsInfo.style.display = 'none';
	typeInfo.style.display = 'none';
	findInfo.style.display = 'none';
	photoInfo.style.display = 'none';

	basicForma.style.display = 'block';
	typeForma.style.display = 'none';
	findForma.style.display = 'none';
	inerestsForma.style.display = 'none';
}

buttonChangeInterests.onclick = function(){
	basicInfo.style.display = 'none';
	interestsInfo.style.display = 'none';
	typeInfo.style.display = 'none';
	findInfo.style.display = 'none';
	photoInfo.style.display = 'none';

	inerestsForma.style.display = 'block';
	typeForma.style.display = 'none';
	findForma.style.display = 'none';
	basicForma.style.display = 'none';
}

buttonChangeType.onclick = function(){
	basicInfo.style.display = 'none';
	interestsInfo.style.display = 'none';
	typeInfo.style.display = 'none';
	findInfo.style.display = 'none';
	photoInfo.style.display = 'none';

	typeForma.style.display = 'block';
	findForma.style.display = 'none';
	inerestsForma.style.display = 'none';
	basicForma.style.display = 'none';
}

buttonChangeFind.onclick = function(){
	basicInfo.style.display = 'none';
	interestsInfo.style.display = 'none';
	typeInfo.style.display = 'none';
	findInfo.style.display = 'none';
	photoInfo.style.display = 'none';

	findForma.style.display = 'block';
	typeForma.style.display = 'none';
	inerestsForma.style.display = 'none';
	basicForma.style.display = 'none';
}