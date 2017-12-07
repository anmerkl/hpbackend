class SystemsController < ApplicationController

  def all
    @systems = System.where(companyName: params[:companyName]).to_json
  end
  
  def search
    filtered_systems = System.where(companyName: params[:companyName])
    if params[:systemName]
      filtered_systems = filtered_systems.where(systemName: params[:systemName])
    end
    if params[:serialNumber]
      filtered_systems = filtered_systems.where(serialNumber: params[:serialNumber])
    end
    if params[:productFamily]
      filtered_systems = filtered_systems.where(productFamily: params[:productFamily])
    end
    if params[:model]
      filtered_systems = filtered_systems.where(model: params[:model])
    end
    if params[:osVersion]
      filtered_systems = filtered_systems.where(osVersion: params[:osVersion])
    end
    if params[:cpgCount]
      filtered_systems = filtered_systems.where(cpgCount: params[:cpgCount])
    end
    if params[:location_region]
      filtered_systems = filtered_systems.where(location_region: params[:location_region])
    end
    if params[:location_country]
      filtered_systems = filtered_systems.where(location_country: params[:location_country])
    end

    @systems = filtered_systems.to_json
  end

  def create
    System.create_from_csv(params[:csv])
  end

  def update
    System.update_from_csv(params[:csv])
  end
end
