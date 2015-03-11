class RenameTitleToTagIdInTags < ActiveRecord::Migration
  def change
    rename_column :tag_posts, :title, :tag_id
  end
end
