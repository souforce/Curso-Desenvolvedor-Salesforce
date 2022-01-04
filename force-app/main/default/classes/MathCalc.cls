public with sharing class MathCalc {
    public MathCalc() {
        Calculator.CalculatorSoap calc = new Calculator.CalculatorSoap();
        Integer resultAdd = calc.Add(10, 10);
        System.Debug('10 + 10 = ' + resultAdd);
        System.assertEquals(resultAdd, 20);

        Integer resultDive = calc.Divide(10, 5);
        System.Debug('10 / 5 = ' + resultDive);
        System.assertEquals(resultDive, 2);

        Integer resultSub = calc.Subtract(10, 5);
        System.Debug('10 - 5 = ' + resultSub);
        System.assertEquals(resultSub, 5);

        Integer resultMulti = calc.Multiply(10, 10);
        System.Debug('10 * 10 = ' + resultMulti);
        System.assertEquals(resultMulti, 100);
    }
}
