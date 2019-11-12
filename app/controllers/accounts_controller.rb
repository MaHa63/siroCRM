class AccountsController < ApplicationController


	def account_param
		params.require(:account).permit(:name, :street, :zip_code, :city, :user_id)
	end

	


	def list
		@accounts = Account.all
	end


	def show
		@account = Account.find(params[:id])
	end


	def new
		@account = Account.new
		@users = User.all
	
	end


	def account_params
		params.require(:accounts).permit(:name, :street, :zip_code, :city, :user_id)
	end

	def create
		@account = Account.new(account_params)
		#
		if @account.save
			redirect_to :action =>'list'
		else
			@users = User.all
			render :action => 'new'
		end
	end


	def edit
		@account = Account.find(params[:id])
		@users = User.all
	end


	def update
		
		@account = Account.find(params[:id])

		if @account.update_attributes(account_param)
			redirect_to :action => 'show', :id => @account
		else
			@users = User.all
			render :action => 'edit'
		end

	end

	def delete
		Account.find(params[:id]).destroy
		redirect_to :action => 'list'
	end

	

	def show_users
		@user = User.find(params[:id])
	end

end
