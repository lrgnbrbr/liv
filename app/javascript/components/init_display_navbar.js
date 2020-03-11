const initDisplayNavbar = () => {
  const inputs = document.querySelectorAll('input')
  if (inputs) {
    inputs.forEach((input) => {
      input.addEventListener("focusin", (e) => {
        const navbarElt = document.querySelector("#hide-navbar");
        navbarElt.style.display = 'none'
      })
      input.addEventListener("focusout", (e) => {
        const navbarElt = document.querySelector("#hide-navbar");
        navbarElt.style.display = 'flex'
      })
    })
  }
  const textareas = document.querySelectorAll('textarea');
    if (textareas) {
    textareas.forEach((textarea) => {
      textarea.addEventListener("focusin", (e) => {
        const navbarElt = document.querySelector("#hide-navbar");
        navbarElt.style.display = 'none'
      })
      textarea.addEventListener("focusout", (e) => {
        const navbarElt = document.querySelector("#hide-navbar");
        navbarElt.style.display = 'flex'
      })
    })
  }
}

export { initDisplayNavbar }
