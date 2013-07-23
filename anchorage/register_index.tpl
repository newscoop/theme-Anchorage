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
                                <div class="anchorage-form well-form well">
                                    {{ $form }}
                                </div>
                                <script type="text/javascript">
                                $('.zend_form #email').change(function() {
                                    $.post('{{ $view->url(['controller' => 'register', 'action' => 'check-email'], 'default') }}?format=json', {
                                        'email': $(this).val()
                                    }, function (data) {
                                        if (data.status) {
                                            $('.zend_form #email').css('color', 'green');
                                        } else {
                                            $('.zend_form #email').css('color', 'red');
                                        }
                                    }, 'json');
                                }).keyup(function() {
                                    $(this).change();
                                });
                                </script>
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
