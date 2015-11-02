class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.string :title
      t.text :subject

      t.timestamps null: false
    end
  end
end
