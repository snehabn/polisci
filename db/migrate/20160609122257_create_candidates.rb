class CreateCandidates < ActiveRecord::Migration
  def change
    create_table :candidates do |t|
      t.json 'candidates'
    end
  end
end
