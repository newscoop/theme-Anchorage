{{ config_load file="{{ $gimme->language->english_name }}.conf" }}
{{ include file="_tpl/_html-head.tpl" }}

<body>
    <!-- Begins Main Container -->
    <div class="container">

        {{ include file="_tpl/header.tpl" }}

        <!-- Begins main content -->
        <section role="main">
            <div class="row">
                <div id="main" class="span12">
                    <div class="row columns">
                        <div class="span8 column">
                            <div id="main-content" class="single-page issues-page">

                                <a href="javascript:history.back()" class="link-color">&larr; {{ #back# }}</a>
                                <h1 class="page-title">{{ #issuesArchive# }} &rarr; {{ $gimme->issue->name }}</h1>
                                {{ list_sections }}  
                                {{ list_articles }}
                                {{ if $gimme->current_articles_list->at_beginning }}
                                <h4 class="section-title">{{ $gimme->section->name}}<a href="{{ uri options="section" }}" class="solid-button pull-right">{{ #readAll# }}</a></h4>
                                {{ /if }}

                                <article class="articles articles-list">
                                    {{ include file="_tpl/img/img_110x100.tpl" }}
                                    <header class="pull-right">
                                        <h2><a class="dateline" href="{{ uri options='section' }}">{{ $gimme->article->section->name }}: </a><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></h2>
                                    </header>
                                    <div class="excerpt pull-right">
                                        {{ $gimme->article->full_text|truncate:210:"...":true }}
                                    </div>
                                    <div class="article-links pull-right">
                                        <a href="{{ uri options="article" }}" class="btn btn-mini articles-button read-more"><i class="icon-double-angle-right"></i>{{ #readMore# }}</a>
                                        <a href="{{ uri options="article" }}#comments-block" class="btn btn-mini articles-button comment-link"><i class="icon-double-angle-right"></i> {{ #comments# }}({{ $gimme->article->comment_count }})</a>
                                    </div>
                                    <div class="clearfix"></div>
                                </article>
                                {{ /list_articles }}
                                {{ /list_sections }}  

                            </div>
                        </div>
                        <!-- Begins Sidebar -->
                        <aside id="sidebar-container" class="span4 column hidden-phone">

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
