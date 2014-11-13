class AddDetailsToNews < ActiveRecord::Migration
  def change
    add_column :news, :title, :string
    add_column :news, :source, :string
    add_column :news, :category, :string
    add_column :news, :story, :text
    add_column :news, :author, :string
    add_column :news, :image, :string
  end
end
