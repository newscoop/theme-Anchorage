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
                            <div id="main-content" class="register-page">
                                <h1 class="page-title">{{ #hi# }}, {{ $name }}</h1>

                                <p>{{ #youAreHereForTheFirstTime# }}</p>
                                {{ if !empty($error) }}
                                <div class="alert alert-error"><strong>{{ $error }}</strong></div>
                                {{ /if }}
                                <div class="anchorage-form well-form well">
                                 {{ $form }}
                                </div>
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
