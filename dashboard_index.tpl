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
                            <div id="main-content" class="dashboard-page">
                            <h1 class="page-title">{{ #welcome# }} {{ $user->name }}</h1>
                                <center>
                                    <span class="label">{{ #currentAvatar# }}</span><br>
                                    <figure class="user-image">
                                        <img src="{{ include file="_tpl/user-image.tpl" user=$user width=140 height=210 }}" style="max-width: 100%" rel="resizable" />
                                    </figure>
                                </center>
                                <div class="anchorage-form well-form well">
                                    <link rel="stylesheet" href="{{ url static_file="_css/datepicker.css"}}">
                                    <script src="{{ url static_file='_js/vendor/bootstrap-datepicker.js'}}"></script>
                                    <script type="text/javascript">
                                        $(function() {
                                             // Date picker
                                             $('#attributes-birth_date').datepicker({
                                                format:'yyyy/mm/dd',
                                                startView:2,
                                                autoclose:'true'
                                             });
                                        });
                                    </script>
                                    {{ $form }}
                                </div>
                            </div>
                        </div>
                        <!-- Begins Sidebar -->
                        <aside id="sidebar-container" class="span4 column hidden-phone">

                            {{ include "_tpl/sidebar-community.tpl" }}
                            
                        </aside>
                        <!-- / End Sidebar -->

                    </div>
                </div>
            </div>
        </section> 
        <!-- / End main content -->

{{ include "_tpl/footer.tpl" }}

{{ include "_tpl/_html-footer.tpl" }}
