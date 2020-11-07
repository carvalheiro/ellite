const store = {
  loading: false,
  token: localStorage.getItem('token'),
  list: [],
  userName: '',
  subscribers: [],
  currentId: null,
  fetchError: false
}


function setItems ({list = store.list, userName = store.userName, currentId = store.currentId, loading = store.loading, fetchError = store.fetchError }) {
  store.list = list
  store.userName = userName
  store.currentId = currentId
  store.loading = loading
  store.fetchError = fetchError
  store.subscribers.forEach(fn => fn())
}

function subscriber (fn) {
  store.subscribers.push(fn)
}

const Store = {
  setItems,
  subscriber,
  get data () {
    const {subscribers, ...Store} = store
    return {
      ...Store,
      list: [...store.list]
    }
  },
  get currentList () {
    return store.list.filter(item => item?.parentId === store.currentId)
  }
}
console.log('store: ', store)
export default Store

