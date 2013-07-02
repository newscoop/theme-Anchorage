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
                            <div id="main-content" class="single-page archive-page">

                                <h1 class="page-title">Issues Archive</h1>

                                <div class="archive-list">
                                    <div class="archive-border"></div>
                                    <a class="archive-title" href="">January 2013</a>
                                    <span class="published-date" href="">Published on 01 January 2013</span>
                                </div>

                                <div class="archive-list">
                                    <div class="archive-border"></div>
                                    <a class="archive-title" href="">December 2010</a>
                                    <span class="published-date" href="">Published on 01 January 2013</span>
                                </div>

                                <div class="archive-list">
                                    <div class="archive-border"></div>
                                    <a class="archive-title" href="">November 2010</a>
                                    <span class="published-date" href="">Published on 01 January 2013</span>
                                </div>

                                <div class="archive-list">
                                    <div class="archive-border"></div>
                                    <a class="archive-title" href="">October 2010</a>
                                    <span class="published-date" href="">Published on 01 January 2013</span>
                                </div>

                            </div>
                        </div>
                        <!-- Begins Sidebar -->
                        <aside id="sidebar-container" class="span4 column">

                            {{ include "_tpl/sidebar-article.html" }}
                            
                        </aside>
                        <!-- / End Sidebar -->

                    </div>
                </div>
            </div>
        </section> 
        <!-- / End main content -->

{{ include "_tpl/footer.html" }}

{{ include "_tpl/_html-footer.html" }}
