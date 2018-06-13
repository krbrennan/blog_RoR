class FixArticlesTables2 < ActiveRecord::Migration[5.1]
  def change
    change_column :articles, :user_id, :integer
  end
end
