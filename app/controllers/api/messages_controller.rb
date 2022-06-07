class Api::MessagesController < ApplicationController
  before_action :set_message, only: %i[show update destroy]

  # GET /messages
  def index
    @messages = Message.all
    render json: @messages[rand(0...@messages.length)]
  end

  private

  def set_message
    @message = Message.find(params[:id])
  end

  def message_params
    params.require(:message).permit(:message)
  end
end
