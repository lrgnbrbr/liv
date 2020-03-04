const thumbCards = document.querySelectorAll('.thumb')

const clickThumbCard = (e) => {
  const thumbCard = e.currentTarget
  const button = thumbCard.querySelector('.read_more')

  thumbCard.classList.toggle('active')

  if(thumbCard.classList.contains('active')) {
    button.innerHTML = 'Read less'
  } else {
    button.innerHTML = 'Read more'
  }
}

thumbCards.forEach((thumbCard) => {
  thumbCard.addEventListener('click', clickThumbCard)
})
