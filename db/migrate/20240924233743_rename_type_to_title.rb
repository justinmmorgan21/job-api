class RenameTypeToTitle < ActiveRecord::Migration[7.1]
  def change
    rename_column :jobs, :type, :title
  end
end
