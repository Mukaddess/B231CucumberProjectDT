@US009
  Feature: US009 Google Datatable
    Scenario: TC01 Google sayfasinda arama yapilir
      Given kullanici "https://google.com " sayfasina gider
      When kullanici verilen bilgilerle arama yapar
        | volvo  |
        | audi   |
        | toyota |
      And sayfayi kapatir

    Scenario: TC02 Google sayfasinda arama yapilir
      Given kullanici "https://google.com " sayfasina gider
      When kullanici verilen bilgilerle arama yapar ikinci yol
        | volvo  |
        | audi   |
        | toyota |
      And sayfayi kapatir