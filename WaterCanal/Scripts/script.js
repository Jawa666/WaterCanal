/// <reference path="angular.js" />

var app = angular.module("module", []);

app.controller("info", function ($scope, $http) {
    $scope.getInfoBtn = function () {              //Функция показывающая информацию по #Л/С
        $http({
            url: "https://localhost:44357/PaymentSystem.asmx/GetUser",
            params: { id: $scope.idValue },
            method: "post"
        }).then(function (response) {
            $scope.user = JSON.parse(JSON.stringify(response.data));
        })
    }

    $scope.getInfoBalance = function () {        //Функция показвающая баланс и дату изменения баланца по №Л/С
        $http({
            url: "https://localhost:44357/PaymentSystem.asmx/GetBalancer",
            params: { id: $scope.idValue },
            method: "post"
        }).then(function (response) {
            $scope.balance = JSON.parse(JSON.stringify(response.data));
        })
    }

    $scope.setInfo = function () {         //Функция которая Изменяет состояние баланса(пополнение) по Л\С и пополненному балансу.
        $http({
            url: "https://localhost:44357/PaymentSystem.asmx/SetBalanceRefill",
            data: {
                inpId: $scope.idValue,
                inpBalance: $scope.sumInp
            },
            method: "post"
        }).then();
    }

    $scope.getInfoDeviseCold = function () {              //Функция показывающая информацию о счете по #Л/С и номеру воды
        $http({
            url: "https://localhost:44357/PaymentSystem.asmx/GetDevice",
            params: {
                id: $scope.idValue,
                meter: 1
            },
            method: "post"
        }).then(function (response) {
            $scope.deviceCold = JSON.parse(JSON.stringify(response.data));
        })
    }

    $scope.getInfoDeviseHot = function () {              //Функция показывающая информацию о счете по #Л/С и номеру воды
        $http({
            url: "https://localhost:44357/PaymentSystem.asmx/GetDevice",
            params: {
                id: $scope.idValue,
                meter: 2
            },
            method: "post"
        }).then(function (response) {
            $scope.deviceHot = JSON.parse(JSON.stringify(response.data));
        })
    }


    $scope.setDeviceCold = function () {         //Функция которая Изменяет состояние счетчика по Л\С, номеру воды.
        $http({
            url: "https://localhost:44357/PaymentSystem.asmx/SetDeviceStats",
            data: {
                inpId: $scope.idValue,
                inpStats: $scope.sumInpCold,
                inpMeter: 1
            },
            method: "post"
        }).then();
    }

    $scope.setDeviceHot = function () {         //Функция которая Изменяет состояние счетчика по Л\С, номеру воды.
        $http({
            url: "https://localhost:44357/PaymentSystem.asmx/SetDeviceStats",
            data: {
                inpId: $scope.idValue,
                inpStats: $scope.sumInpHot,
                inpMeter: 2
            },
            method: "post"
        }).then();
    }



});
