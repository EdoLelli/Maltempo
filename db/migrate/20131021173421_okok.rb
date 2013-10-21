class Okok < ActiveRecord::Migration
def change
    change_table :posts do |c|
      c.references :user
      end
      reversible do |dir|
        dir.up do
          execute <<-SQL
          ALTER TABLE posts
          ADD CONSTRAINT fk_posts_users
          FOREIGN KEY (user_id) REFERENCES users(id)
          SQL
         
        end
        dir.down do
          execute <<-SQL
          ALTER TABLE users
          DROP user_id
          SQL
        end
      end
      
      
      add_index :posts, :user_id
  end
end
