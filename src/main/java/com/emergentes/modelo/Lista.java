
package com.emergentes.modelo;

public class Lista {
    private int id;
    private String tarea;
    private String prioridad;
    private String completado;

    public Lista() {
        this.id = 0;
        this.tarea = "";
        this.prioridad = "";
        this.completado= "";
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTarea() {
        return tarea;
    }

    public void setTarea(String Tarea) {
        this.tarea = Tarea;
    }

    public String getPrioridad() {
        return prioridad;
    }

    public void setPrioridad(String prioridad) {
        this.prioridad = prioridad;
    }

    public String getCompletado() {
        return completado;
    }

    public void setCompletado(String completado) {
        this.completado = completado;
    }
}
