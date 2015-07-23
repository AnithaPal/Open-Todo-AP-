class ItemSerializer < ActiveModel::Serializer
  attributes :id, :description, :completed, :list_id
end
