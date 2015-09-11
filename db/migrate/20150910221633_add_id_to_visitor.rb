class AddIdToVisitor < ActiveRecord::Migration
  def change
  	add_column :visitors, :creator_id, :integer
  end
end
