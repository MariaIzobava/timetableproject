
var serverHostName = window.location.hostname;

var serverProtocolName = window.location.protocol;

var portName = window.location.port;

if (portName.length == 0) {
    portName = "80";
}

if (serverHostName === "localhost")
{
    serverPath = serverProtocolName + "//" + serverHostName + ":" + portName;
}
else
{
    serverPath = serverProtocolName + "//" + serverHostName;
}

function showAdminClass() {
    $('.admin-class').show();
}

function serverConnectFunc(serverUrl, jsonData) {
    $.ajax({
        url: "TableRetrieveServlet",
        type: 'POST',
        data: jsonData,

        dataType: 'json',
        async: true,

        success: function (event) {
            switch (event["answer"])
            {
                case "ok":
                    alert("success");
                    break;

                case "names":
                    var keysList = event["list"]["data"];
                    $("#table_names").empty();

                    for (var i=0; i<keysList.length; i++) {
                        var items = keysList[i];
                        var eachrow = "<tr>" +
                            "<td>" + items["id"] + "</td>" +
                            "<td>" + items["course"] + "</td>" +
                            "<td>" + items["group"] + "</td>" +
                            "<td>" + items["subgroup"] + "</td>" +
                            "<td>" + items["subject"] + "</td>" +
                            "<td>" + items["type"] + "</td>" +
                            "<td>" + items["teacher"] + "</td>" +
                            "<td>" + items["monday"] + "</td>" +
                            "<td>" + items["notes"] + "</td>" +
                            "</tr>";
                        $('#table_names').append(eachrow);

                    }

                    break;
            }
        },
        error: function (xhr, status, error) {
            alert(error);
        }
    });
}

function showAllNames()
{
    var jsonData = new Object();
    jsonData.command = "0";

    serverConnectFunc(serverPath, JSON.stringify(jsonData));
}

function addName()
{
    var jsonData = new Object();
    jsonData.command = "1";
    jsonData.name = $('#NewNameInput').val();

    serverConnectFunc(serverPath, JSON.stringify(jsonData));
}

function updateTable(tableName)
{
   // alert("success!!");
    //alert(serverHostName);
    //alert(serverProtocolName);
    var jsonData = new Object();
    jsonData.command = "0";
    jsonData.tableName = tableName;
    serverConnectFunc(serverPath, JSON.stringify(jsonData));

}

