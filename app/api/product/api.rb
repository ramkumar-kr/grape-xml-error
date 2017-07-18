module Product
  class API < Grape::API
    version 'v1', using: :path
    content_type :json, "application/json"
    content_type :xml, "application/xml"

    default_format :json

    resource :products do
      desc 'Update price of multiple products'
      params do
        requires :admin, type: Hash do
          requires :product, type: Array do
            requires :id, type: String
            requires :price, type: String
          end
        end
      end
      post '/' do
        "Params are valid!"
      end
    end
  end
end