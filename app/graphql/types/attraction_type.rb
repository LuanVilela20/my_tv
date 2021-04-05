module Types
  class AttractionType < Types::BaseObject
    
    description "AttractionType"
    

    field :id, ID, null: false
    field :attraction_name, String, null: true
    field :description, String, null: true
    field :channel, Types::ChannelType, null: false
    field :kind, Types::KindType, null: false
    field :medium, Types::MediumType, null: false
    field :transmission_date, GraphQL::Types::ISO8601DateTime, null: true
    field :kind_id, Integer, null: false
    field :channel_id, Integer, null: true
    field :medium_id, Integer, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
