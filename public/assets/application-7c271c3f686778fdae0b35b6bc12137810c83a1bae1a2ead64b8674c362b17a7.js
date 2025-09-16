import { Application } from "@hotwired/stimulus"
import { autoload } from "stimulus-importmap-autoloader"

const application = Application.start()
autoload(application)
// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails;
