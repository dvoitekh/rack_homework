require './main'

class HiController < Controller
  def action
    @response_text = 'Hi'
    [200, {}, [@response_text]]
  end
end

class HelloController < Controller
  def action
    @response_text = 'Hello'
    [200, {}, [@response_text]]
  end
end

Application = Router.new({
 '/hi' => HiController,
 '/hello' => HelloController
})
