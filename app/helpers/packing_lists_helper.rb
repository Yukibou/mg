module PackingListsHelper
  def display_public(public)
    public ? '公開' : '非公開'
  end
end
