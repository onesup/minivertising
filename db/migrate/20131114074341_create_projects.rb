class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.string :sub_title
      t.text :description
      t.string :category
      t.string :client
      t.string :video_link
      t.datetime :made_at
      t.string :website_link
      t.text :project_thumbnail
      t.text :project_big
      t.text :images
      t.timestamps
    end
  end
end
