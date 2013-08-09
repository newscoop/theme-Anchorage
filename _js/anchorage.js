// Contains all custom js and configurations for Anchorage Theme

        // Browser detection
        jQuery.browser={};(function(){jQuery.browser.msie=false;
        jQuery.browser.version=0;if(navigator.userAgent.match(/MSIE ([0-9]+)\./)){
        jQuery.browser.msie=true;jQuery.browser.version=RegExp.$1;}})();

        if ( $.browser.msie && $.browser.version < 8 ) {
          //definition for autoheight function for IE 7
          var autoheight = function(){
             //set height to auto to prevent fixed height
             $(arguments).each(function(n, elem){
                 $(elem).css('height', 'auto');
             });

             // get max height
             var lista = $(arguments).map(function(n, elem){
                            return $(elem).outerHeight();
                          }).get();

             var max_height = Math.max.apply(null, lista);

             // set height to all elements
             for (var i=0; i<arguments.length; i++){
               //go home IE 7 you're drunk
               var css_height = $(arguments[i]).outerHeight(); 
               if (css_height < max_height){
                 //ugly hack for IE if you put less than 15 
                 //it produces an infinite loop
                 $(arguments[i]).height(max_height-15);
               }
             }
          }
        } else{
            var autoheight = function(){
                // set height to auto to prevent fixed height
                $(arguments).each(function(n, elem){
                    $(elem).css('height', 'auto');
                });

                // get max height
                var max_height = Math.max.apply(
                    null, $(arguments).map(function(n, elem){
                       return $(elem).outerHeight();
                    }).get()
                );

                // set height to all elements
                $(arguments).each(function(n, elem){
                    $(elem).height(max_height);
                });          
            }

        }


        // Set the same height to main-content and sidebar when the page has finished to load
        $(window).load(function(){
           autoheight("#main-content", "#sidebar");
        });
         // var pageload = window.onload;
         // window.onload = function() {
         //     autoheight("#main-content", "#sidebar");
         //     pageload();
         // };

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

            // // set same height to main-content and sidebar
            autoheight("#main-content", "#sidebar");

            // binding resize of window, set the same height after resize
            $(window).resize(function(){
              autoheight("#main-content", "#sidebar");                
            });

            // // require for carouser sidebar on articles
            $('.carousel').carousel();

            // initialize timeago plugin for dates
            $(".timeago").timeago();

            // Place holder on inputs for IE
            if(!$.support.placeholder) {
                var active = document.activeElement;
                $(':text').focus(function () {
                        if ($(this).attr('placeholder') != '' && $(this).val() == $(this).attr('placeholder')) {
                                $(this).val('').removeClass('hasPlaceholder');
                        }
                }).blur(function () {
                        if ($(this).attr('placeholder') != '' && typeof $(this).attr('placeholder') != 'undefined' && ($(this).val() == '' || $(this).val() == $(this).attr('placeholder'))) {
                                $(this).val($(this).attr('placeholder')).addClass('hasPlaceholder');
                        }
                });
                $(':text').blur();
                $(active).focus();
                $('form').submit(function () {
                        $(this).find('.hasPlaceholder').each(function() { $(this).val(''); });
                });
            }

            // Poll Ajaxified
            $('#poll-button').click(function(){
              $.post($('form[name=debate]').attr("action"),$('form[name=debate]').serialize(),function(data){$('#poll').html(data);});
              return false;
            }); 

        });
