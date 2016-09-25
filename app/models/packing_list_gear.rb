class PackingListGear < ApplicationRecord
  belongs_to :packing_list
  belongs_to :gear
end
