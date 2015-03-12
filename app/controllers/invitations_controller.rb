class InvitationsController < ApplicationController

  def retrieve
    @user = User.new
    respond_to do |format|
      if @user.save
        format.html { redirect_to @group, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @group }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def create
    @group = Group.find(params[:id])
    @invitation = @group.invitations.new
    @invitation.name = params[:name2]

    if @invitation.save
      flash[:success] = "Invitation sent"
      redirect_to invitations_group_path(@group)
    else
    render 'new'
    end
  end

  def show
  end

end

