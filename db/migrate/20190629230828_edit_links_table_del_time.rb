class EditLinksTableDelTime < ActiveRecord::Migration[5.1]
  def change
    remove_column :links, :created_at, :datetime
    remove_column :links, :updated_at, :datetime
  end
end
