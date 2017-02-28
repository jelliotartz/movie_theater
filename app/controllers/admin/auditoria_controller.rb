module Admin
  class AuditoriaController < Admin::ApplicationController
    def new
      super
      @auditorium = Auditorium.new
    end

    def create
      @auditorium = Auditorium.new
      @auditorium.movie_ids = params[:auditorium][:movie_ids]
      @auditorium.title = params[:auditorium][:title]
      @auditorium.capacity = params[:auditorium][:capacity]
      @auditorium.save!
      redirect_to admin_auditoria_path
    end

    # To customize the behavior of this controller,
    # simply overwrite any of the RESTful actions. For example:
    #
    # def index
    #   super
    #   @resources = Auditorium.all.paginate(10, params[:page])
    # end

    # Define a custom finder by overriding the `find_resource` method:
    # def find_resource(param)
    #   Auditorium.find_by!(slug: param)
    # end

    # See https://administrate-docs.herokuapp.com/customizing_controller_actions
    # for more information
  end
end
