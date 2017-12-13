class SystemsController < ApplicationController

  def all
    render json: System.where(companyName: params[:companyName])
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

    render json: filtered_systems
  end

  def update
    update_system = System.find(params[:serialNumber])

    if params[:systemName]
      update_system.update(systemName: params[:systemName])
    end
    if params[:productFamily]
      update_system.update(productFamily: params[:productFamily])
    end
    if params[:model]
      update_system.update(model: params[:model])
    end
    if params[:osVersion]
      update_system.update(osVersion: params[:osVersion])
    end
    if params[:cpgCount]
      update_system.update(cpgCount: params[:cpgCount])
    end
    if params[:location_region]
      update_system.update(location_region: params[:location_region])
    end
    if params[:location_country]
      update_system.update(location_country: params[:location_country])
    end
  end
end
