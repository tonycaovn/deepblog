class Tag < ActiveRecord::Base
    scope :available, 
        -> post_id { where("id not IN (select tags.id from tags join tag_posts where tags.id = tag_posts.tag_id and tag_posts.post_id = #{post_id})") if post_id.present? }
    validates_presence_of :name
    has_many :tagPosts
    has_many :posts, through: :tagPosts
end
