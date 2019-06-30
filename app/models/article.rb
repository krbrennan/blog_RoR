# == Schema Information
#
# Table name: articles
#
#  id         :integer          not null, primary key
#  title      :string
#  body       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'annotate'
class Article < ApplicationRecord
  validates :body, presence: true

  belongs_to :user
  belongs_to :link
  has_one :link_title

end
