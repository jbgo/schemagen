module Schemagen
  class Resource
    attr_reader :name

    attr_reader :routes
    private :routes

    def initialize(controller, routes)
      @name = controller.singularize
      @routes = routes
    end
  end
end
