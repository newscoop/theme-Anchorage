// Contains all custom js and configurations for Anchorage Theme

        // Custom function to get equal heights of a set of divs
        var autoheight = function(){

            // set height to auto to prevent fixed height
            $(arguments).each(function(n, elem){
                $(elem).css('height', 'auto');
            });

            // get max height
            var max_height = Math.max.apply(
                Math, $(arguments).map(function(n, elem){
                   return $(elem).outerHeight();
                }).get()
            );

            // set height to all elements
            $(arguments).each(function(n, elem){
                $(elem).height(max_height);
            });   
                   
        }

        // Set the same height to main-content and sidebar when the page has finished to load
        $(window).load(function(){
            autoheight("#main-content", "#sidebar");
        });

        $(document).ready(function () {

            // Weather widget configuration
            // For use a different location code go to http://uk.weather.com/local
            $('#weather').weatherfeed(['GMXX0007'],{
                unit: 'f',
                image: true,
                country: true,
                highlow: false,
                wind: false,
                humidity: false,
                visibility: true,
                sunrise: true,
                sunset: true,
                forecast: false,
                link: true
            });
            
            $('.comment').equalHeights();

            // increase search form on focus
            $('.search-query').focus(function(){
                    $(this).addClass('big-search');
                }
            );                       

            // set same height to main-content and sidebar
            autoheight("#main-content", "#sidebar");

            // binding resize of window, set the same height after resize
            $(window).resize(function(){
                autoheight("#main-content", "#sidebar");                
            });

            // require for carouser sidebar on articles
            $('.carousel').carousel();

            // initialize timeago plugin for dates
            $(".timeago").timeago();

            // Poll Ajaxified
            $('#poll-button').click(function(){
              $.post($('form[name=debate]').attr("action"),$('form[name=debate]').serialize(),function(data){$('#poll').html(data);});
              return false;
            }); 

        });