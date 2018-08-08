require 'rspec'
require_relative './../app/student'



describe 'student class' do
    before :each do
      @school = School.new
      @school.add_grade_level("Mr. Rogers", 12)
      @school.add("Bob", 12)
      @school.add("Chris", 12)
      @school.add("Steve", 9)
    end

    it "initializes school class" do
      expect(@school.class) == School
    end

    it "should add students to roster" do
      @school.add("Chuck", 12)
      expect(@school.grade(12)).to include "Chuck"
    end

    it "should not add add students to non-existent grades" do
      expect(@school.add("Tom", 99)).to eq("Error: Class does not exist!")
    end

    it "should add grade levels and teachers to roster" do
      @school.add_grade_level("Mr. Rogan", 8)
      @school.add("Eddie", 8)
      expect(@school.grade(8)).to include("Eddie")

    end

    it "should list all students in given grade" do
      expect(@school.grade(12)).to eq(["Bob", "Chris"])
    end

    it "should sort grades numerically" do
      sorted = @school.sort
      expect sorted == '{:grade=>10, :teacher=>"Mr. Smith", :students=>["David", "Greg", "Jordan"]}
      {:grade=>12, :teacher=>"Mr. Rogers", :students=>["Bob", "Chris"]}'
    end
end