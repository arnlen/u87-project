# == Schema Information
#
# Table name: knowledges
#
#  id           :integer          not null, primary key
#  word         :string(255)
#  usage        :string(255)
#  validated_at :datetime
#  talk_id      :integer
#  category_id  :integer
#  created_at   :datetime
#  updated_at   :datetime
#

require 'spec_helper'

describe Knowledge do

	before do
		@knowledge = Knowledge.new(
			word: "foo",
			usage: "bar",
			validated_at: Time.now,
			talk_id: 1,
			category_id: 1)
	end
	
	subject {@knowledge}
	
	# ===========================================
	# ATTR TESTS
	
	it {should respond_to(:word)}
	it {should respond_to(:usage)}
	it {should respond_to(:validated_at)}
	it {should respond_to(:talk_id)}
	it {should respond_to(:category_id)}
	
	it {should be_valid}
	
	# ===========================================
	# VALIDATIONS TESTS
	
	describe "when word is not present" do
		before {@knowledge.word = ""}
		it {should_not be_valid}
	end
	
	describe "when usage is not present" do
		before {@knowledge.usage = ""}
		it {should be_valid}
	end

	describe "when validated_at is not present" do
		before {@knowledge.validated_at = ""}
		it {should be_valid}
	end
	
	describe "when talk_id is not present" do
		before {@knowledge.talk_id = ""}
		it {should_not be_valid}
	end

	describe "when category_id is not present" do
		before {@knowledge.category_id = ""}
		it {should_not be_valid}
	end

end
