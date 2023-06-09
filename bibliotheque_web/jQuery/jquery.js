$(document).ready(function(){ //    Aply jQuery on our html page
    // $("p").hide();  //  Hide All paragraphes

    //      !__Events: click, dblclick, mouseenter, mouseleave and hover__!        //

    //  Event : click
    $("button").click(function(){
        // $(this).hide(); //  Hide the clicked element  we can use $("button").hide();
        // $('p').css('color', '#F00');  //  Color with red All paragraphes
        // $("p").hide();  //  Hide All paragraphes
    });

    //  Event : dblclick
    $("button").dblclick(function(){
        // $(this).hide(); //  Hide the clicked element  we can use $("button").hide();
    });

    //  Event : mouseenter
    $("button").mouseenter(function(){
        // $(this).css('color', 'red');
    });

    //  Event : mouseleave
    $("button").mouseleave(function(){
        // $(this).css('color', 'black');
    });

    //  Event : hover
    $("button").hover(function(){
        // $(this).css('color', 'red');
    },
    function(){
        // $(this).css('color', 'black');
    });


    //      !__Effects: hide, show and toggle__!        //
    $("button").click(function(){
        // $("p").hide();  //  Hide All paragraphes
        // $("p").show();  //  Show All paragraphes
        // $("p").toggle();  //  Toggle: show/hide All paragraphes
    });
    //      !__Effects Options: hide(speed,callback) __!        //
    $("button").click(function(){
        $("p").hide('slow', function(){
            $("span").show();
        });  //  Hide All paragraphes in [400 => ms(default value), 5000 => ms, "slow", "fast"]     &&      Show the span
        // $("p").show();  //  Show All paragraphes
        // $("p").toggle();  //  Toggle: show/hide All paragraphes
    });
});