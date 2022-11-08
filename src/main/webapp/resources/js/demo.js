

 var exit = document.getElementsByClassName('search')[0].getElementsByClassName('button-exit')[0];
 exit.onclick = function() {
 	if (!document.getElementsByClassName('search')[0].classList.contains('hidden')) {
 		document.getElementsByClassName('search')[0].classList.add('hidden');
 		document.querySelector('.layer').classList.add('hidden')
 	} else {
 		document.getElementsByClassName('search')[0].classList.remove('hidden');
 		document.querySelector('.layer').classList.add('hidden')
 	}
 }
 var serach_input = document.querySelector('.header__info-search');
 serach_input.onclick = function() {
 	document.querySelector('.search').classList.remove('hidden');
 	document.querySelector('.layer').classList.remove('hidden')
 }
 var cart = document.querySelector('.header__info-item__adder');
 cart.onclick = function() {
 	if (document.querySelector('.header__info-items-lists').classList.contains('hidden')) {
 		document.querySelector('.header__info-items-lists').classList.remove('hidden');
 	} else {
 		document.querySelector('.header__info-items-lists').classList.add('hidden');
 	}
 }

 window.onscroll = function() {
 	if (document.documentElement.scrollTop > 50) {
 		document.querySelector('.nav').classList.add('nav-scroll')
 	} else {
 		document.querySelector('.nav').classList.remove('nav-scroll')
 	}
 }
 document.querySelector('.layer').onclick = () => {
 	document.getElementsByClassName('search')[0].classList.add('hidden');
 	document.querySelector('.layer').classList.add('hidden')
 }