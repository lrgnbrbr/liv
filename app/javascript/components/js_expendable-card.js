const thumbCards = document.querySelectorAll('.thumb')

const clickThumbCard = (e) => {
  const thumbCard = e.currentTarget
  const button = thumbCard.querySelector('.read_more')

  console.log(button)

  thumbCard.classList.toggle('active')

  if(thumbCard.classList.contains('active')) {
    button.innerHTML = 'En lire moins'
  } else {
    button.innerHTML = 'En lire plus'
  }
}

thumbCards.forEach((thumbCard) => {
  thumbCard.addEventListener('click', clickThumbCard)
})
