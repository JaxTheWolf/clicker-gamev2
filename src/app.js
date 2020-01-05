const express = require(`express`)
const { join } = require(`path`)
const app = express()

app.get(`/click`, (req, res) => {
  res.sendFile(join(__dirname, `index.html`))
})

app.use(`/public`, express.static(join(__dirname, `public`)))

app.listen(6969)