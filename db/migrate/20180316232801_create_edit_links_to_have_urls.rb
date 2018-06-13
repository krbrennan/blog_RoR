class CreateEditLinksToHaveUrls < ActiveRecord::Migration[5.1]
  def change
    rename_column :links, :body, :url
  end
end
