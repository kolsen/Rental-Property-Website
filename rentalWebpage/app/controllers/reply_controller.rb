def show
  @reply = Reply.find(params[:id])
  
  respond_to do |format|
    format.html #show.html.erb
    format.json {render :json => @reply}
  end
end
    |