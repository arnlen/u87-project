class CreateKnowledges < ActiveRecord::Migration
  def change
    create_table :knowledges do |t|
      t.string :word
      t.string :usage
      t.datetime :validated_at
      t.integer :talk_id
      t.integer :category_id

      t.timestamps
    end
  end
end
