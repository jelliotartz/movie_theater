class AuditoriaController < ApplicationController
  def index
    @auditoria = Auditorium.all
  end

  def show
    @auditorium = Auditorium.find(params[:id])
  end

  def new
    @auditorium = Auditorium.new
  end

  def create
    @auditorium = Auditorium.new
    @auditorium.title = params[:auditorium][:title]
    @auditorium.capacity = params[:auditorium][:capacity]
    # @auditorium.showtimes.time = params[:auditorium][:showtime]
    # @auditorium.auditorium = params[:auditorium][:auditorium]
    @auditorium.save!
  end
end
