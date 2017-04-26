package teste;
import java.util.Calendar;
import java.util.Date;

public class Pessoa {
    public String nome;
    public String cpf;
    public double peso;
    public double altura;
    public Pessoa pai;
    public Pessoa mãe;
    public Date nascimento;
    
    int getIdade(){
        Calendar hoje = Calendar.getInstance();
        Calendar nasc = Calendar.getInstance();
        nasc.setTime(nascimento);
        return hoje.get(Calendar.YEAR) 
                - nasc.get(Calendar.YEAR);
    }
    
    public static void main(String[] args) {
        Pessoa eu = new Pessoa();
        eu.nome = "Ricardo Pupo Larguesa";
        eu.nascimento = new Date(79, 6, 1);
        System.out.println("Sou '"+eu.nome
                +"' e tenho "+eu.getIdade()+" anos.");
    }
}