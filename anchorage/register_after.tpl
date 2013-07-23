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
                                <div class="alert">
                                    <p>{{ #followTheSteps# }}</p>
                                    <p><b>{{ #thanksForRegistering# }}</b></p>
                                </div>
                            </div>
                        </div>
                        <!-- Begins Sidebar -->
                        <aside id="sidebar-container" class="span4 column hidden-phone">

                            {{ include file="_tpl/sidebar-community.tpl" }}
                            
                        </aside>
                        <!-- / End Sidebar -->

                    </div>
                </div>
            </div>
        </section> 
        <!-- / End main content -->

{{ include "_tpl/footer.tpl" }}

{{ include "_tpl/_html-footer.tpl" }}
