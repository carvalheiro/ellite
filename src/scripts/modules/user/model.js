import store from './store'
import {emptyTemplate, bodyTemplate, breadCumbTemplate, fetchError} from './view'
import {request} from 'utils/request'
const body = document.getElementById('filesBody')
const breadCumb = document.getElementById('breadcumb')

export function render () {
  breadCumb.innerHTML = breadCumbTemplate()
  body.innerHTML = handleBodyTemplate()
  Array.from(body.querySelectorAll('.files button')).forEach(el => el.addEventListener('click', handleClick))
  Array.from(breadCumb.querySelectorAll('button')).forEach(el => el.addEventListener('click', function () {
    console.log(this.getAttribute('data-id'))
    store.setItems({currentId: this.getAttribute('data-id')})
  }))
}

function handleClick (e) {
  const {currentTarget} = e
  e.preventDefault()
  const isFile = currentTarget.getAttribute('data-file') === 'true'
  const id = currentTarget.getAttribute('data-id')
  if (isFile) {
    handleDonwload(id)
  } else {
    store.setItems({currentId: id})
  }
}

export function getTree () {
  store.setItems({loading: true})
  request('/api/tree')
  .then(({list, userName}) => store.setItems({loading: false, list, userName}))
  .catch(() => store.setItems({fetchError: true, loading: false}))
}

function handleDonwload (id) {
  console.log(`donwload do arquivo com id: ${id}`)
}

function handleBodyTemplate () {
  switch (true) {
    case store.data.fetchError:
      return fetchError
    case !store.data.loading && store.currentList.length === 0:
      return emptyTemplate
    default:
      return bodyTemplate()
  }
}
