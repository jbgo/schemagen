module Schemagen
  class RailsApp
    def initialize(rails_app)
      @app = rails_app
    end

    def resources
      route_inspector.grouped_routes.map do |controller, routes|
        Resource.new controller, routes
      end
    end

    private

    def route_inspector
      RouteInspector.new rails_routes
    end

    def rails_routes
      raw_rails_routes.map do |route|
        ActionDispatch::Routing::RouteWrapper.new route
      end
    end

    def raw_rails_routes
      Rails.application.routes.set.routes
    end
  end
end
