class Kigging < ApplicationRecord
  belongs_to :actor, class_name: 'Person'
  belongs_to :kigurumi
end
