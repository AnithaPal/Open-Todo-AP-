class ListSerializer < ActiveModel::Serializer
  attributes :id, :name, :permission, :user_id
end
