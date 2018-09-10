class CreateConnectedLists < ActiveRecord::Migration[5.2]
  def change
    create_table :connected_lists do |t|

      t.timestamps
    end
  end
end
