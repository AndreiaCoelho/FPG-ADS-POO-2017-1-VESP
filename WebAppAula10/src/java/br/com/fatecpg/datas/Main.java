package br.com.fatecpg.datas;

public class Main {
    public static void main(String[] args) {
        Data hoje = new Data();
        hoje.setDia(26);
        hoje.setMês(4);
        hoje.setAno(2017);
        Data meuNasc = new Data();
        meuNasc.setDia(1);
        meuNasc.setMês(7);
        meuNasc.setAno(1979);
        
        Horario agora = new Horario();
        agora.setHoras(14);
        agora.setMinutos(18);
        agora.setSegundos(32);
        Horario intervalo = new Horario();
        intervalo.setHoras(14);
        intervalo.setMinutos(40);
        intervalo.setSegundos(0);
    }
}