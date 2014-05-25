class CreateWebinars < ActiveRecord::Migration
  def change
    create_table :webinars do |t|
      t.string :title
      t.text :overview
      t.datetime :date
      t.integer :duration
      t.string :presenter
      t.text :presinfo
      t.integer :cost

      t.timestamps
    end
  end
end
