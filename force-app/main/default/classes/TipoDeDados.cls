public with sharing class TipoDeDados {
    public static void tipoDeDados() {
        String euSouUmaString = 'Aqui vai um texto';
        System.debug(euSouUmaString);

        Boolean verdadeiroFalso = true;
        verdadeiroFalso = false;
        System.debug(verdadeiroFalso);

        Integer inteiro = -1; // -2147483648 até 2147483647
        System.debug(inteiro);

        Long longo = 1545454545; // - 2^63 até (2^63)-1
        System.debug(longo);

        Decimal pontoFluante = 1.63; // - 2^63 até (2^63)-1
        System.debug(pontoFluante);

        Double pontoFluanteD = 1.999999;   // - 2^63 até (2^63)-1
        System.debug(pontoFluanteD);
        
        Blob b = Blob.valueOf('Eu sou um blob');
        System.debug(b.toString()); //Base64

        Object obj = false;
        System.debug(obj);

        Boolean souumaString = obj instanceof Boolean;
        system.debug(souumaString);

        Date d = Date.today();
        Date d2 = Date.today().addDays(-45);
        system.debug(d.dayOfYear());
        System.debug(d2.daysBetween(d));

        Date dx = d.toStartOfMonth();
        System.Debug(dx);

        Datetime dt = Datetime.now();
        System.debug(dt);
        System.debug(dt.getTime()); //1 Jan 1970 00:00:00:00
        System.debug(dt.time());
        System.debug(dt.timeGmt());
        Time dTime = dt.time();
        System.debug(dTime);

        Time myTime = Time.newInstance(18, 30, 2, 20);
        System.Debug(myTime);

        // Enum Season {WINTER, SPRING, SUMMER, FALL}
        
        // Season mySeason = Season.SUMMER;
        // for(Season s : Season.values()) {
        //     System.debug(s);
        // }

        // System.debug(mySeason);

        Account a = new Account();
        a.Name = 'teste';
        insert a;

        Id aId = a.Id;
        System.debug(aId);
        
    }

    public void save(Id obj) {

    }
}