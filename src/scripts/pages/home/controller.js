import $ from 'utils/jquery.config'
import {testimonyList} from './model'
if (window.home) {
  $(testimonyList).on('beforeChange', function (slick, currentSlide, nextSlide) {
    console.log(slick, currentSlide, nextSlide)
  })

  Array.from(document.querySelectorAll('.toggle-faq')).forEach(element => element.addEventListener(
    'click',
    function () {
      const parent = this.closest('.details')
      const body = parent.querySelector('.body')
      const isToggled = parent.hasAttribute('data-open')
      if (isToggled) {
        parent.removeAttribute('data-open')
      } else {
        body.style.height = body.scrollHeight + 'px'
        parent.setAttribute('data-open', 'true')
      }
    }))
}

