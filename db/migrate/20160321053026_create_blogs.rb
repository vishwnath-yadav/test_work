class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.string :title
      t.text :description
      t.string :color
      t.string :font_size

      t.timestamps null: false
    end
    Blog.create(title: "")
  end
end
