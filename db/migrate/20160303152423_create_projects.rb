class CreateProjects < ActiveRecord::Migration
  def up
    remove_column :projects, :name
  end
  
  def down
    add_column :projects, :name, :string
  end
end
