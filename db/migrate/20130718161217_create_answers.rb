class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.integer :category_id
      t.string :sentence

      t.timestamps
    end
  end
end
