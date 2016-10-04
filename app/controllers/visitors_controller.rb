class VisitorsController < ApplicationController
  def index
    @packing_lists = PackingList.all.publish.order(updated_at: :desc)
  end
end
