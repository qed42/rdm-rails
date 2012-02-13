class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post

  validates_presence_of :body, :user_id, :post_id

  def created_at
    read_attribute(:created_at).strftime("%b %d, %Y %I:%M %P") unless self.new_record?
  end
end
