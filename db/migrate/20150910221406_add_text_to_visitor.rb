class AddTextToVisitor < ActiveRecord::Migration
  def change
  	add_column :visitors, :idea, :text
  end
end
