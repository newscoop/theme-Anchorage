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
                            <div id="main-content" class="password-page">
                                <div class="anchorage-form well-form well">
                                   <form action="{{ $form->getAction() }}"  class="zend_form" method="{{ $form->getMethod() }}">
                                       <fieldset>
                                            {{ if $form->email->hasErrors() }}
                                            <div class="alert alert-error">
                                                <h5>{{ #emailIsNotCorrect# }}</h5>
                                                <p>{{ #maybeYouRegistered# }} <em>{{ $gimme->publication->name }}</em> {{ #withAnotherEmail# }}</p>
                                            </div>
                                            {{ /if }}
                                        </fieldset>
                                        <fieldset class="background-block login">
                                            <dl> {{ $form->email->setLabel("E-Mail")->removeDecorator('Errors') }}</dl>
                                            <div class="form-buttons right">
                                                <input type="submit" id="submit" class="solid-button" value="{{ #requestNewPassword# }}" />
                                            </div>
                                        </fieldset>
                                    </form>
                                 </div>
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
