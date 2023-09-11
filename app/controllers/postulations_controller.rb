class PostulationsController < ApplicationController

    def create
        @joboffer = Joboffer.find(params[:message][:joboffer_id])
        @postulation = Postulation.new(postulation_params)
        @postulation.user = current_user
        respond_to do |format|
            if @postulation.save
                format.html { redirect_to joboffer_path(@joboffer.id), notice: 'Comment was successfully created.' }
            else
                format.html { redirect_to joboffer_path(@joboffer.id), notice: 'Comment was not created.' }
            end
        end
    end

    private

    def postulation_params
        params.require(:postulation).permit(:message, :joboffer_id)
    end

end
