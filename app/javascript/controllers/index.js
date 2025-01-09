// Import and register all your controllers from the importmap via controllers/**/*_controller
import { eagerLoadControllersFrom } from "@hotwired/stimulus-loading"
import { application } from "controllers/application"
eagerLoadControllersFrom("controllers", application)

import Hideable from './hideable_controller'
application.register('hideable', Hideable)
