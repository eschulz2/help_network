class AddInterestToUser < ActiveRecord::Migration
  def change
  	add_column :visitors, :interest, :string
  end
end
