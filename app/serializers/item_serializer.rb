class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :completed, :list_id
end
