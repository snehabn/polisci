class CreateSupportingOrgs < ActiveRecord::Migration
  def change
    create_table :supporting_orgs do |t|
      t.string :name
      t.integer :contribution_amount

      t.timestamps null: false
    end
  end
end
