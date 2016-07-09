# coding: utf-8

class ClothesItem

  attr_reader :title

  def check_file(file_name)
      lines = File.readlines(file_name)
      @title = lines[0].chomp
      @temperature = lines[2].chomp
  end

  def is_in_range?(temperature)
    temperature_range = @temperature.gsub(/[\(\) ]/, '').split(',')

    (temperature_range[0].to_i..temperature_range[1].to_i).include? temperature
  end
end