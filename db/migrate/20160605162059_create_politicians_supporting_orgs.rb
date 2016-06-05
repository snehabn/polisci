class CreatePoliticiansSupportingOrgs < ActiveRecord::Migration
  def change
    create_table :politicians_supporting_orgs do |t|
      t.integer :supporting_org_id
      t.integer :politician_id
    end
  end
end
