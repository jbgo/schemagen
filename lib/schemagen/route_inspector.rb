module Schemagen
  class RouteInspector
    attr_reader :routes

    def initialize(routes=[])
      @routes = routes
    end

    def grouped_routes
      user_defined_routes.group_by(&:controller)
    end

    private

    def user_defined_routes
      routes.reject { |r| r.controller.start_with?('rails/') }
    end
  end
end
