class CreateCandidates < ActiveRecord::Migration
  def change
    create_table :candidates do |t|
      t.json :candidate
    end
  end
end
