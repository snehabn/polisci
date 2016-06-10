class CreateCandidateBios < ActiveRecord::Migration
  def change
     create_table :candidate_bios do |t|
      t.json :candidate_bio
      t.integer :candidate_id
    end
  end
end
