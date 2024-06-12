  @US006
  Feature: US006 Google Testi Scenario outline
  @TC01
    Scenario Outline: TC01 Google sayfasinda arama kutusunda  arac aratilir
      Given kullanici "https://google.com" sayfasina gider
      When google arama kutusunda "<araclar>" aratilir
      Then sayfa basliginin "<araclar>" icerdigini test eder
      But kullanici 3 saniye bekler
      And sayfayi kapatir
    Examples:
      | araclar |
      | honda   |
      | ford    |
      | volvo   |
      | toyota  |

#Scenario Outline: data provider gibi calisir  . tek fark degiskenleri <> icinde yazmak zorundayiz