# == Schema Information
#
# Table name: links
#
#  id         :integer          not null, primary key
#  title      :string
#  body       :string
#  user_id    :integer
#  link_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Link < ApplicationRecord
  validates :title, :url, presence: true

  belongs_to :user
  has_many :articles
end
