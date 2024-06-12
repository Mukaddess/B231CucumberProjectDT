#TASK:
## 3 tane Scenario oluşturunuz
## Amazon sayfasında iphone, samsung ve nokia aratınız.
  @US003
  Feature: US003 Amazon testi
    Background:
      Given kullanici amazon sayfasina gider
    @iphone @smoke
    Scenario: TC01 arama kutusunda iphone aratilir
      When arama kutusunda iphone aratir
      And sayfayi kapatir

      @samsung
     Scenario: TC02 arama kutusunda samsung aratilir
       Then arama kutusunda samsung aratir
       And sayfayi kapatir

      @nokia
     Scenario: TC03 arama kutusunda nokia aratilir
       Then arama kutusunda nokia aratir
       And sayfayi kapatir


       #   Featuer file da kullanacağımız scenariolarda baslangic icin ortak adimlar var ise Featuer keywordunden sonra
      #  Background keywordunu yazarak BASLANGIC(given ile baslayan) ortak adimlari burada belirtebeliriz. Background yapisi @BeforeMethod mantigi ile calisir