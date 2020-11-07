import store from './store'
import {render, getTree} from './model'

store.subscriber(render)
getTree()
