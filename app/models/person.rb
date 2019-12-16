class Person < ApplicationRecord
  has_many :kigurumis, foreign_key: 'owner_id'
  has_many :kiggings, foreign_key: 'actor_id'

  def wear(kigurumi, date)
    kiggings.create(kigurumi: kigurumi, kig_date: date) 
  end
end