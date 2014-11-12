class CommentSerializer < ActiveModel::Serializer
  attributes :id, :body, :commenter, :created_at

end
