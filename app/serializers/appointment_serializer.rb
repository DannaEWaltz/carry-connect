class AppointmentSerializer < ActiveModel::Serializer
  attributes :id, :summary, :question
end
