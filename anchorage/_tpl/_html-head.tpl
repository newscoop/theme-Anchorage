<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title></title>
    <meta name="viewport" content="width=device-width">
    <meta name="description" content="">
    
    <meta name="keywords" content="" />
    
    <link rel="stylesheet" href="{{ url static_file="_css/bootstrap.min.css" }}">
    <link rel="stylesheet" href="{{ url static_file="_css/anchorage.skin.css" }}">
    <link rel="stylesheet" href="{{ url static_file="_css/anchorage.responsive.css" }}">
    <link rel="stylesheet" href="{{ url static_file="_css/font-awesome.min.css" }}">
    
    <!--[if lte IE 9]>
       <link rel="stylesheet" href="">
    <![endif]-->
    
    <!-- RSS & Pingback -->
    <link rel="alternate" type="application/rss+xml" title="RSS 2.0" href="">
    
    <link rel="shortcut icon" href="">
    <link rel="apple-touch-icon" href="">
    
    <!--[if lt IE 9]>
       <script src="//html5shiv.googlecode.com/svn/trunk/html5.js"></script>
       <script>window.html5 || document.write('<script src=""><\/script>')</script>
    <![endif]-->
    
    <!-- jQuery Library -->
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
    
    <!--
    <script>window.jQuery || document.write('<script src=""><\/script>')</script>
     -->
    <!-- Vendor plugins -->
    <script src="{{ url static_file="_js/vendor/jquery.zweatherfeed.min.js" }}"></script>
    <script src="{{ url static_file="_js/vendor/jQuery.equalHeights.js" }}"></script>
    <script src="{{ url static_file="_js/bootstrap.min.js" }}"></script>
    
    <script type="text/javascript">
        $(document).ready(function () {
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
            
            // increase search form on focus
            $('.search-query').focus(function(){
                    $(this).addClass('big-search');
                }
            );

            // Equal heights in internal column divs
            $('.columns').equalHeights();
            $('.comment').equalHeights();
            $('#comment-form').equalHeights();

            // Mejorar esto
            //var alto = $('#sidebar').height() - ($('#graph').height() + $('#login-form').height() + $('#premium-block').height() + $('#premium-block-description').height());
            //$('#extra').height(alto-85);
            
            //var sidebar = $('#sidebar-container').height();
            //var extra = $('#extra').height()
            //$('#extra').height(sidebar-extra-100);

            //solo para article
            $('.carousel').carousel();

        });
    </script>



</head>
