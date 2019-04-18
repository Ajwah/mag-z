class CreateAdminBlogs < ActiveRecord::Migration[5.2]
  def change
    create_table :admin_blogs do |t|
      t.string :title
      t.string :content

      t.timestamps
    end
  end
end
