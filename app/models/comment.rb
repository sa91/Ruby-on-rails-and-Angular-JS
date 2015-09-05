class Comment < ActiveRecord::Base
  belongs_to :Issue
  belongs_to :user
end
