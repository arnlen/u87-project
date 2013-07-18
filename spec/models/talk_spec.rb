#!/bin/env ruby
# encoding: utf-8

# == Schema Information
#
# Table name: talks
#
#  id              :integer          not null, primary key
#  speaker         :string(255)
#  sentence        :string(255)
#  conversation_id :integer
#  question        :boolean
#  exclamation     :boolean
#  knowledge       :boolean
#  subject         :string(255)
#  verb            :string(255)
#  complement      :string(255)
#  adjective       :string(255)
#  time            :string(255)
#  time_precision  :string(255)
#  answer_template :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#

require 'spec_helper'

describe Talk do

	before do
		@talk = Talk.new(
			speaker: "u87",
			sentence: "foobar foobar",
			conversation_id: 1,
			question: true,
			exclamation: true,
			knowledge: true,
			subject: "Me",
			verb: "Être",
			complement: "Toi",
			adjective: "Beau",
			time: "past",
			time_precision: "2 days ago",
			answer_template: "1 + 2")
	end
	
	subject {@talk}
	
	# ===========================================
	# ATTR TESTS
	
	it {should respond_to(:speaker)}
	it {should respond_to(:sentence)}
	it {should respond_to(:conversation_id)}
	it {should respond_to(:question)}
	it {should respond_to(:exclamation)}
	it {should respond_to(:knowledge)}
	it {should respond_to(:subject)}
	it {should respond_to(:verb)}
	it {should respond_to(:complement)}
	it {should respond_to(:adjective)}
	it {should respond_to(:time)}
	it {should respond_to(:time_precision)}
	it {should respond_to(:answer_template)}
	
	it {should be_valid}
	
	# ===========================================
	# VALIDATIONS TESTS
	
	describe "when speaker is not present" do
		before {@talk.speaker = ""}
		it {should_not be_valid}
	end
	
	describe "when sentence is not present" do
		before {@talk.sentence = ""}
		it {should_not be_valid}
	end

	describe "when conversation_id is not present" do
		before {@talk.conversation_id = ""}
		it {should_not be_valid}
	end
	
	describe "when question is not present" do
		before {@talk.question = ""}
		it {should be_valid}
	end
	
	describe "when exclamation is not present" do
		before {@talk.exclamation = ""}
		it {should be_valid}
	end
	
	describe "when knowledge is not present" do
		before {@talk.knowledge = ""}
		it {should be_valid}
	end

	describe "when subject is not present" do
		before {@talk.subject = ""}
		it {should_not be_valid}
	end
	
	describe "when verb is not present" do
		before {@talk.verb = ""}
		it {should_not be_valid}
	end
	
	describe "when complement is not present" do
		before {@talk.complement = ""}
		it {should be_valid}
	end
	
	describe "when adjective is not present" do
		before {@talk.adjective = ""}
		it {should be_valid}
	end
	
	describe "when time is not present" do
		before {@talk.time = ""}
		it {should be_valid}
	end
	
	describe "when time_precision is not present" do
		before {@talk.time_precision = ""}
		it {should be_valid}
	end
	
	describe "when answer_template is not present" do
		before {@talk.answer_template = ""}
		it {should be_valid}
	end

end
