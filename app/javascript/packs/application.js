// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs";
Rails.start();
window.Rails = Rails;
require("turbolinks").start()
// require("@rails/activestorage").start()
require("channels")
require('jquery')
import "bootstrap/dist/js/bootstrap"
import "bootstrap/dist/css/bootstrap"
require("../stylesheets/application")
import "@fortawesome/fontawesome-free/js/all";
import "./sb-admin-2"
import ahoy from "ahoy.js";
var jQuery = require('jquery')
// include jQuery in global and window scope (so you can access it globally)
// in your web browser, when you type $('.div'), it is actually refering to global.$('.div')
global.$ = global.jQuery = jQuery;
window.$ = window.jQuery = jQuery;
//Active Storage Direct Uploads
