class CreateCampaignContacts < ActiveRecord::Migration
  def change
    create_table :campaign_contacts do |t|
      t.json :address
      t.json :web
      t.integer :candidate_id
    end
  end
end
