class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.json :vote
      t.integer :candidate_id
    end
  end
end
