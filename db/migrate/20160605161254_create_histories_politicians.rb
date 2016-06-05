class CreateHistoriesPoliticians < ActiveRecord::Migration
  def change
    create_table :histories_politicians do |t|
      t.integer :history
      t.integer :politician
    end
  end
end
