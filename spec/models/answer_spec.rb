# == Schema Information
#
# Table name: answers
#
#  id          :integer          not null, primary key
#  category_id :integer
#  sentence    :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

require 'spec_helper'

describe Answer do
	
	before do
		@answer = Answer.new(category_id: 1, sentence: "foobar")
	end
		
	subject {@answer}
	
	# ===========================================
	# ATTR TESTS
	
	it {should respond_to(:category_id)}
	it {should respond_to(:sentence)}
	
	it {should be_valid}
	
	# ===========================================
	# VALIDATIONS TESTS
	
	describe "when category_id is not present" do
		before {@answer.category_id = ""}
		it {should be_valid}
	end
	
	describe "when sentence is not present" do
		before {@answer.sentence = ""}
		it {should be_valid}
	end
	
end
