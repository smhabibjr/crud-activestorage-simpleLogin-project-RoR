$(".home.index").ready(function (){
    $("#btnSubmit").click(function (e){
        e.preventDefault();

        var inputUserName = $("#inputUserName").val();
        var inputUserEmail = $("#inputUserEmail").val();

        if (inputUserName !== "" && inputUserEmail !== ""){
            $.ajax({
                url:'/update',
                type:'POST',
                data:{
                    userName:inputUserName,
                    userEmail:inputUserEmail
                },
                success: function (data, status){
                    alert(status);
                    location.reload();
                },
                error: function (data, status) {
                    alert(status);
                }
            })
        }
    })
})