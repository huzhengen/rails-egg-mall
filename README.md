https://www.bilibili.com/video/BV1uJ411s7su?p=2&spm_id_from=pageDriver

```
bin/rails g sorcery:install
bin/rails generate sorcery:install user_activation remember_me reset_password --only-submodules
```

Mac 上3000 端口被占用

```
lsof -i :3000
kill -9 <PID>
```

```
bin/rails g mailer user
```
```
bin/rails g model category
bin/rails g model product
```

ancestry
```
bin/rails g migration add_ancestry_to_category
```

rspec

```
bin/rails g rspec:install
```

admin
```
bin/rails g controller admin::sessions new
bin/rails d controller admin::sessions new
bin/rails g controller admin::categories index new
```

添加 gem
```
gem 'paperclip', '~> 5.0.0'
```
需要在 Mac 上安装 imagemagick
```bash
brew install imagemagick
```

创建图片 model
```
bin/rails g model product_image
```

```
bin/rails g migration add_product_images_index
```

购物车 model
```
bin/rails g model shopping_cart
```

User 移植文件
```
bin/rails g migration add_user_uuid_column
```