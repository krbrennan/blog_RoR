class AddUserAndLinkIdToArticles < ActiveRecord::Migration[5.1]
  def change
    add_column :articles, :link_id, :integer
    add_column :articles, :user_ud, :integer
    remove_column :links, :user_id
  end
end
