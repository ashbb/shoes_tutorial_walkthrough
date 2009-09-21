Shoes.app do
  @shoes = image "http://shoooes.net/shoes.png",
    :top => 100, :left => 100
  animate do |i|
    @shoes.top += (-20..20).rand
    @shoes.left += (-20..20).rand
  end
end