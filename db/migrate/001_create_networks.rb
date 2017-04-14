class CreateNetworks < ActiveRecord::Migration

  def change
    create_table :networks do |t|
      t.string :call_letters
      t.integer :channel
      t.integer :show_id
    end
  end

end
