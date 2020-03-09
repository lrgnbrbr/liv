const initSelect2 = () => {
  const inputMobile = document.querySelector('#filter-organizations');
  const inputWeb = document.querySelector('#filter-organizations-web');
  console.log (inputWeb)

  const organizations = document.querySelectorAll('.organization')

  if (inputMobile) {
    inputMobile.addEventListener('keyup', () => {
      organizations.forEach((organization) => {
        console.log(organization.dataset.zip)
        if (organization.dataset.zip.startsWith(inputMobile.value)) {
          organization.style.display = "block"
        } else {
          organization.style.display = "none"
        }
      })
    });
  }

  if (inputWeb) {
    inputWeb.addEventListener('keyup', () => {
      organizations.forEach((organization) => {
        console.log(organization.dataset.zip)
        if (organization.dataset.zip.startsWith(inputWeb.value)) {
          organization.style.display = "block"
        } else {
          organization.style.display = "none"
        }
      })
    });
  }
}

export { initSelect2 };
