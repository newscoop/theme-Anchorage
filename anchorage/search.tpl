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
                                {{ list_search_results length="5" order="bypublishdate desc" }}
                                {{if $gimme->current_list->at_beginning}}
                                <p>{{ #resultsFor# }} <strong>"{{ $gimme->search_articles_action->search_phrase }}"</strong>.</p>
                                {{/if}}
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

                                {{ if $gimme->current_list->at_end }}            
                                {{* PAGINATION *}}
                                {{ $pages=ceil($gimme->current_list->count/5) }}
                                {{ $curpage=intval($gimme->url->get_parameter($gimme->current_list_id())) }}
                                {{ if $pages gt 1 }}
                                <div class="pagination">
                                    <ul>
                                        {{ if $gimme->current_list->has_previous_elements }}<li class="prev"><a href="{{ uripath options="section" }}?{{ urlparameters options="previous_items" }}">&laquo;</a></li>{{ /if }}
                                        {{ for $i=0 to $pages - 1 }}
                                            {{ $curlistid=$i*5 }}
                                            {{ $gimme->url->set_parameter($gimme->current_list_id(),$curlistid) }}
                                            {{ if $curlistid != $curpage }}
                                            <li><a href="{{ uripath options="section" }}?{{ urlparameters }}">{{ $i+1 }}</a></li>
                                            {{ else }}
                                            <li class="selected"><a href="{{ uripath options="section" }}?{{ urlparameters }}">{{ $i+1 }}</a></li>
                                            {{ $remi=$i+1 }}
                                            {{ /if }}
                                        {{ /for }}
                                        {{ if $gimme->current_list->has_next_elements }}<li class="next"><a href="{{ uripath options="section" }}?{{ urlparameters options="next_items" }}">&raquo;</a></li>{{ /if }}
                                    </ul>
                                </div>
                                {{ $gimme->url->set_parameter($gimme->current_list_id(),$curpage) }}
                                {{ /if }}

                                {{ /if }}

                                {{ /list_search_results }} 
                                
                                {{ if $gimme->prev_list_empty }}
                                  <p>{{ #noResultsFound# }} <strong>"{{ $gimme->search_articles_action->search_phrase }}"</strong>.</p>
                                {{ /if }}    

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
