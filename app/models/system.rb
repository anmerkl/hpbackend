class System < ApplicationRecord
  require 'csv'

  self.primary_key = :serialNumber

  def self.create_from_csv(csv)
    CSV.foreach(csv, headers: true) do |row|
      System.create(row.to_h)
    end
  end

  def self.update_from_csv(csv)
    CSV.foreach(csv, headers: true) do |row|
      System.update(row.to_h)
    end
  end
end
