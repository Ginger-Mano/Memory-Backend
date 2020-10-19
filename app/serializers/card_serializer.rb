class CardSerializer < ActiveModel::Serializer
  attributes :id, :term_name, :definition, :image, :points, :image_front
end
