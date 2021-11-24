const express = require('express')
const app = express()
const port = 3000

app.get('/', (req, res) => {
  res.send('Hello World!')
})

app.post('/on_publish', (req, res) => {
  //res.send('Hello World!')
  const red_uri = 'rtmp://10.0.1.238:1935/live/live'
  console.log({'Location': red_uri})
  res.redirect(301, red_uri)
})

app.post('/on_done', (req, res) => {
  console.log('on_done')
  res.send('Hello World!')
})

app.listen(port, () => {
  console.log(`Example app listening at http://0.0.0.0:${port}`)
})