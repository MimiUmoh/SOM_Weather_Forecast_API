require 'spec_helper'

  describe Weather do

    context ' Forecast weather testing by id' do 
      before(:all) do 
      @weather = Weather.new.five_day 
      @weather.five_day_forecast_by_id('519188')
      end  
    
      it'temperature should be a float' do 
        expect(@weather.get_temp).to be_kind_of(Float)
      end 

      it 'temp_kf can be a negative or positive' do
        expect(@weather.get_temp_kf).to be_kind_of(Float)
        expect(@weather.get_temp_kf).to be_between(-1000,1000)
      end 

      it "Weather ID should be an integer" do
        expect(@weather.get_weatherid).to be_kind_of(Integer)
      end 

      it 'Description should be a string' do
        expect(@weather.get_description).to be_kind_of(String)
      end 

      it 'Clouds all should be an integer' do
        expect(@weather.get_clouds_all).to be_kind_of(Integer)
      end 
    end 
  end 
