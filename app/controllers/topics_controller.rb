class TopicsController < ApplicationController
 before_action :set_topic, only:[:show, :edit, :update, :destroy]

  def index
  	  @topics = Topic.all
  end

  def show
  end

  def new
  	@topic = Topic.new
  end

  def edit
  end
end
