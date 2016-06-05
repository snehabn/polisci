class CreateBills < ActiveRecord::Migration
  def change
    create_table :bills do |t|
      t.string :name
      t.boolean :passed
      t.integer :issue_id
      t.integer :year

      t.timestamps null:false
    end
  end
end
