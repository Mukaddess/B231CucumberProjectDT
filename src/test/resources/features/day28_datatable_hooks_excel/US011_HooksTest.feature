
@US011
Feature: US005 Google Testi
  @ford
  Scenario: TC01 Google sayfasinda arama kutusunda  arac aratilir
    Given kullanici "https://google.com" sayfasina gider
    When google arama kutusunda "ford" aratilir
    Then sayfa basliginin "ford" icerdigini test eder
    But kullanici 3 saniye bekler
    And sayfayi kapatir
  @toyota
  Scenario: TC03 Google sayfasinda arama kutusunda  arac aratilir
    Given kullanici "https://google.com" sayfasina gider
    When google arama kutusunda "toyota" aratilir
    Then sayfa basliginin "toyoota" icerdigini test eder
    But kullanici 3 saniye bekler
    And sayfayi kapatir

  @volvo
  Scenario: TC02 Google sayfasinda arama kutusunda  arac aratilir
    Given kullanici "https://google.com" sayfasina gider
    When google arama kutusunda "volvo" aratilir
    Then sayfa basliginin "volvo" icerdigini test eder
    But kullanici 3 saniye bekler
    And sayfayi kapatir
