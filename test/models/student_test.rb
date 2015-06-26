require 'test_helper'

class StudentTest < ActiveSupport::TestCase
   test "get grade" do
     test_student = students(:three)
     assignment_test = assignments(:one)
     assert_equal 100, test_student.get_grade(assignment_test.id)
   end
end
