class InstanceSerializer < ActiveModel::Serializer
  attributes :id, :milestone, :medication, :results
  has_one :intended_parent
  has_one :gestational_carrier
end
