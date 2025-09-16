# Pin npm packages by running ./bin/importmap

pin "application"
pin "@hotwired/turbo-rails", to: "turbo.min.js"
pin "@hotwired/stimulus", to: "stimulus.min.js"
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js"
<<<<<<< HEAD
pin "@rails/ujs", to: "@rails/ujs.js"
=======
>>>>>>> a7d1a16c8a5c5666dd329ada4f6756b41bf0480e
pin_all_from "app/javascript/controllers", under: "controllers"
