# Pin npm packages by running ./bin/importmap

pin "application"
pin "@rails/ujs", to: "rails-ujs.js" # @7.1.3
pin "@hotwired/turbo-rails", to: "@hotwired--turbo-rails.js" # @8.0.16
pin "@hotwired/stimulus", to: "stimulus.min.js"
pin "@hotwired/turbo", to: "@hotwired--turbo.js" # @8.0.13
pin_all_from "app/javascript/controllers", under: "controllers"
pin "@rails/actioncable/src", to: "@rails--actioncable--src.js" # @8.0.201
