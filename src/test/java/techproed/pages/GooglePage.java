package techproed.pages;

import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import techproed.utilities.Driver;
import techproed.utilities.ReusableMethods;

public class GooglePage {

        /*
         PageFactory.initElements() kodu bu classtaki ögeleri webdriver ile eslestirir
         Bu sayede classtaki webelementlere erismek icin @FindBy gibi PageFactory ye yardimci olan
         annotationlar kullanilabilir
         */
    public GooglePage() {

        PageFactory.initElements(Driver.getDriver(),this);
    }
    @FindBy(id="APjFqb")
    public WebElement searchbox;


    @FindBy(xpath="//div[.='Tümünü reddet']")
    public WebElement tumunuReddetButton;

    public void tumunuReddetButton(){
        try {
            ReusableMethods.click(tumunuReddetButton);
        }catch (Exception e){
            //captcha sayfada cikmamasi durumunda NoSuchElemetExceptioni böylece ignore ettik
        }
    }







}
