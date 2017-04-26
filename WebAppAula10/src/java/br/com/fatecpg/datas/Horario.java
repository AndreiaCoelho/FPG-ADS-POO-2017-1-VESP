package br.com.fatecpg.datas;

public class Horario {
    private int horas;
    private int minutos;
    private int segundos;

    public int getHoras() {
        return horas;
    }

    public void setHoras(int horas) {
        this.horas = horas;
    }

    public int getMinutos() {
        return minutos;
    }

    public void setMinutos(int minutos) {
        if(minutos<0) this.minutos = 0;
        else if(minutos > 59) this.minutos = 59;
        else this.minutos = minutos;
    }

    public int getSegundos() {
        return segundos;
    }

    public void setSegundos(int segundos) {
        if(segundos<0) this.segundos = 0;
        else if(segundos > 59) this.segundos = 59;
        else this.segundos = segundos;
    }
}