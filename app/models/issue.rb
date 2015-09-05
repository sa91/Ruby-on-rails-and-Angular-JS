class Issue < ActiveRecord::Base
  belongs_to :member
  has_many :comments
  has_many :tags
  def as_json(options = {})
    super(options.merge(include: :comments))
    super(options.merge(include: :tags))
  end
end
