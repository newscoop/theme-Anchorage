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
                            <div id="main-content" class="single-page section-page">

                                <article class="articles articles-list">
                                    <figure class="section-thumb pull-left">
                                        <a href="">
                                             <img src="http://lorempixel.com/325/190/business">
                                        </a>
                                    </figure>
                                    <header class="pull-right">
                                        <h2><a href="">Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.</a></h2>
                                    </header>
                                    <div class="excerpt pull-right">
                                        Vestibulum id ligula porta felis euismod semper. Donec id elit non mi porta gravida at eget metus.Vestibulum id ligula porta felis euismod semper.
                                    </div>
                                    <div class="article-links pull-right">
                                        <a href="#" class="btn btn-mini articles-button read-more"><i class="icon-double-angle-right"></i> Read More</a>
                                        <a href="#" class="btn btn-mini articles-button comment-link"><i class="icon-double-angle-right"></i> Comments(43)</a>
                                    </div>
                                    <div class="clearfix"></div>
                                </article>

                                <article class="articles articles-list">
                                    <figure class="section-thumb pull-left">
                                        <a href="">
                                             <img src="http://lorempixel.com/325/190/sports">
                                        </a>
                                    </figure>
                                    <header class="pull-right">
                                        <h2><a href="">Maecenas faucibus mollis interdum.</a></h2>
                                    </header>
                                    <div class="excerpt pull-right">
                                        Vestibulum id ligula porta felis euismod semper. Donec id elit non mi porta gravida at eget metus.Vestibulum id ligula porta felis euismod semper.
                                    </div>
                                    <div class="article-links pull-right">
                                        <a href="#" class="btn btn-mini articles-button read-more"><i class="icon-double-angle-right"></i> Read More</a>
                                        <a href="#" class="btn btn-mini articles-button comment-link"><i class="icon-double-angle-right"></i> Comments(43)</a>
                                    </div>
                                    <div class="clearfix"></div>
                                </article>

                                <article class="articles articles-list">
                                    <figure class="section-thumb pull-left">
                                        <a href="">
                                             <img src="http://lorempixel.com/325/190/">
                                        </a>
                                    </figure>
                                    <header class="pull-right">
                                        <h2><a href="">Vestibulum id ligula porta felis euismod semper. Nullam id dolor id nibh ultricies vehicula ut id elit..</a></h2>
                                    </header>
                                    <div class="excerpt pull-right">
                                        Vestibulum id ligula porta felis euismod semper. Donec id elit non mi porta gravida at eget metus.Vestibulum id ligula porta felis euismod semper.
                                    </div>
                                    <div class="article-links pull-right">
                                        <a href="#" class="btn btn-mini articles-button read-more"><i class="icon-double-angle-right"></i> Read More</a>
                                        <a href="#" class="btn btn-mini articles-button comment-link"><i class="icon-double-angle-right"></i> Comments(43)</a>
                                    </div>
                                    <div class="clearfix"></div>
                                </article>

                                <article class="articles articles-list">
                                    <figure class="section-thumb pull-left">
                                        <a href="">
                                             <img src="http://lorempixel.com/325/190/people">
                                        </a>
                                    </figure>
                                    <header class="pull-right">
                                        <h2><a href="">Curabitur blandit tempus porttitor.</a></h2>
                                    </header>
                                    <div class="excerpt pull-right">
                                        Vestibulum id ligula porta felis euismod semper. Donec id elit non mi porta gravida at eget metus.Vestibulum id ligula porta felis euismod semper.
                                    </div>
                                    <div class="article-links pull-right">
                                        <a href="#" class="btn btn-mini articles-button read-more"><i class="icon-double-angle-right"></i> Read More</a>
                                        <a href="#" class="btn btn-mini articles-button comment-link"><i class="icon-double-angle-right"></i> Comments(43)</a>
                                    </div>
                                    <div class="clearfix"></div>
                                </article>

                                <aside class="extra-articles">
                                    <h4 class="section-title"><a href=""><b>MORE ARTICLES IN THIS SECTION</b></a></h4>
                                    <div class="link">
                                        <i class="icon-double-angle-right"></i>
                                        <a class="dateline" href="#">Euismod: </a>
                                        <a href="#"> Aenean lacinia bibendum nulla sed consectetur.</a>
                                    </div>
                                    <div class="link">
                                        <i class="icon-double-angle-right"></i>
                                        <a class="dateline" href="#">Ullamcorper cras nibh: </a>
                                        <a href="#"> Nullam id dolor id nibh ultricies vehicula ut id elit</a>
                                    </div>
                                    <div class="link">
                                        <i class="icon-double-angle-right"></i>
                                        <a class="dateline" href="#">Sit Condimentum: </a>
                                        <a href="#"> Duis mollis, est non commodo luctus, nisi erat porttitor ligula.</a>
                                    </div>       
                                </aside>

                                <img class="ad section-ad" src="{{ url static_file="_img/sourcefabric-ad2.png" }}"">

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
