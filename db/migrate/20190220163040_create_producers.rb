class CreateProducers < ActiveRecord::Migration[5.2]
  def change
    create_table :producers do |t|
      t.string :title
      t.timestamps
    end

    # Add relationship between events and producers
    add_column :events, :producer_id, :integer
  end
end
