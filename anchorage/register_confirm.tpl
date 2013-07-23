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
                                $('#first_name, #last_name').keyup(function() {
                                    $.post('{{ $view->url(['controller' => 'register', 'action' => 'generate-username'], 'default') }}?format=json', {
                                        'first_name': $('#first_name').val(),
                                        'last_name': $('#last_name').val()
                                    }, function (data) {
                                        $('#username').val(data.username).css('color', 'green');
                                    }, 'json');
                                });

                                $('#username').change(function() {
                                    $.post('{{ $view->url(['controller' => 'register', 'action' => 'check-username'], 'default') }}?format=json', {
                                        'username': $(this).val()
                                    }, function (data) {
                                        if (data.status) {
                                            $('#username').css('color', 'green');
                                        } else {
                                            $('#username').css('color', 'red');
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
