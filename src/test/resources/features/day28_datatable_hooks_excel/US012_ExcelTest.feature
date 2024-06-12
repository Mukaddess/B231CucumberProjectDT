@US012
  Feature: US012 BlueRentalCar sayfasina login olma islemi
    Scenario: TC01 Exceldeki email ve password bilgileri ile login olma

      Given kullanici bleuRentalCar sayfasina gider
      When login butonuna tiklar
      And exceldeki "admin_info" sayfasindaki kullanici bilgileri ile login olunur
      But kullanici 2 saniye bekler
      And sayfayi kapatir
