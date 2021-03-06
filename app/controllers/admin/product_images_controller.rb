class Admin::ProductImagesController < Admin::BaseController
  before_action :find_product

  def index
    @product_images = @product.product_images
  end

  def create
    params[:images].each do |image|
      @product.product_images << ProductImage.new(image: image)
    end
    # redirect_to :back
    redirect_back fallback_location: root_path
  end

  def update
    @product_image = @product.product_images.find(params[:id])
    @product_image.weight = params[:weight]
    if @product_image.save
      flash[:notice] = "修改权重成功"
    else
      flash[:notice] = "修改权重失败"
    end
    redirect_back fallback_location: root_path
  end

  def destroy
    @product_image = @product.product_images.find(params[:id])
    if @product_image.destroy
      flash[:notice] = "删除图片成功"
    else
      flash[:notice] = "删除图片失败"
    end
    redirect_back fallback_location: root_path
  end

  private

  def find_product
    @product = Product.find(params[:product_id])
  end

end