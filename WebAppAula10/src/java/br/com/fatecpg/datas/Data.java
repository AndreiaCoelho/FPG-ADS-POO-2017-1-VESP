package br.com.fatecpg.datas;

public class Data {
    private int ano;
    private int mês;
    private int dia;

    public int getAno() {
        return ano;
    }

    public void setAno(int ano) {
        this.ano = ano;
    }

    public int getMês() {
        return mês;
    }

    public void setMês(int mês) {
        if(mês<1) this.mês = 1;
        else if(mês > 12) this.mês = 12;
        else this.mês = mês;
    }

    public int getDia() {
        return dia;
    }

    public void setDia(int dia) {
        if(dia<1) this.dia = 1;
        else if(dia > 31) this.dia = 31;
        else this.dia = dia;
    }
    
}