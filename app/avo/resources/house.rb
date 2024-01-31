class Avo::Resources::House < Avo::BaseResource
  self.includes = []
  # self.search = {
  #   query: -> { query.ransack(id_eq: params[:q], m: "or").result(distinct: false) }
  # }
  self.description = "This is a resource with tabs defined without a main panel. The actions and breadcrumbs for house aren't shown in the show and edit views, but the has-many field displays correctly. On avo 2.x the breadcrumbs and actions would have been visible."

  def index_fields
    field :id, as: :id
    field :name, as: :text
  end

  def fields
    tabs do
      tab "Basics" do
        panel do
          field :id, as: :id
          field :name, as: :text
          field :address, as: :text
        end
      end
      tab "Cats" do
        field :cats, as: :has_many, show_on: :edit
      end
      tab "Advanced" do
        panel do
          field :doors, as: :number
          field :windows, as: :number
          field :rooms, as: :number
        end
      end
    end
  end
end
