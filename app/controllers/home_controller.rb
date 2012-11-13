require 'fileutils'

class HomeController < ApplicationController
	
	def index
	end

	def galeria
		#
	end
	
	def imagens_post
		# 	  @photo = Photo.new
		# 	  @photo.file = params[:file] if params.has_key?(:file)
		# 	  # detect Mime-Type (mime-type detection doesn't work in flash)
		# 	  @photo.file_content_type = MIME::Types.type_for(params[:name]).to_s if params.has_key?(:name)
		# 	  @photo.save!
		# 	
		# @imagem = params[:file]
		# {
		# 	"name"=>"p179tg7gak85g3ql1m8cedi151q5.JPG", 
		# 	"file"=>#<ActionDispatch::Http::UploadedFile:0x007f80e3060160 @original_filename="IMG_0019.JPG", @content_type="image/jpeg", @headers="Content-Disposition: form-data; name=\"file\"; filename=\"IMG_0019.JPG\"\r\nContent-Type: image/jpeg\r\n", @tempfile=#<File:/var/folders/fh/2ctctxl16wl4g04jg90jrtw40000gn/T/RackMultipart20121019-15140-au08zb>>
		# }
		FileUtils.copy(params[:file].tempfile, Rails.root.to_s+'/public/fotosnovas/'+params[:file].original_filename)
		f = File.new(params[:file].tempfile)
		@path = f.path
	end
	
end
