class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :politician_id
      t.integer :bill_id
      t.string :vote_decision

      t.timestamps null: false
    end
  end
end
