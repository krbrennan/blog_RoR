class AddArticleId < ActiveRecord::Migration[5.1]
  def change
    add_column :links, :article_id, :integer
  end
end
