<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Client.aspx.cs" Inherits="WaterCanal.Client" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script src="Scripts/JavaScript1.js"></script>
    <script src="Scripts/angular.js"></script>
    <script src="Scripts/script.js"></script>
    <link rel="stylesheet" href="style3.css" type="text/css"/>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        #Text1 {
            width: 148px;
        }
        #Button1 {
            width: 88px;
            height: 33px;
        }
        #Reset1 {
            width: 87px;
            height: 33px;
        }
        .Logo {
            width: 1292px;
        }
        #Text2 {
            width: 109px;
        }
        #Text3 {
            width: 109px;
        }
    </style>
</head>
<body ng-app="module">
    <form id="form1" runat="server" ng-controller="info">
        <div slass="header">
            <div class="Logo">
                <asp:Image ID="Image1" runat="server" Height="106px" Width="170px" ImageUrl="~/Contents/Logo.png" />
                <span class="phone">
                    <asp:Label ID="Label2" runat="server" Text="+7 (XXX) XXX-XX-XX "></asp:Label>
                    <asp:Label ID="Label1" runat="server" Text="+7 (XXX) XXX-XX-XX "></asp:Label>
                </span>
                <span  class="LC">
                  
                    <label for="Text1"><asp:Label ID="Label3" runat="server"  Text="Введите № Л/С:"></asp:Label></label><br><br>
                    <input class="input-0" id="Text1" required="required" type="text" ng-model='idValue' placeholder="Номер счета" aria-atomic="False"  />
                    <input id="Button1" type="button" value="Мои Счета" ng-click="getInfoBtn(); getInfoBalance(); getInfoDeviseHot(); getInfoDeviseCold " />
                    <input id="Reset1" type="reset"  value="Стереть" />
                   
                </span>
                <span class="firma">
                    <asp:Label ID="Label4" runat="server" Text="Личный кабинет Абонента компании WATERCANAL:" Font-Bold="True" Font-Underline="True" ></asp:Label><br><br>
                    <asp:Label ID="Label5" runat="server" Text="Компания WaterCanal - Это качественное обслуживание клиентов на протяжении уже более десяти лет! "></asp:Label>
                </span>
            </div>
        </div>
        <hr>
 <!-- ____________________________________________________________________/-->      
        <div class="Water">
            <span class="coldWater">
                <asp:Label ID="Label6" runat="server" Text="1) Счет за Х/В:" Font-Italic="False" Font-Size="14pt"></asp:Label><br><br>
                <asp:Label ID="Label15" runat="server" Text="Дата показаний: "></asp:Label>{{deviceCold.Date}}<br>
                <asp:Label ID="Label16" runat="server" Text="Предыдущие показания: "></asp:Label>{{deviceCold.PreviousStats}}<br><br>
                <label for="Text2"><asp:Label ID="Label19" runat="server" Text="Новые показания: "></asp:Label></label>
                <input class="input-0" id="Text2" type="text"  required="required"  aria-atomic="False" ng-model='sumInpCold'/><br><br>
                <input id="Button2"  class="But" type="button" value="Отправить" ng-click="setDeviceCold()" />
            <br />
            </span>

            <span class="hotWater">
                <asp:Label ID="Label7" runat="server" Text="2) Счет за Г/В:" Font-Size="14pt"></asp:Label><br><br>
                <asp:Label ID="Label17" runat="server" Text="Дата показаний: "></asp:Label>{{deviceHot.Date}}<br>
                <asp:Label ID="Label18" runat="server" Text="Предыдущие показания: "></asp:Label>{{deviceHot.PreviousStats}}<br><br>
                <label for="Text3"><asp:Label ID="Label20" runat="server" Text="Новые показания: "></asp:Label></label>
                <input class="input-0" id="Text3" type="text"  required="required"  aria-atomic="False" ng-model='sumInpHot'/><br><br>
                <input id="Button3" class="But" type="button" value="Отправить" ng-click="setDeviceHot()" />
            </span>

            <span class="infoBill">
                <asp:Label ID="Label8" runat="server" Text="Информация Л/С:" Font-Bold="True" Font-Size="16pt" ForeColor="Red"></asp:Label><br><br>
                <asp:Label ID="Label10" runat="server" Text="Лицевой счет пользователя: " Font-Bold="False"></asp:Label>{{user.PersonalAccount}}<br>
                <asp:Label ID="Label11" runat="server" Font-Bold="False"></asp:Label>{{user.Name}}<br>
                <asp:Label ID="Label9" runat="server" Font-Bold="False"></asp:Label>{{user.Surname}}<br>
                <asp:Label ID="Label12" runat="server" Font-Bold="False"></asp:Label>{{user.Patronymic}}<br><br>
                <asp:Label ID="Label13" runat="server" Text="Баланс пользователя: " Font-Bold="False"></asp:Label>{{balance.BalanceSum}}<br>
                <asp:Label ID="Label14" runat="server" Text="Дата последних изменений: " Font-Bold="False"></asp:Label>{{balance.Date}}
            </span>
        </div>
<!-- ____________________________________________________________________/-->      
       

    </form>
</body>
</html>
