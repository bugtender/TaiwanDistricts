require "rails_helper"

describe TaiwanDistricts do
  context 'without city_id' do
    it 'should return Taiwan city list in Traditional Chinese' do
      expect(TaiwanDistricts.list)
        .to eq([["臺北市", "01000"], ["基隆市", "02000"], ["新北市", "03000"], ["連江縣", "04000"], ["宜蘭縣", "05000"], ["釣魚臺", "06000"], ["新竹市", "07000"], ["新竹縣", "08000"], ["桃園市", "09000"], ["苗栗縣", "10000"], ["臺中市", "11000"], ["彰化縣", "12000"], ["南投縣", "13000"], ["嘉義市", "14000"], ["嘉義縣", "15000"], ["雲林縣", "16000"], ["臺南市", "17000"], ["高雄市", "18000"], ["南海島", "19000"], ["澎湖縣", "20000"], ["金門縣", "21000"], ["屏東縣", "22000"], ["臺東縣", "23000"], ["花蓮縣", "24000"]]) 
    end

    it 'should return Taiwan city list in zh-TW if you pass argument' do
      expect(TaiwanDistricts.list(lang='zhtw'))
        .to eq([["臺北市", "01000"], ["基隆市", "02000"], ["新北市", "03000"], ["連江縣", "04000"], ["宜蘭縣", "05000"], ["釣魚臺", "06000"], ["新竹市", "07000"], ["新竹縣", "08000"], ["桃園市", "09000"], ["苗栗縣", "10000"], ["臺中市", "11000"], ["彰化縣", "12000"], ["南投縣", "13000"], ["嘉義市", "14000"], ["嘉義縣", "15000"], ["雲林縣", "16000"], ["臺南市", "17000"], ["高雄市", "18000"], ["南海島", "19000"], ["澎湖縣", "20000"], ["金門縣", "21000"], ["屏東縣", "22000"], ["臺東縣", "23000"], ["花蓮縣", "24000"]]) 
    end

    it 'should return Taiwan city list in English if you pass argument' do
      expect(TaiwanDistricts.list(lang='en'))
        .to eq([["Taipei City", "01000"], ["Keelung City", "02000"], ["New Taipei City", "03000"], ["Lienchiang County", "04000"], ["Yilan County", "05000"], ["Diauyutai", "06000"], ["Hsinchu City", "07000"], ["Hsinchu County", "08000"], ["Taoyuan City", "09000"], ["Miaoli County", "10000"], ["Taichung City", "11000"], ["Changhua County", "12000"], ["Nantou County", "13000"], ["Chiayi City", "14000"], ["Chiayi County", "15000"], ["Yunlin County", "16000"], ["Tainan City", "17000"], ["Kaohsiung City", "18000"], ["Nanhai", "19000"], ["Penghu County", "20000"], ["Kinmen County", "21000"], ["Pingtung County", "22000"], ["Taitung County", "23000"], ["Hualien County", "24000"]]) 
    end
  end
end

describe TaiwanDistricts do
  context 'with city_id of TaipeiCity 臺北市' do
    it 'should return district list in zh-TW if you pass argument' do
      districts_list = TaiwanDistricts.list(lang='zhtw','01000')
      expect(districts_list).to eq([["中正區", "01100"], ["大同區", "01103"], ["中山區", "01104"], ["松山區", "01105"], ["大安區", "01106"], ["萬華區", "01108"], ["信義區", "01110"], ["士林區", "01111"], ["北投區", "01112"], ["內湖區", "01114"], ["南港區", "01115"], ["文山區", "01116"]]) 
    end

    it 'should return district list in English if you pass argument' do
      districts_list = TaiwanDistricts.list(lang='en','01000')
      expect(districts_list).to eq([["Zhongzheng Dist.", "01100"], ["Datong Dist.", "01103"], ["Zhongshan Dist.", "01104"], ["Songshan Dist.", "01105"], ["Da’an Dist.", "01106"], ["Wanhua Dist.", "01108"], ["Xinyi Dist.", "01110"], ["Shilin Dist.", "01111"], ["Beitou Dist.", "01112"], ["Neihu Dist.", "01114"], ["Nangang Dist.", "01115"], ["Wenshan Dist.", "01116"]]) 
    end
  end

  context 'with city_id of Hualien County 花蓮縣' do
    it 'should return district list in English if you pass argument' do
      districts_list = TaiwanDistricts.list(lang='en','24000')
      expect(districts_list).to eq([["Hualien City", "24970"], ["Xincheng Township", "24971"], ["Xiulin Township", "24972"], ["Ji’an Township", "24973"], ["Shoufeng Township", "24974"], ["Fenglin Township", "24975"], ["Guangfu Township", "24976"], ["Fengbin Township", "24977"], ["Ruisui Township", "24978"], ["Wanrong Township", "24979"], ["Yuli Township", "24981"], ["Zhuoxi Township", "24982"], ["Fuli Township", "24983"]]) 
    end
  end

  context 'with city_id of Kinmen County 金門縣' do
    it 'should return district list in zh-TW if you pass argument' do
      districts_list = TaiwanDistricts.list(lang='zhtw','21000')
      expect(districts_list).to eq([["金沙鎮", "21890"], ["金湖鎮", "21891"], ["金寧鄉", "21892"], ["金城鎮", "21893"], ["烈嶼鄉", "21894"], ["烏坵鄉", "21896"]]) 
    end
  end
end