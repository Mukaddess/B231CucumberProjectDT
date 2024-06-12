package techproed.runners;

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import org.junit.runner.RunWith;

@RunWith(Cucumber.class)//cucumber ile junitin entegre olmasini saglayarak senaryolarimizi calistirmaya yarar
@CucumberOptions(// bu notasyon sayesinde hangi senaryolari calistiracagimizi ve hangi raporlari alacagimizi ayarlariz
        plugin = {
                "pretty",//console da scenario lar hakkinda ayrintili bilgi verir.
                "html:target/default-cucumber-reports.html",
                "json:target/json-reports/cucumber.json" ,
                "junit:target/xml-report/cucumber.xml",
                "rerun:TestOutput/failed_scenario.txt"
                //rerun plugin i ile fail olan scenariolari burada belirtmis oldugumuz failed_scenario.txt dosyasi icinde tutariz
        },
        features = "src/test/resources/features",
        glue = {"techproed/stepDefinitions","techproed/hooks"},// hooks u buraya papistirdik
        tags = "@US013", // bunu alip feature file uzerine yapistirdik.
        dryRun = false,
        monochrome = false//true kullanirsak consoldaki ciktilari siyah olarak verir. bence eski hali daha guzel kullanmaya gerek yok
)                        //default ayari false
public class Runner {
}
//dryRun = true, //kuru calistir.ekesik bir step definitions varmi onu kontrol eder.
//        // testleri calistirmaz testleri kontrol eder sarilik varmi diye kontrol eder consolda gosretir/*
//      dryRun parametresi eger true secilirse scenariolari calistirmadan feature file daki steplerin
//       eksik stepDefinitioni olup olmadigini kontrol eder, (browseri calistirmaz)
// */

//dryRun=false isie testleri calistirir
//tags="@iphone" senaryo olarakta calistirabilirim
//tags="@iphone or @samsung"
//tags="@iphone and @samsung"
//