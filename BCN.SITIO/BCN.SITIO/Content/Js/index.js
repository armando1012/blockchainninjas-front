var web3 = new Web3(new Web3.providers.HttpProvider("http://127.0.0.1:7545"));
$.get("https://api.myjson.com/bins/1bmky4", function (data) { //JSON DEL CONTRATO (myjson.com)  https://api.myjson.com/bins/rmf0s
    var abi = data.abi;
    var Hello = web3.eth.contract(abi);
    var PersonInstance = Hello.at('0xd7dc9a181eca630b306675be75f5106543691106');    

    $("#Form1").on('submit', function (e) {
        e.preventDefault();
        setPassport();
    });

    function setPassport() {
        let tipo = 'P';
        let emisor = 'VEN';
        let noPasaporte = 'L898902C3';
        let apellidos = 'RODRIGUEZ RUIZ';
        let nombres = 'YAEL';
        let nacionalidad = 'VENEZOLANA';
        let fecNacimiento = '03 DIC/DIC 1991';
        let fecEmision = '14 ENE/JAN 2010';
        let fecVencimiento = '14 ENE/JAN 2015';
        let cedula = '20755109';
        let sexo = 'M';        
        let lugNacimiento = 'ZENITH VEN';
        let autoridad = 'PASSPORT OFFICE';
        let sign = "P<MEXRODRIGUEZRUIZ<<YAEL<<<<<<<<<<<<<<<<<<<L898902C36MEX1004162F100416920755109 <<<<< 10";
        let dataArre = [];

        dataArre = [tipo,
            emisor,
            noPasaporte,
            apellidos,
            nombres,
            nacionalidad,
            fecNacimiento,
            fecEmision,
            fecVencimiento,
            sexo,
            lugNacimiento,
            cedula,
            autoridad,
            sign];

        console.log(dataArre);

        PersonInstance.setPassport(dataArre, { from: web3.eth.accounts[2] }, function () {
            let gen = '<li>${PersonInstance.getMessage.call()} - ${PersonInstance.getNumber.call()}</li>';
            $("#messages").append(gen);
            $("#new_msg").val('');
            $("#new_num").val('');
        });

        window.location.href = "../../Confirmacion.aspx";
    }
});
