@IsTest
public class HelloWorldCITest {
    @isTest
    static void HelloWorldCITest() {
        System.assertEquals(HelloWorldCI.sayHello('Lucas Gullaci'), 'Hello Lucas Gullaci');
    }
}