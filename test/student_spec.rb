require 'rspec'
require_relative './../app/student'

describe 'student class' do

    before :each do
      @school = School.new
      @school.add("Bob", 12)
      @school.add("Chris", 12)
      @school.add("Steve", 10)
    end

    it "initializes school class" do
      expect(@school.class) == School
    end

    it "should add students to roster" do
      expect @school.all == !nil
    end

    it "should list all students in given grade" do
      expect(@school.grade(10)).to eq(["Steve"])
    end
end