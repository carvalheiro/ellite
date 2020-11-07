
const html = document.querySelector('html')
export const loader = (() => {
  return {
    init (transparency) {
      html.classList.add('loading')
      if (transparency) html.classList.add('loading-transparency')
    },
    stop () {
      html.classList.remove('loading', 'container')
    }
  }
})()

export default loader
