require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
import "bootstrap/dist/js/bootstrap"
import "bootstrap/dist/css/bootstrap"
require("../stylesheets/application")
import "@fortawesome/fontawesome-free/js/all";
var jQuery = require('jquery')
// include jQuery in global and window scope (so you can access it globally)
// in your web browser, when you type $('.div'), it is actually refering to global.$('.div')
global.$ = global.jQuery = jQuery;
window.$ = window.jQuery = jQuery;
import "./sb-admin-2.js"
