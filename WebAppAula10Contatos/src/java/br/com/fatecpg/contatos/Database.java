package br.com.fatecpg.contatos;

import java.util.ArrayList;

public class Database {
    private static ArrayList<Contato> contatos;
    public static ArrayList<Contato> getContatos(){
        if(contatos == null){
            contatos = new ArrayList<>();
            Contato c1 = new Contato();
            c1.setNome("Fulano da Silva");
            c1.setEmail("fulano@domain.com");
            c1.setTelefone("(13) 9 9999-1111");
            Contato c2 = new Contato();
            c2.setNome("Beltrano da Silva");
            c2.setEmail("beltrano@domain.com");
            c2.setTelefone("(13) 9 9999-2222");
            Contato c3 = new Contato();
            c3.setNome("Cibrano da Silva");
            c3.setEmail("cicrano@domain.com");
            c3.setTelefone("(13) 9 9999-3333");
            contatos.add(c1);contatos.add(c2);contatos.add(c3);
        }
        return contatos;
    }
}