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