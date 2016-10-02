class PackingListGear < ApplicationRecord
  belongs_to :packing_list
  belongs_to :gear

  REGISTRABLE_ATTRIBUTES = %i(id packing_list_id gear_id _destroy)

  def selectable_gears(user)
    user.gears.all
  end
end
