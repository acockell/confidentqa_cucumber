Dir[File.dirname(__FILE__) + '/lib/*.rb'].each {|file| require file }
require 'rspec/expectations'

Before do
  @right_triangle = Pythagorean.new
end
