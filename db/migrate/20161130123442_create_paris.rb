class CreateParis < ActiveRecord::Migration[5.0]
  def change
    create_table :paris do |t|
      t.string :choice
      t.belongs_to :user
      t.belongs_to :match
      t.timestamps
    end
  end
end
