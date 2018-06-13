class CreateChangeUrlToBodies < ActiveRecord::Migration[5.1]
  def change
    rename_column :links, :url, :body
  end
end
