class DiarySerializer < ActiveModel::Serializer
  attributes :id, :entry, :comment
end
