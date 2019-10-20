class AddNullFalseToPropertiesCulumn < ActiveRecord::Migration[5.0]
  def change
    change_column_null :properties, :property, false
    change_column_null :properties, :rent, false
    change_column_null :properties, :address, false
    change_column_null :properties, :age, false
    change_column_null :properties, :note, false
  end
end