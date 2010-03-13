module Anywhere
  class Counter
    def initialize(app)
      @app = app
    end
    
    def call(env)
      Domain.hit! Rack::Request.new(env).host
      @app.call(env)
    end
  end
end