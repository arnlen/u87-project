class CreateInterlocutors < ActiveRecord::Migration
  def change
    create_table :interlocutors do |t|
      t.string :firstname
      t.string :lastname
      t.string :last_ip
      t.datetime :last_conversation_at
      t.string :first_ip

      t.timestamps
    end
  end
end
