class CreateTalks < ActiveRecord::Migration
  def change
    create_table :talks do |t|
      t.string :speaker
      t.string :sentence
      t.integer :conversation_id
      t.boolean :question
      t.boolean :exclamation
      t.boolean :knowledge
      t.string :subject
      t.string :verb
      t.string :complement
      t.string :adjective
      t.string :time
      t.string :time_precision
      t.string :answer_template

      t.timestamps
    end
  end
end
