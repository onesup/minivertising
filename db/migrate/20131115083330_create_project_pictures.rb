class CreateProjectPictures < ActiveRecord::Migration
  def change
    create_table :project_pictures do |t|
      t.string :path
      t.string :project_big
      t.string :project_thumbnail
      t.integer :project_id

      t.timestamps
    end
  end
end
