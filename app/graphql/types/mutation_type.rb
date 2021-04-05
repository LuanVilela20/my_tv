module Types
  class MutationType < Types::BaseObject
    # TODO: remove me
    # field :test_field, String, null: false,
    #   description: "An example field added by the generator"
    # def test_field
    #   "Hello World"
    # end

    field :create_channel, mutation: Mutations::CreateChannel

    field :create_attraction, mutation: Mutations::CreateAttraction

    field :create_kind, mutation: Mutations::CreateKind 

    field :create_medium, mutation: Mutations::CreateMedium
  end
end
