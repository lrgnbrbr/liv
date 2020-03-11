import AOS from 'aos';
import 'aos/dist/aos.css';
const animate = () => {
  console.log("hello")
  AOS.init({
    duration: 1200,
  })
}
export default animate();

