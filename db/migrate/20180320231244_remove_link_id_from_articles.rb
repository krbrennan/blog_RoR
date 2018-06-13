class RemoveLinkIdFromArticles < ActiveRecord::Migration[5.1]
  def change
    remove_column :articles, :link_id
  end
end
