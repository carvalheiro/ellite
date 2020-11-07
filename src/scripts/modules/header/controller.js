import toggleMenu, { headerStatus } from './model'
document.getElementById('menu-toggle')?.addEventListener?.('click', toggleMenu)
document.getElementById('close-menu')?.addEventListener?.('click', toggleMenu)

// controling desktop header Status
const { setScroll, viewbox } = headerStatus
setScroll(headerStatus.viewbox.scrollTop)
viewbox.addEventListener('scroll', () => {
  setScroll(viewbox.scrollTop)
})



