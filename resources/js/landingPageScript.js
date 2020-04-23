
document.getElementById('register').addEventListener('click',
function(){
  document.querySelector('.bg-modal').style.display = 'flex';
});


document.querySelector('.close').addEventListener('click',
function(){
  document.querySelector('.bg-modal').style.display = 'none';
});

/*
var modalBtn = document.querySelector('.register');
var modalBg = document.querySelector('.bg-modal');

modalBtn.addEventListener('click',
function(){
  modalBg.classList.add('bg-active')
});
*/
