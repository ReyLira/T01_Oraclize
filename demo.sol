// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract WeatherContract {
    string public weather;
    uint public temperature;
    string public location;
    address public owner;

    event WeatherData(string weather, uint temperature, string location, address owner);

    constructor(string memory initialLocation) {
        location = initialLocation;
        owner = msg.sender;
        updateWeather();
    }

    function updateWeather() public {
        // Simulación de la actualización del clima (reemplazar con llamada a un servicio externo)
        weather = "Sunny";
        temperature = 25;
    }

    function getCombinedValues() public view returns (string memory, uint, string memory, address) {
        return (weather, temperature, location, owner);
    }

    function setLocation(string memory newLocation) public {
        require(msg.sender == owner, "Only the owner can change the location");
        location = newLocation;
    }

    function logWeatherData() public {
        (string memory _weather, uint _temperature, string memory _location, address _owner) = getCombinedValues();
        emit WeatherData(_weather, _temperature, _location, _owner);
    }
}
