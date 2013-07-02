{{ config_load file="{{ $gimme->language->english_name }}.conf" }}
{{ include "_tpl/_html-head.html" }}

<body>
    <!-- Begins Main Container -->
    <div class="container">

        {{ include "_tpl/header.html" }}

        <!-- Begins main content -->
        <section role="main">
            <div class="row">
                <div id="main" class="span12">
                    <div class="row columns">
                        <div class="span8 column">
                            <div id="main-content">

                                {{ include "_tpl/front-articles.html" }}

                                {{ include "_tpl/front-extra-articles.html" }}

                                {{ include "_tpl/map.html" }}

                                {{ include "_tpl/multimedia.html" }}

                            </div>
                        </div>
                        <!-- Begins Sidebar -->
                        <aside id="sidebar-container" class="span4 column">

                            {{ include "_tpl/sidebar.html" }}
                            
                        </aside>
                        <!-- / End Sidebar -->

                    </div>
                </div>
            </div>
        </section> 
        <!-- / End main content -->

{{ include "_tpl/footer.html" }}

{{ include "_tpl/_html-footer.html" }}
