// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract clima {
    string public mensajeConcatenado;

    constructor() {
        mensajeConcatenado = "";
        concatData();
    }

    function concatData() internal {
        mensajeConcatenado = string(
            abi.encodePacked(
                "Clima: ", estado, " - ",
                "Temperatura: ", Temperatura, " - ",
                "Humedad: ", Humedad, " - ",
                "Viento: ", Viento, " - ",
                "Presion: ", Presion, " - ",
                "Visibilidad: ", Visibilidad, " - ",
                "Precipitacion: ", Precipitacion, " - ",
                "Nubosidad: ", Nubosidad
            )
        );
    }

    string public estado = "Soleado";
    string public Temperatura = "25";
    string public Humedad = "50";
    string public Viento = "10";
    string public Presion = "1000";
    string public Visibilidad = "10";
    string public Precipitacion = "0";
    string public Nubosidad = "0";
}