import store from './store'

export const emptyTemplate = `
  <div class="error">
    <img src="/assets/images/empty.svg" />
    <h2>Esta pasta encontra-se vazia</h2>
  </div>
`

export const fetchError = `
  <div class="error">
    <img src="/assets/images/error.svg" />
    <h2>Ocorreu um erro em sua requisição. Tente atualizar a página.</h2>
  </div>
`

export const bodyTemplate = () => {
  const {data: {loading}} = store
  const data = loading ? new Array(12).fill({}) : store.currentList
  return `
    <ul class="files" data-loading="${loading}">
      ${data.map(item => {
        const isFile = item.fileId !== null
        return `
          <li>
            <button data-id="${isFile ? item.fileId : item.id}" data-file="${isFile}">
              ${isFile ? '<i class="fas fa-file-alt"></i>' : '<i class="fas fa-folder"></i>'}
              <span data-name="${item.name}"></span>
            </button>
          </li>
        `
      }).join('')}
    </ul>
  `
}
export const breadCumbTemplate = () => {
  const breadCumb = [{
    name: store.data.userName,
    id: null
  }]
  let i = store.data.currentId
  while (i !== null) {
    const {name, id, parentId} = store.data.list.filter(item => item.id === i)[0] ?? {}
    breadCumb.splice(1, 0, {
      name,
      id
    })
    i = parentId
  }
  return breadCumb.map(item => `
    <li data-loading="${store.data.loading}">
      <button ${item.id !== null ? `data-id="${item.id}"` : ''}>
        ${item.name}
      </button>
    </li>
  `).join('')
}
