import $ from 'utils/jquery.config'

const set = Element => {
  const slidesToShow = parseInt(Element.getAttribute('data-items')) || 1
  const slidesToShowMD = parseInt(Element.getAttribute('data-items-md')) || slidesToShow
  const slidesToShowSM = parseInt(Element.getAttribute('data-items-sm')) || slidesToShowMD
  const slidesToShowXS = parseInt(Element.getAttribute('data-items-xs')) || slidesToShowSM
  const slidesToShowXXS = parseInt(Element.getAttribute('data-items-xxs')) || slidesToShowXS
  const arrow = Element.hasAttribute('data-arrow')
  console.log(Element, arrow)
  $(Element).slick({
    slidesToShow,
    slidesToScroll: 1,
    waitForAnimate: true,
    dots: Element.hasAttribute('data-dots'),
    arrow,
    prevArrow: arrow && '<button data-type="left"><i class="fas fa-angle-left"></i></button>',
    nextArrow: arrow && '<button data-type="right"><i class="fas fa-angle-right"></i></button>',
    infinite: Element.hasAttribute('data-infinite'),
    fade: Element.hasAttribute('data-fade'),
    autoplay: Element.hasAttribute('data-autoplay'),
    adaptiveHeight: Element.hasAttribute('data-adaptive-height'),
    focusOnSelect: Element.hasAttribute('data-focus-on-select'),
    ...Element.hasAttribute('data-append-arrow') && {
      appendArrows: $(Element.getAttribute('data-append-arrow'))
    },
    responsive: [
      {
        breakpoint: 1024,
        settings: {
          slidesToShow: slidesToShowMD
        }
      }, {
        breakpoint: 768,
        settings: {
          slidesToShow: slidesToShowSM
        }
      }, {
        breakpoint: 576,
        settings: {
          slidesToShow: slidesToShowXS
        }
      }, {
        breakpoint: 450,
        settings: {
          slidesToShow: slidesToShowXXS
        }
      }
    ]
  })
}

export default {
  set
}
