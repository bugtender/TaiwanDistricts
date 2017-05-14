require "taiwan_districts/engine"

module TaiwanDistricts
  TAIWAN = '00000'
  PATTERN = /(\d{2})(\d{3})/

  class << self
    def list(lang = 'zhtw', parent_id = '00000')
      result = []
      return result if parent_id.blank?
      city_id = city(parent_id)
      children = data(lang)
      children = children[city_id][:children] if children.has_key?(city_id)
      children.each_key do |id|
        result.push [children[id][:text], id]
      end

      result.sort! { |a, b| a[1] <=> b[1] }
      result
    end

    def city(code)
      match(code)[1].ljust(5, '0')
    end

    private

    def data(lang)
      @list_lang = 'zh-tw' unless @list_lang 
      if @list.nil? or @list_lang != lang
        @list_lang = lang
        @list = {}
        json = JSON.parse(File.read("#{Engine.root}/db/districts.json"))
        districts = json.values.flatten
        districts.each do |district|
          id = district['id']
          text = district["#{@list_lang}"]
          if id.end_with?('000')
            @list[id] =  {:text => text, :children => {}}
          else
            city_id = city(id)
            @list[city_id] = {:text => text, :children => {}} unless @list.has_key?(city_id)
            @list[city_id][:children][id] = {:text => text}
          end
        end
      end
      @list
    end

    def match(code)
      code.match(PATTERN)
    end
  end
end
