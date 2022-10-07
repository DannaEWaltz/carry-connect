class IntendedParentSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :password_digest
end
