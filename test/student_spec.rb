require 'rspec'
require_relative './../app/student'

describe 'student class' do

  it 'should initialize student' do
    s = Student.new('chris', '12')
    s.name == 'chris'
    s.grade == '12'
  end
end