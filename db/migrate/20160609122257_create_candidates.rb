class CreateCandidates < ActiveRecord::Migration
  def change
    create_table :candidates do |t|
      t.json 'candidate', 'local_candidate'
    end
  end
end
