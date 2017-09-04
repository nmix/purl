class FileUploader < CarrierWave::Uploader::Base

  before :cache, :save_original_filename

  # Include RMagick or MiniMagick support:
  # include CarrierWave::RMagick
  # include CarrierWave::MiniMagick

  # Choose what kind of storage to use for this uploader:
  storage :file
  # storage :fog

  # Override the directory where uploaded files will be stored.
  # This is a sensible default for uploaders that are meant to be mounted:
  # def store_dir
  #   "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  # end

  def store_dir
    "files/"
  end

  def cache_dir
    "files/tmp/"
  end

  def filename
    "#{secure_token}.#{file.extension}" if original_filename.present?
  end


  def save_original_filename(file)
    model.name ||= file.original_filename if file.respond_to?(:original_filename)
  end

  protected

  def secure_token
    var = :"@#{mounted_as}_secure_token"
    model.instance_variable_get(var) or model.instance_variable_set(var, SecureRandom.uuid)
  end

end
