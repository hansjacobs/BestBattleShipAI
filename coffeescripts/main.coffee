$("#startgame").click ->
    $.ajax
        url: 'http://localhost:50095/Register'
        type: 'POST'
        data : {GameId: $('#gameid').val(), PlayerId: $('#playerid').val(), Url: window.location.href, BattleShips:new BoardCreator().CreateBoard()}
        dataType: "json"
        success: (response) -> alert("success")
        error: (xhr, status) -> alert("error")