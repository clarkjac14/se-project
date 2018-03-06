class CreateTickets < ActiveRecord::Migration[5.1]
  def change
    create_table :tickets do |t|
      t.string :user
      t.string :location
      t.string :head
      t.string :body
      t.string :filename
      t.integer :priority
      t.datetime :created

      t.timestamps
    end
  end
end
