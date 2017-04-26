package teste;

import java.util.Date;

public class Main {
    public static void main(String[] args) {
        Pessoa eu = new Pessoa();
        eu.nome = "Ricardo Pupo Larguesa";
        eu.nascimento = new Date(79, 6, 1);
        System.out.println("Sou '"+eu.nome
                +"' e tenho "+eu.getIdade()+" anos.");
    }
}