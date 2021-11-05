class TodosSerializer < ActiveModel::Serializer
  attributes :id, :task, :completed, :upvote, :priority, :category, :user_ids
end
