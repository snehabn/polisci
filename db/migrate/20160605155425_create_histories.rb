class CreateHistories < ActiveRecord::Migration
  def change
    create_table :histories do |t|
      t.integer :year
      t.string :political_title
      t.string :highest_degree
      t.string :work_title
      t.string :volunteer_experience
      t.string :location

      t.timestamps null: false
    end
  end
end
