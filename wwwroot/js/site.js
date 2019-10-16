// Please see documentation at https://docs.microsoft.com/aspnet/core/client-side/bundling-and-minification
// for details on configuring this project to bundle and minify static web assets.

// Write your JavaScript code.

    var textbox;
    var selectValue;
    $(function () {
        textbox = $("#txtCity");
        selectValue = $('ul#selectedValue');

        textbox.on("input", function () {
            getAutoComplete(textbox.val());
        });
    });
    function getAutoComplete(cityName) {
        var uri = "Home/GetCity";
        $.getJSON(uri)
       .done(function (data) {
           selectValue.html("");
           var count = 0;
           $.each(data, function (key, item) {
               //$('<option>').text(item).appendTo('#selectedValue');
               var li = $('<li/>').addClass('ui-menu-item').attr('role', 'menuitem')
                   .html("<a href='#' onclick=\"setText('" + item + "')\">" + item + "</a>")
                   .appendTo(selectValue);

               count++;
           });
       });
    }
    function setText(text) {
        textbox.val(text);
        getAutoComplete(text);
    }
