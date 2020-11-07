import {toogleServices} from './model'
console.log(document.querySelectorAll('.toggleServices'))
Array.from(document.querySelectorAll('.toggleServices')).forEach((el) => el.addEventListener('click', toogleServices))
