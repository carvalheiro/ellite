const header = document.getElementById('header')
const html = document.querySelector('html')
export default function toggleHeader () {
  const attr = header.getAttributeNode('data-menu-active')
  const attrhtml = html.getAttributeNode('data-menu-active')
  if (attr) {
    header.removeAttributeNode(attr)
    html.removeAttributeNode(attrhtml)
  } else {
    header.setAttribute('data-menu-active', true)
    html.setAttribute('data-menu-active', true)
  }
}
export const headerStatus = (() => {
  const viewbox = document.querySelector('body')
  const initialWhiteMode = header.getAttribute('data-white-mode')
  let currentScroll = 0
  const headerStatus = {
    active: false,
    hidden: false,
  }
  const suscribers = {
    list: [],
    execute () {
      this.list.forEach(fn => fn())
    },
    add (fn) {
      this.list.push(fn)
    }
  }
  function changeStatus ({active = headerStatus.active, hidden = headerStatus.hidden}) {
    if (active !== headerStatus.active || hidden !== headerStatus.hidden) {
      headerStatus.active = active
      headerStatus.hidden = hidden
      suscribers.execute()
    }
  }
  function setScroll (y) {
    changeStatus({
      active: y > 0, // element is scrooling
      hidden: y > 0 && y < currentScroll // user scrool to top
    })
    currentScroll = y
  }

  suscribers.add(() => {
    header.setAttribute('data-active', headerStatus.active)
    header.setAttribute('data-white-mode', headerStatus.active || initialWhiteMode)
    header.setAttribute('data-hidden', headerStatus.hidden)
  })

  return {
    setScroll,
    viewbox
  }

})()

