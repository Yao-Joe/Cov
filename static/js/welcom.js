  layui.use('layer', function () {
        var layer = layui.layer
    });

    function spider() {
        let index = layer.load();
        $.ajax({
            url: "/spider/start",
            method: "POST",
            success: function (obj) {
                layer.closeAll();
                layer.msg("运行成功！", {icon: 6})

            },
            error: function (xhr, type, errorThrown) {
            }
        });
    }