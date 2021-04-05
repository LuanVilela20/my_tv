module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # TODO: remove me
    field :test_field, String, null: false,
      description: "An example field added by the generator"
    def test_field
      "Hello World!"
    end

    field :attractions,  
          [Types::AttractionType],
          null: false,
          description: "Attractions list"
    def attractions
      Attraction.all.order(:transmission_date)
    end

    field :channel,  
          [Types::ChannelType],
          null: false,
          description: "Search Channel by id or description" do
            argument :id, String, required: false, default_value: "0"
            argument :description, String, required: false, default_value: "Sem canal"
          end
    def channel(args)
      Channel.where(id: args[:id]).or(Channel.where(description: args[:description]))
    end

    field :kind,  
          [Types::KindType],
          null: false,
          description: "Search Kind by id or description" do
            argument :id, String, required: false, default_value: "0"
            argument :description, String, required: false, default_value: "Sem Kind"
          end
    def kind(args)
      Kind.where(id: args[:id]).or(Kind.where(description: args[:description]))
    end

    #rececbendo e listando uma lista
    field :teste,
          [Integer], null: false do
            argument :lista, [Integer], required: false  
          end
    def teste(args)
         valores = args[:lista]
        
    end  



  end
end
