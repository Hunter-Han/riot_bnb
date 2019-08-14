import "bootstrap";
import $ from 'jquery';
import 'select2';
import 'select2/dist/css/select2.css';

import { initUpdateNavbarOnScroll } from '../components/navbar';
initUpdateNavbarOnScroll();

const initSelect2 = () => {
  $('.select2').select2();
};
