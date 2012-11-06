class CreateFolders < ActiveRecord::Migration
  def change
    create_table :folders do |t|
      t.string :title
      t.text :description
      t.string :path
      t.string :url

      t.timestamps
    end
  end
end
