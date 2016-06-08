class CreateOffences < ActiveRecord::Migration
  def change
    create_table :offences do |t|

      t.timestamps null: false
    end
  end
end
