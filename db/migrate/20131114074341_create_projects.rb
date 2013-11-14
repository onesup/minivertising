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
      t.string :project_thumbnail
      t.string :project_big

      t.timestamps
    end
  end
end
