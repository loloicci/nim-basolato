import re, strformat
# framework
import ../../src/basolato/routing
import ../../src/basolato/middleware
# middleware
import app/middlewares/custom_headers_middleware
import app/middlewares/framework_middleware
import app/middlewares/always_create_cookie_middleware
# controller
import app/controllers/application_controller
import app/controllers/static_page_controller
import app/controllers/users_controller
import app/controllers/login_controller

routes:
  # Framework
  error Http404: http404Route
  error Exception: exceptionRoute
  before: before_framework

  # get "/": route(newApplicationController(request).hello())
  get "/": route(newStaticPageController(request).home())
  get "/help": route(newStaticPageController(request).help())
  get "/about": route(newStaticPageController(request).about())
  get "/contact": route(newStaticPageController(request).contact())
  get "/signup": route(newUsersController(request).create())
  post "/signup": route(newUsersController(request).store())

  get "/users/create": route(newUsersController(request).create())
  get "/users/@id":
    checkAuthToken(request).catch(Error303, &"/login?redirect={request.path}")
    route(newUsersController(request).show(@"id"))
  post "/users": route(newUsersController(request).store())

  get "/login": route(newLoginController(request).create())
  post "/login": route(newLoginController(request).store())
  post "/logout": route(newLoginController(request).destroy())

runForever()
