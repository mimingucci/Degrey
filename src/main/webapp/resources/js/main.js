
let navBar = document.querySelectorAll('.nav__bar-item')
let trangChu = document.querySelector('.header-main')
let trangChuFooter = document.querySelector('.header-footer')
let trangChuContainer = document.querySelector('.container')
let sanPham = document.querySelector('.sanpham-container')
let store = document.querySelector('.store-container')
let intro = document.querySelector('.introduction-container.store-container')
let flashSale = document.querySelector('.flash-sale')
let leftbtn = document.querySelector('.flash-sale-left')
let rightbtn = document.querySelector('.flash-sale-right')
let row = flashSale.querySelector('.row-grid')
let currentShowElementFlashSales = 0;
let currentPage = 0
const controlQuantity = document.querySelectorAll('.control-quantity')

const App = {
	init: () => {
		navBar[0].classList.add('active')
		trangChu.classList.remove('hidden')
		trangChuFooter.classList.remove('hidden')
		trangChuContainer.classList.remove('hidden')
	},
	handleChange: () => {
		navBar.forEach((nav, index) => {
			nav.onclick = () => {

				console.log(index)
				document.querySelector('.nav__bar-item.active').classList.remove('active')

				nav.classList.add('active')
				if (currentPage == 0) {

					trangChu.classList.add('hidden')
					trangChuFooter.classList.add('hidden')
					trangChuContainer.classList.add('hidden')
				}
				if (currentPage == 1) {
					sanPham.classList.add('hidden')
				}
				if (currentPage == 2) {
					store.classList.add('hidden')
				}
				if (currentPage == 3) {
					intro.classList.add('hidden')
				}
				currentPage = index
				if (currentPage == 0) {

					trangChu.classList.remove('hidden')
					trangChuFooter.classList.remove('hidden')
					trangChuContainer.classList.remove('hidden')
				}
				if (currentPage == 1) {
					sanPham.classList.remove('hidden')
				}
				if (currentPage == 2) {
					store.classList.remove('hidden')
				}
				if (currentPage == 3) {
					intro.classList.remove('hidden')
				}
			}
		})

	},
	handlerLayer: () => {

	},
	start: () => {
		App.init()
		App.handleChange()
		App.handlerLayer()
	}
}
App.start();
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





