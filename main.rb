require 'pp'

class Controller
  def self.call(env)
    new(env).action
  end

  def initialize(env)
    @env = env
  end
end

class Router
  def initialize(routes)
    @routes = routes
  end

  def call(env)
    @routes[env['PATH_INFO']]&.(env) || [404, {}, ['404, Not Found']]
  end
end
