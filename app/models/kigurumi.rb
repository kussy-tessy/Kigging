class Kigurumi < ApplicationRecord
  belongs_to :owner, class_name: 'Person'

  def latest
    Kigging.where(kigurumi: self).order(kig_date: :desc).first
  end
end
