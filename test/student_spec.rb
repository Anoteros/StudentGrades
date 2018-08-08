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
      expect(@school.all.length).to eq(3)

    end

    it "should not add add students to non-existent grades" do
      expect(@school.add("Tom", 20)).to eq("That grade does not exist!")
    end

    it "should add grade levels and teachers to roster" do

    end

    it "should list all students in given grade" do
      expect(@school.grade(10)).to eq(["Steve"])
      expect(@school.grade(12)).to eq(["Bob", "Chris"])
    end
end