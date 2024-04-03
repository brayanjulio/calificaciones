package com.emergentes.calificaciones;

public class Session {

    private int id;
    private String nombres;
    private int p1, p2, ef, nota;

    public Session() {
        this.id = 0;
        this.nombres = "";
        this.p1 = 0;
        this.p2 = 0;
        this.ef = 0;
        this.nota = 0;
    }

    public int getId() {
        return id;
    }

    public String getNombres() {
        return nombres;
    }

    public int getP1() {
        return p1;
    }

    public int getP2() {
        return p2;
    }

    public int getEf() {
        return ef;
    }

    public int getNota() {
        return nota;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setNombres(String nombres) {
        this.nombres = nombres;
    }

    public void setP1(int p1) {
        this.p1 = p1;
    }

    public void setP2(int p2) {
        this.p2 = p2;
    }

    public void setEf(int ef) {
        this.ef = ef;
    }

    public void setNota(int nota) {
        this.nota = nota;
    }
    
}
