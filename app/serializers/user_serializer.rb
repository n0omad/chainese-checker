class UserSerializer
  include JSONAPI::Serializer
  attributes :id, :email, :created_at
  
  attribute :created_at do |user|
    user.created_at && user.created_at('%d/%m/%Y') 
  end
end