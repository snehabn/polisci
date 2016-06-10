class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.json :vote
    end
  end
end
