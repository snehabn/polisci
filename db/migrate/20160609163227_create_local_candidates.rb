class CreateLocalCandidates < ActiveRecord::Migration
  def change
     create_table :local_candidates do |t|
      t.json :local_candidate
    end
  end
end
