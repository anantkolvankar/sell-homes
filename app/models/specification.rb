class Specification < ActiveRecord::Base
  belongs_to :property
  belongs_to :super_builtup_unit, class_name: 'Unit', foreign_key: :super_builtup_unit
  belongs_to :builtup_unit, class_name: 'Unit', foreign_key: :builtup_unit
  belongs_to :carpet_unit, class_name: 'Unit', foreign_key: :carpet_unit
end
