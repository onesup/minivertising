class AddOrderNoToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :order_no, :integer
  end
end
