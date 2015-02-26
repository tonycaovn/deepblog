class CreateTagPosts < ActiveRecord::Migration
  def change
    create_table :tag_posts do |t|
      t.integer :post_id
      t.integer :title

      t.timestamps null: false
    end
  end
end
