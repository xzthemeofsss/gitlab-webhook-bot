import Koa from 'koa'
import bodyParser from 'koa-bodyparser'
import router from './routers'

const app = new Koa()

app.use(bodyParser())
app.use(router.routes())
app.proxy = true

app.listen(3000, () => {
  console.log('Server started on port 3000')
})
