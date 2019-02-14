//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require_tree .

const openMenu = () => {
    let menu = document.getElementById('menu')
    menu.style.display = 'block'
    setTimeout(function(){
        menu.style.opacity = '1'
    }, 10);
}