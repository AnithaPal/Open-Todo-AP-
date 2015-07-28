class ItemSerializer < ActiveModel::Serializer
  attributes :id, :description, :completed, :priority, :list_id
end
