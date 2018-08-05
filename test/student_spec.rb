require 'rspec'
require_relative './../app/student'

describe 'student class' do

    it "initializes school class" do
      x = School.new
      expect(x.class) == School
    end
end