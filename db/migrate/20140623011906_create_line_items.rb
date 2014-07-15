class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
      t.references :location, index: true
      t.belongs_to :plan, index: true

      t.timestamps
    end
  end
end
