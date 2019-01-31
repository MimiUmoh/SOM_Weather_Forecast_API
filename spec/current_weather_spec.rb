require 'spec_helper'

describe Weather do
  context 'Current weather tetsing  by name' do 

    before(:all) do 
     @weather = Weather.new.current 
     @weather.current_weather_city_name('Novinki,ru')
    end  

    it 'Latitude should be a float ' do 
      expect(@weather.get_latitude).to be_kind_of(Float)
    end 

    it 'Weather description should be a string' do
      expect(@weather.get_weather_description).to be_kind_of(String)
    end 

    it "icon  in weather should have numbers" do
      expect(@weather.icon.gsub(/['a'..'z']/,'').to_i).to be_kind_of(Integer)
    end  

    it "icon  in weather should be a string" do
      expect(@weather.icon).to be_kind_of(String)
    end 

    it 'weather id shoud be integer and should equal 701' do 
      expect(@weather.get_weather_id).to be_kind_of(Integer)
    end 

    it ' Id should be an integer and ID should equal 499099' do
      expect(@weather.get_id).to be_kind_of(Integer).and eq 499099
    end 

    it 'Temp should be a float' do 
      expect(@weather.get_temp).to be_kind_of(Float)
    end 

    it 'City name should be Novinki and it should be a string' do
      expect(@weather.get_city_name).to be_kind_of(String)
    end 

    it 'type should be an integer' do 
      expect(@weather.get_type).to be_kind_of(Integer)
    end 

    it 'Country code should be RU' do
      expect(@weather.get_country_code).to eq "RU"
    end 

    it 'COD should be 200' do 
      expect(@weather.get_cod).to eq 200
    end 

    it 'sunrise should have less than 12 characters' do 
      expect(@weather.get_sunrise.to_s.size).to be <= 12
    end 
  end 

  context 'Current Weather testing by ID' do 
    before(:all) do 
      @weather_city_id = Weather.new.current 
      @weather_city_id.current_weather_id('519188')
     end 

     it 'Latitude should be a float ' do 
      expect(@weather_city_id.get_latitude).to be_kind_of(Float)
    end 
     
    it 'Weather description should be a string' do
      expect(@weather_city_id.get_weather_description).to be_kind_of(String)
    end 

    it "icon  in weather should have numbers" do
      expect(@weather_city_id.icon.gsub(/['a'..'z']/,'').to_i).to be_kind_of(Integer)
    end  

    it "icon  in weather should be a string" do
      expect(@weather_city_id.icon).to be_kind_of(String)
    end 

    it 'weather id shoud be integer and should equal 701' do 
      expect(@weather_city_id.get_weather_id).to be_kind_of(Integer)
    end 

    it ' Id should be an integer and ID should equal 499099' do
      expect(@weather_city_id.get_id).to be_kind_of(Integer).and eq 519188
    end 

    it 'Temp should be a float' do 
      expect(@weather_city_id.get_temp).to be_kind_of(Float)
    end 

    it 'City name should be Novinki and it should be a string' do
      expect(@weather_city_id.get_city_name).to be_kind_of(String)
    end 


    it 'type should be an integer' do 
      expect(@weather_city_id.get_type).to be_kind_of(Integer)
    end 

    it 'Country code should be RU' do
      expect(@weather_city_id.get_country_code).to eq "RU"
    end 

    it 'COD should be 200' do 
      expect(@weather_city_id.get_cod).to eq 200
    end 

    it 'sunrise should have less than 12 characters' do 
      expect(@weather_city_id.get_sunrise.to_s.size).to be <= 12
    end
  end
end 
