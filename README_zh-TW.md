# TaiwanDistricts 台灣地區選單

[![CircleCI](https://circleci.com/gh/bugtender/TaiwanDistricts.svg?style=svg)](https://circleci.com/gh/bugtender/TaiwanDistricts)

好像讓你更方便的做出台灣地區列表

這個 GEM 是基於 [china_city](https://github.com/saberma/china_city) 和 [TaiwanCity](https://github.com/motephyr/taiwan_city) 做出來的，好像會讓你比較更方便但其實沒有比較省工夫的叫出台灣地區選單，再加上中英文切換。

理論上支援 Rails 4.2 跟更高的版本。

## 安裝

### 在 gemfile

```
gem 'taiwan_districts', :git => 'https://github.com/bugtender/TaiwanDistricts
```

### 在 app/assets/javascripts/application.js

```
//= require 'jquery'
//= require 'taiwan_districts/jquery.taiwan_districts'
```

### 在 config/routes.rb

```
mount TaiwanDistricts::Engine => '/taiwan_districts'
```

## 使用

把下面的 code 加到你的 html 裡面就可以了

### 正體中文

```HTML
<div class='rails-helper city-group'>
  <%= select_tag :city, 
    options_for_select( TaiwanDistricts.list(lang='zhtw') ), 
    prompt: '--縣市--', 
    class: ['city-select', 'city-city'], 
    lang: 'zhtw' %>
  <%= select_tag :district, 
    nil, 
    prompt: '--鄉鎮市區--', 
    class: ['city-select', 'city-district'] %>
</div>
```

### 英文

```HTML
<div class='rails-helper city-group'>
  <%= select_tag :city, 
    options_for_select( TaiwanDistricts.list(lang='en') ), 
    prompt: '--Cities--', 
    class: ['city-select', 'city-city'], 
    lang: 'en' %>
  <%= select_tag :district, 
    nil, 
    prompt: '--Districts--', 
    class: ['city-select', 'city-district'] %>
</div>
```

所有的 select 請依定要加上 `city-select` 這個 class ，然後必須包含在 `city-group` 這個 class 的 DOM 底下

## 地區原始資料

在 `db/districts.json`，所有的地區資料都是這邊出來的，你不想要釣魚台的話，可以 fork 一份然後把釣魚台給拿掉就可以了。

編碼如果是縣市的話為 `自訂縣市編號` + `000`，地區為 `所在縣市的自訂編號` + `郵遞區號` 。

## 更新版本

### version 0.1.0

基本功能實現，補上測試。

## License
MIT

## 感謝

* [saberma](https://github.com/saberma)
* [Marker](https://github.com/motephyr)
