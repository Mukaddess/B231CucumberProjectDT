@US002
  Feature: US002 Bluerentalcar sayfasinda login test
    Scenario: TC01 verilen email ve password ile login olunur
      Given kullanici bleuRentalCar sayfasina gider
      When login butonuna tiklar
      And  email ve password bilgileri ile login olur
      And  sayfayi kapatir
