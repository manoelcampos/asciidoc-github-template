public class Quadrado{
    /**
     * Calcula o quadrado de um número.
     */
    public static double quadrado(double valor){
        return valor * valor;
    }

    public static void main(String[] args) {
        double valor = 4;
        System.out.printf("O quadrado de %.2f é %.2f\n", valor, quadrado(valor));
    }
}