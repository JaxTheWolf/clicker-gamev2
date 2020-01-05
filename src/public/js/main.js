let pt = 0

$(() => {
  $(`.click`).click(() => {
    pt++
    alert(pt)
    $(`.pts`).html(pt)
  })
  $(".dt").click(() => {
    $(`.theme`).css(`href`, `/public/css/light.css`)
  })
  $(`.lt`).click(() => {
    $(`.theme`).css(`href`, `/public/css/dark.css`)
  })
})