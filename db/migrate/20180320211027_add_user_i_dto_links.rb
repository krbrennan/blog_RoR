class AddUserIDtoLinks < ActiveRecord::Migration[5.1]
  def change
    remove_column :links, :link_id
    add_column :links, :user_id, :integer
  end
end
