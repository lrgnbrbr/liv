// app/javascript/components/init_select2.js
import $ from 'jquery';
import 'select2';

const initSelect2 = () => {
  const input = document.querySelector('#filter-ogranizations')
  const organizations = document.querySelectorAll('.organization')
  input.addEventListener('keyup', () => {
    console.log(input.value)
    organizations.forEach((organization) => {
      console.log(organization.dataset.zip)
      if (organization.dataset.zip.startsWith(input.value)) {
        organization.style.display = "block"
      } else {
        organization.style.display = "none"
      }
    })

  });



};

export { initSelect2 };
