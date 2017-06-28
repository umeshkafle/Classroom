class ChangeColumnName < ActiveRecord::Migration[5.0]
  def change
  	rename_column :subjects, :title, :subject_title
  end
end
