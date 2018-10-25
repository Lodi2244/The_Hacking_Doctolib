require 'date'
class DateSetUp < ActiveRecord::Migration[5.2]
  def change
    Date.strptime("12/10/2018", "%m/%d/%Y")
  end
end
