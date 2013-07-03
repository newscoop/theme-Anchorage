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
                            <div id="main-content" class="single-page section-page">
                                {{ list_articles length="5" ignore_issue="true" constraints="type not poll" }}
                                <article class="articles articles-list">
                                    <figure class="section-thumb pull-left">
                                        <a href="{{ uri options="article" }}">
                                            {{ include file='_tpl/img/img_325x190.tpl'}}
                                        </a>
                                    </figure>
                                    <header class="pull-right">
                                        <h2><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></h2>
                                    </header>
                                    <div class="excerpt pull-right">
                                         {{ $gimme->article->full_text|truncate:250:"...":true }}
                                    </div>
                                    <div class="article-links pull-right">
                                        <a href="{{ uri options="article" }}" class="btn btn-mini articles-button read-more"><i class="icon-double-angle-right"></i> {{ #readMore# }}</a>
                                        <a href="{{ uri options="article" }}#comments" class="btn btn-mini articles-button comment-link"><i class="icon-double-angle-right"></i> {{ #comments# }}({{ $gimme->article->comment_count }})</a>
                                    </div>
                                    <div class="clearfix"></div>
                                </article>
                                {{ /list_articles }}

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

                                <img class="ad section-ad" src="{{ url static_file="_img/sourcefabric-ad2.png" }}">

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
