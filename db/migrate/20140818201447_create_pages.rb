class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :title
      t.string :meta
      t.string :slug
      t.text :content

      t.timestamps
    end
    add_index :pages, :slug, unique: true
  end
end
