class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title, null: false
      t.text :content, null: false
      t.belongs_to :user, index: true, foreign_key: true
      t.belongs_to :sub_reddit, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
