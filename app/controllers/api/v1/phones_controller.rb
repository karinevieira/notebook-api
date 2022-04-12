class Api::V1::PhonesController < ApplicationController
  before_action :authenticate_api_user!
  before_action :set_contact
  before_action :set_phone, only: [:update, :destroy]

  def create
    @contact.phones << Phone.new(phone_params)

    if @contact.save
      render json: @contact.phones, status: :created, location: api_contact_phones_url(@contact)
    else
      render json: @contact.errors, status: :unprocessable_entity
    end
  end

  def update
    if @phone.update(phone_params)
      render json: @contact.phones
    else
      render json: @contact.errors, status: :unprocessable_entity
    end
  end

  def show
    render json: @contact.phones
  end

  def destroy
    @phone.destroy
  end

  private
  def set_contact
    @contact = current_api_user.contacts.find(params[:contact_id])
  end

  def set_phone
    @phone = Phone.find(phone_params[:id])
  end

  def phone_params
    ActiveModelSerializers::Deserialization.jsonapi_parse(params)
  end
end