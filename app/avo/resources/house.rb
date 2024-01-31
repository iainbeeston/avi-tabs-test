class Avo::Resources::House < Avo::BaseResource
  self.includes = []
  # self.search = {
  #   query: -> { query.ransack(id_eq: params[:q], m: "or").result(distinct: false) }
  # }

  def fields
    field :id, as: :id
    field :name, as: :text
    field :doors, as: :number
    field :windows, as: :number
    field :rooms, as: :number
    field :address, as: :text
  end
end
