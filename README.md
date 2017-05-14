# TaiwanDistricts

[![CircleCI](https://circleci.com/gh/bugtender/TaiwanDistricts.svg?style=svg)](https://circleci.com/gh/bugtender/TaiwanDistricts)

[正體中文](https://github.com/bugtender/TaiwanDistricts/blob/master/README_zh-TW.md)

Easy way to build a selector for Taiwan Cities and Districts.

This gem is base on [china_city](https://github.com/saberma/china_city) and [TaiwanCity](https://github.com/motephyr/taiwan_city).

Support Rails 4.2 and upper version.

## Installation

### In gemfile

```
gem 'taiwan_districts', :git => 'https://github.com/bugtender/TaiwanDistricts'
```

### In app/assets/javascripts/application.js

```
//= require 'jquery'
//= require 'taiwan_districts/jquery.taiwan_districts'
```

### In config/routes.rb

```
mount TaiwanDistricts::Engine => '/taiwan_districts'
```

## Usage

Add below code to your ERB

### Traditional-Chinese

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

### English

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

all selector need "city-select" class. and under the class='city-group' DOM.

## Update

### version 0.1.0

It's works.  And add some test.

## License
MIT

## Special Thanks

* [saberma](https://github.com/saberma)
* [Marker](https://github.com/motephyr)
