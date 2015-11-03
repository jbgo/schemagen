require 'schemagen/version'
require 'schemagen/rails_app'
require 'schemagen/resource'
require 'schemagen/route_inspector'

module Schemagen
  attr_reader :app

  def self.resources(rails_app)
    RailsApp.new(rails_app).resources
  end
end
