class History < ActiveRecord::Base
  has_many :politicians, through: :histories_politicians, foreign_key: "history_id"
end
