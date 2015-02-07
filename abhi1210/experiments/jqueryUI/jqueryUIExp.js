// Simple Drag And Drop

$(function () {
    $("#draggable").draggable();
    $("#droppable").droppable({
        drop: function (event, ui) {
            $(this)
              .addClass("ui-state-highlight")
              .find("p")
              .html("Dropped!");
        }
    });
});


// Restricted Drag And Drop

$(function () {
    $("#cs4550Students").draggable();
    $("#cs5610Students").draggable();

    $("#cs4550").droppable({
        accept: "#cs4550Students",
        drop: function (event, ui) {
            $(this)
            .addClass("ui-state-highlight")
            .find("p")
            .html("Dropped!");
        }
    });
    $("#cs5610").droppable({
        accept: "#cs5610Students",
        drop: function (event, ui) {
            $(this)
            .addClass("ui-state-highlight")
            .find("p")
            .html("Dropped!");
        }
    });

});

// Resizable

$(function () {
    $("#resizableAnimate").resizable({
        animate: true,
        ghost:true
    });
    $("#resizableGhost").resizable({
        ghost: true
    });
});

// Selectable
$(function () {
    $("#selectable").selectable();
});

// Sortable
$(function () {
    $("#sortable").sortable();
    $("#sortable").disableSelection();
});


// Accordian Widget
$(function () {
    $("#accordion").accordion();
});

// Autocomplete
$(function () {
    var availableTags = [
      "ActionScript",
      "AppleScript",
      "Asp",
      "BASIC",
      "C",
      "C++",
      "Clojure",
      "COBOL",
      "ColdFusion",
      "Erlang",
      "Fortran",
      "Groovy",
      "Haskell",
      "Java",
      "JavaScript",
      "Lisp",
      "Perl",
      "PHP",
      "Python",
      "Ruby",
      "Scala",
      "Scheme"
    ];

    $("#tags").autocomplete({
        source: availableTags
    });
});

// Date Picker
$(function () {
    $("#date").datepicker();
});

// Dialogue Box
$(function () {
    $("#dialogBox").dialog();
});

// Tabs
$(function () {
    $("#tabs").tabs();
});

// Tool-tip
$(function () {
    $("#toolTip").tooltip();
});


