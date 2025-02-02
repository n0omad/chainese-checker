class UserSerializer
  include JSONAPI::Serializer
  attributes :id, :email, :wallet, :created_at
  
  attribute :created_at do |user|
    user.created_at && user.created_at.strftime('%d/%m/%Y') 
  end
end
