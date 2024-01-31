class Avo::Resources::HouseWithMainPanel < Avo::BaseResource
  self.model_class = House
  self.includes = []
  # self.search = {
  #   query: -> { query.ransack(id_eq: params[:q], m: "or").result(distinct: false) }
  # }
  self.description = "This is a resource with tabs defined inside a main panel. The actions and breadcrumbs for house are visible on the show and edit views, but the has-many field does not load in show or edit. It was not necessary to position the tabs inside the main panel with avo 2.x"#

  def index_fields
    field :id, as: :id
    field :name, as: :text
  end

  def fields
    main_panel do
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
end
