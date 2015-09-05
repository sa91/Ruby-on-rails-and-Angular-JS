class Project < ActiveRecord::Base
  belongs_to :user
  has_many :members
  has_many :issues
  def as_json(options = {})
    super(options.merge(include: :members))
	super(options.merge(include: :issues))  
  end
end
