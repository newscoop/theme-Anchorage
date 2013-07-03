{{ config_load file="{{ $gimme->language->english_name }}.conf" }}
{{ include "_tpl/_html-head.tpl" }}

<body>
    <!-- Begins Main Container -->
    <div class="container">

        {{ include "_tpl/header.tpl" }}

        <!-- Begins main content -->
        <section role="main">
            <div class="row">
                <div id="main" class="span12">
                    <div class="row columns">
                        <div class="span8 column">
                            <div id="main-content" class="single-page">

                                <h1 class="page-title">Vestibulum id ligula porta felis euismod semperVestibulum id ligula porta felis euismod semper.</h1>

                                <figure class="image">
                                    <a href="">
                                        <img src="http://lorempixel.com/325/190/business">
                                    </a>
                                    <figcaption>Boat in Copenhagen canals</figcaption>
                                </figure>

                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Aenean lacinia bibendum nulla sed consectetur. Vestibulum id ligula porta felis euismod semper.</p>

                                <p>Etiam porta sem malesuada magna mollis euismod. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Sed posuere consectetur est at lobortis. Nulla vitae elit libero, a pharetra augue. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Curabitur blandit tempus porttitor.</p>

                                <p>Sed posuere consectetur est at lobortis. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Sed posuere consectetur est at lobortis. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.</p>

                                <p>Etiam porta sem malesuada magna mollis euismod. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Sed posuere consectetur est at lobortis. Nulla vitae elit libero, a pharetra augue. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Curabitur blandit tempus porttitor.</p>

                                <p>Sed posuere consectetur est at lobortis. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Sed posuere consectetur est at lobortis. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.</p>

                                {{ include "_tpl/comments.tpl" }}

                            </div>
                        </div>
                        <!-- Begins Sidebar -->
                        <aside id="sidebar-container" class="span4 column">

                            {{ include "_tpl/sidebar-article.tpl" }}
                            
                        </aside>
                        <!-- / End Sidebar -->

                    </div>
                </div>
            </div>
        </section> 
        <!-- / End main content -->

{{ include "_tpl/footer.tpl" }}

{{ include "_tpl/_html-footer.tpl" }}
