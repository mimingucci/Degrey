/**
 * 
 */
 
 let plusIndex=document.querySelectorAll('.fa-plus')
    let minusIndex=document.querySelectorAll('.fa-minus')
    let infoDescription=document.querySelectorAll('.description-product__detail')
    let titleDetail=document.querySelectorAll('h2')
    let linkAndShareIcon=document.querySelector('.slick-detail__product-items-other')
    let enableFix=document.querySelector('.left-info__detail-product__enable-fix')
    let tag=document.querySelector('.product-percent')
    let increaseButton=document.querySelector('.increase')
    
    let decreaseButton=document.querySelector('.decrease')
    let quantityButton=document.getElementById('quantity')
    let imgs=document.querySelector('.slick-detail__product')
     let quantityNumber=Number(document.getElementById('quantity').value) 
     
    
    function changeQuantity(){
     
      
      document.getElementById('quantity').value=quantityNumber;
    }
    increaseButton.addEventListener("click",  function(event){
  event.preventDefault()
})
 decreaseButton.addEventListener("click",  function(event){
  event.preventDefault()
})
quantityButton.addEventListener("onmouseover", function(event){
  event.preventDefault()
})
    increaseButton.onclick=()=>{
        ++quantityNumber;
        changeQuantity();
      }
      decreaseButton.onclick=()=>{
        if(quantityNumber>1){
          --quantityNumber;
          changeQuantity();
        }
      }
    changeQuantity();
   
    var onStart=function(){
      
      plusIndex[0].classList.add('hidden')
      plusIndex[1].classList.add('hidden')
      
    }
    var onClick=function(){
      const capacityPlusIndex=plusIndex.length;
      const capacityMinusIndex=minusIndex.length;
      for(let i=0; i<capacityPlusIndex; i++){
        minusIndex[i].onclick=()=>{
        minusIndex[i].classList.add('hidden')
        plusIndex[i].classList.remove('hidden')
        infoDescription[i].classList.add('hidden')
      }
      }
      for(let i=0; i<capacityPlusIndex; i++){
        plusIndex[i].onclick=()=>{
        plusIndex[i].classList.add('hidden')
        minusIndex[i].classList.remove('hidden')
        infoDescription[i].classList.remove('hidden')
      }
      }

    
      
    }
    
   document.body.onscroll=()=>{
    var heightOfBothElement=infoDescription[0].offsetHeight+infoDescription[1].offsetHeight;
        var enableFixHeight=document.querySelector('.left-info__detail-product__enable-fix').offsetHeight;
        var hieu=heightOfBothElement-enableFixHeight;
      
       if(plusIndex[0].classList.contains('hidden') && plusIndex[1].classList.contains('hidden')){
        
        
      if(document.documentElement.scrollTop<heightOfBothElement-260){
         enableFix.style.marginTop=`${window.scrollY}px`;
         linkAndShareIcon.style.marginTop=`${window.scrollY}px`;
         
         tag.style.marginTop=`${window.scrollY}px`;
      }
    }
    if(plusIndex[0].classList.contains('hidden') && document.documentElement.scrollTop<heightOfBothElement-infoDescription[1].offsetHeight-260){
      enableFix.style.marginTop=`${window.scrollY}px`;
      linkAndShareIcon.style.marginTop=`${window.scrollY}px`;
      
      tag.style.marginTop=`${window.scrollY}px`;
    }

      
   }
    
    onStart();
    onClick();
    document.querySelectorAll('.slick-next').onclick=(event)=>{
	    event.preventDefault();
}
   
     

   