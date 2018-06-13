class CreateLinks < ActiveRecord::Migration[5.1]
  def change
    create_table :links do |t|
      t.string :title
      t.string :body
      t.integer :user_id
      t.integer :link_id

      t.timestamps
    end
  end
end
