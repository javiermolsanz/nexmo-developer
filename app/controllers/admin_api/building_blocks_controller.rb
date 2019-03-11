module AdminApi
  class BuildingBlocksController < AdminApiController
    respond_to :json

    def index
      return unless authenticate
      @events = UsageBuildingBlockEvent.all

      if params[:created_after] || params[:created_before]
        if params[:block] && params[:language]
          @events = @events.created_between(params[:created_after], params[:created_before]).where('block = ? and language = ?', params[:block], params[:language])
        elsif params[:block]
          @events = @events.created_between(params[:created_after], params[:created_before]).where('block = ?', params[:block])
        elsif params[:language]
          @events = @events.created_between(params[:created_after], params[:created_before]).where('language = ?', params[:language])
        else
          @events = @events.created_between(params[:created_after], params[:created_before])
        end
      elsif params[:language] && params[:block]
        @events = @events.where('block = ? and language = ?', params[:block], params[:language])
      elsif params[:language]
        @events = @events.where('language = ?', params[:language])
      elsif params[:block]
        @events = @events.where('block = ?', params[:block])
      end

      render :index
    end
  end
end
