class Kigging < ApplicationRecord
  belongs_to :actor, class_name: 'Person'
  belongs_to :kigurumi

  def how_many_days_ago
    (Date.today - self.kig_date).to_i
  end
end
