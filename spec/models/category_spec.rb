# == Schema Information
#
# Table name: categories
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  definition :string(255)
#  created_at :datetime
#  updated_at :datetime
#

require 'spec_helper'

describe Category do

	before do
		@category = Category.new(name: "test", definition: "test")
	end
	
	subject {@category}
	
	# ===========================================
	# ATTR TESTS
	
	it {should respond_to(:name)}
	it {should respond_to(:definition)}
	
	it {should be_valid}
	
	# ===========================================
	# VALIDATIONS TESTS
	
	describe "when name is not present" do
		before {@category.name = ""}
		it {should_not be_valid}
	end
	
	describe "when definition is not present" do
		before {@category.definition = ""}
		it {should_not be_valid}
	end

end
