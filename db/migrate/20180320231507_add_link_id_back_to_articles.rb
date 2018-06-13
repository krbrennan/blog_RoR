class AddLinkIdBackToArticles < ActiveRecord::Migration[5.1]
  def change
    add_column :articles, :link_id, :integer
    remove_column :links, :article_id
  end
end
