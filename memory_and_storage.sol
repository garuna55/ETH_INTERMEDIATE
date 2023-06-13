// SPDX-License-Identifier: MIT
pragma solidity >=0.8.5;
contract challenge {
    function addition(uint a, uint b)public pure returns(uint)  {
        return a+b;
    }
    //additon function is declared in memory.

    struct Car {
        string carname;
        uint milage ;
    }
    Car car = Car("Audi", 21);
    Car car1 = Car("Mercedes", 23);
    Car car2 = Car("Alto", 40);


    //Car structure is declared in storage.

    function car_details()public view returns(string memory,uint) {
        return( car.carname,car.milage); 
    }
     function car1_details()public view returns(string memory,uint) {
        return( car1.carname,car1.milage); 
    }
    function car2_details()public view returns(string memory,uint) {
        return( car2.carname,car2.milage); 
    }

    }  

