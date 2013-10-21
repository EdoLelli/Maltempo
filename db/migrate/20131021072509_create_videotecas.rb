class CreateVideotecas < ActiveRecord::Migration
  def change
    create_table :videotecas do |t|

      t.timestamps
    end
  end
end
