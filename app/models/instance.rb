class Instance < ApplicationRecord
  belongs_to :intended_parent
  belongs_to :gestational_carrier
end
