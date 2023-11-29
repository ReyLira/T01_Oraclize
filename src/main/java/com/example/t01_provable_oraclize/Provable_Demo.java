package com.example.t01_provable_oraclize;

public class Provable_Demo {

    private String weather;
    private int temperature;
    private String location;
    private String owner;

    public Provable_Demo(String initialLocation, String contractOwner) {
        this.location = initialLocation;
        this.owner = contractOwner;
        updateWeather();
    }

    public void updateWeather() {
        // Simulación de la llamada a una API de pronóstico del clima (reemplaza esta lógica con Provable)
        this.weather = "Sunny";
        this.temperature = 25;
    }

    public String getWeather() {
        return this.weather;
    }

    public int getTemperature() {
        return this.temperature;
    }

    public void setLocation(String newLocation) {
        this.location = newLocation;
    }

    public void withdrawEther() {
        // Simulación de retirar fondos (enviar Ether) al propietario del contrato
        System.out.println("Withdraw Ether sent to owner: " + this.owner);
    }

    public static void main(String[] args) {
        // Simulación de la interacción con el contrato inteligente
        String initialLocation = "City, Country";
        String contractOwner = "0xOwnerAddress";

        Provable_Demo contract = new Provable_Demo(initialLocation, contractOwner);

        // Obtener el pronóstico del clima y la temperatura
        String currentWeather = contract.getWeather();
        int currentTemperature = contract.getTemperature();
        System.out.println("Current Weather: " + currentWeather);
        System.out.println("Current Temperature: " + currentTemperature + "°C");

        // Cambiar la ubicación
        String newLocation = "New City, New Country";
        contract.setLocation(newLocation);
        System.out.println("Location updated to: " + newLocation);

        // Retirar fondos (simulado)
        contract.withdrawEther();
    }
}
