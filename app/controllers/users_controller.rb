class UsersController < ApplicationController
  before_action :authenticate_user!
  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.username = params[:username]
    @user.student_number = params[:student_number]
    @user.comment = params[:comment]
    if params[:image]
      @extention = File.extname("hogehoge.rb")
      @user.icon_image_name = "#{@user.id}.jpg"
      image = params[:image]
      File.binwrite("public/user_images/#{@user.icon_image_name}",image.read)
      # @user.icon_image_name = "#{@user.id}.#{image_type("public/user_images/#{@user.icon_image_name}")}"
      # File.binwrite("public/user_images/#{@user.icon_image_name}",image.read)
    end

    @user.save
    redirect_to("/user/#{@user.id}/show")
  end

end

def image_type(file_path)
  File.open(file_path, 'rb') do |f|
    begin
      header = f.read(8)
      f.seek(-12, IO::SEEK_END)
      footer = f.read(12)
    rescue
      return nil
    end

    if header[0, 2].unpack('H*') == %w(ffd8) && footer[-2, 2].unpack('H*') == %w(ffd9)
      return 'jpg'
    elsif header[0, 3].unpack('A*') == %w(GIF) && footer[-1, 1].unpack('H*') == %w(3b)
      return 'gif'
    elsif header[0, 8].unpack('H*') == %w(89504e470d0a1a0a) && footer[-12,12].unpack('H*') == %w(0000000049454e44ae426082)
      return 'png'
    end
  end
  nil
end
