class CreateConversations < ActiveRecord::Migration
  def change
  	
  	execute "create extension hstore"
  	
    create_table :conversations do |t|
      t.integer :interlocutor_id
      t.string :ip
      t.datetime :reviewed_at
      t.hstore :subjects

      t.timestamps
    end
  end
end
