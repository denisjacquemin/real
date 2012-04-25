# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

real = Admin::Agency.create(:name => 'Real WebSite', :domain => 'localhost')
template = Admin::Template.create(:title => 'Dark Shadow', :content => '<!DOCTYPE html>
<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <title>{{page.title}}</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="page.title" content="{{page.title}}">
    <meta name="description" content="">
    <meta name="author" content="">

    <link href="/assets/admin.css?body=1" media="all" rel="stylesheet" type="text/css" />
    <link href="/assets/bootstrap.css?body=1" media="all" rel="stylesheet" type="text/css" />
    <link href="/assets/bootstrap_and_overrides.css?body=1" media="all" rel="stylesheet" type="text/css" />
    <link href="/assets/admin/agencies.css?body=1" media="all" rel="stylesheet" type="text/css" />
    <link href="/assets/admin/categories.css?body=1" media="all" rel="stylesheet" type="text/css" />
    <link href="/assets/admin/fields.css?body=1" media="all" rel="stylesheet" type="text/css" />
    <link href="/assets/admin/global.css?body=1" media="all" rel="stylesheet" type="text/css" />
    <link href="/assets/admin/items.css?body=1" media="all" rel="stylesheet" type="text/css" />
    <link href="/assets/admin/pages.css?body=1" media="all" rel="stylesheet" type="text/css" />
    <link href="/assets/admin/templates.css?body=1" media="all" rel="stylesheet" type="text/css" />
    <link href="/assets/admin/themes.css?body=1" media="all" rel="stylesheet" type="text/css" />

    <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

    <!-- Le fav and touch icons -->
    <link rel="shortcut icon" href="http://twitter.github.com/bootstrap/examples/images/favicon.ico">
    <link rel="apple-touch-icon" href="http://twitter.github.com/bootstrap/examples/images/apple-touch-icon.png">
    <link rel="apple-touch-icon" sizes="72x72" href="http://twitter.github.com/bootstrap/examples/images/apple-touch-icon-72x72.png">
    <link rel="apple-touch-icon" sizes="114x114" href="http://twitter.github.com/bootstrap/examples/images/apple-touch-icon-114x114.png">
  </head>

  <body>
    <div class="navbar navbar-fixed-top">
      <div class="navbar-inner">
        <div class="container-fluid">
          <a data-target=".nav-collapse" data-toggle="collapse" class="btn btn-navbar">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </a>
          <a href="#" class="brand">This is my template</a>
          <div class="nav-collapse">
            <ul class="nav">
              <li class="active"><a href="/admin/themes/index">Themes</a></li>
              <li><a href="/admin/items">Items</a></li>
              <li><a href="/admin/agencies/1/edit">Agency Details</a></li>
              <li class="divider-vertical"></li>
              <li><a href="/" target="_blank">Public Website</a></li>
            </ul>
          </div><!--/.nav-collapse -->
        </div>
      </div>
    </div>
    <div class="container-fluid">
      <div class="row-fluid">
        <div class="span3">
            <div class="well" style="padding: 8px 0;">  
              <ul class="nav nav-list">
                <li class="nav-header">Templates</li>
                  <li  ><a href="/admin/templates/1/edit">Dark Shadow</a></li>
                <li><a href="/admin/pages/new">New Template...</a></li>
              </ul>
              <ul class="nav nav-list">
                <li class="nav-header">Pages</li>
                  <li  ><a href="/admin/pages/1/edit">home real website</a></li>
                  <li  ><a href="/admin/pages/2/edit">contact real website</a></li>
                <li><a href="/admin/templates/new">New Page...</a></li>
              </ul>
            </div>
        </div>
        <div class="span9">
          {{ page.content }}
        </div>
      </div>
    </div>
    <script src="/assets/jquery.js?body=1" type="text/javascript"></script>
    <script src="/assets/jquery_ujs.js?body=1" type="text/javascript"></script>
    <script src="/assets/twitter/bootstrap/bootstrap-transition.js?body=1" type="text/javascript"></script>
    <script src="/assets/twitter/bootstrap/bootstrap-alert.js?body=1" type="text/javascript"></script>
    <script src="/assets/twitter/bootstrap/bootstrap-modal.js?body=1" type="text/javascript"></script>
    <script src="/assets/twitter/bootstrap/bootstrap-dropdown.js?body=1" type="text/javascript"></script>
    <script src="/assets/twitter/bootstrap/bootstrap-scrollspy.js?body=1" type="text/javascript"></script>
    <script src="/assets/twitter/bootstrap/bootstrap-tab.js?body=1" type="text/javascript"></script>
    <script src="/assets/twitter/bootstrap/bootstrap-tooltip.js?body=1" type="text/javascript"></script>
    <script src="/assets/twitter/bootstrap/bootstrap-popover.js?body=1" type="text/javascript"></script>
    <script src="/assets/twitter/bootstrap/bootstrap-button.js?body=1" type="text/javascript"></script>
    <script src="/assets/twitter/bootstrap/bootstrap-collapse.js?body=1" type="text/javascript"></script>
    <script src="/assets/twitter/bootstrap/bootstrap-carousel.js?body=1" type="text/javascript"></script>
    <script src="/assets/twitter/bootstrap/bootstrap-typeahead.js?body=1" type="text/javascript"></script>
    <script src="/assets/twitter/bootstrap.js?body=1" type="text/javascript"></script>
    <script src="/assets/ace/src/ace.js?body=1" type="text/javascript"></script>
    <script src="/assets/ace/src/theme-twilight.js?body=1" type="text/javascript"></script>
    <script src="/assets/ace/src/mode-html.js?body=1" type="text/javascript"></script>
    <script src="/assets/admin/agencies.js?body=1" type="text/javascript"></script>
    <script src="/assets/admin/categories.js?body=1" type="text/javascript"></script>
    <script src="/assets/admin/fields.js?body=1" type="text/javascript"></script>
    <script src="/assets/admin/items.js?body=1" type="text/javascript"></script>
    <script src="/assets/admin/pages.js?body=1" type="text/javascript"></script>
    <script src="/assets/admin/templates.js?body=1" type="text/javascript"></script>
    <script src="/assets/admin/themes.js?body=1" type="text/javascript"></script>
    <script src="/assets/admin.js?body=1" type="text/javascript"></script>
  </body>
</html>', :agency_id => real.id)

Admin::Page.create(:title => 'home real website', 
            :permalink => 'home',
            :template_id => template.id,
            :agency_id => real.id,
            :content => '<h1>Welcome Home my friend</h1>')
Admin::Page.create(:title => 'contact real website', 
            :permalink => 'contact',
            :template_id => template.id,
            :agency_id => real.id,
            :content => 'Please contact me at <a href="mailto:denis.jacquemin@gmail.com">denis jacquemin</a>')
Admin::Item.create(:title => 'Villa 4 facades', :description => 'Superbe villa 4 facade a renover en plein centre, proximite de tout, 5min gare', :type_id => 1, :agency_id => real.id)
surface = Admin::Category.create(:label => 'Surface', :active => true, :agency_id => real.id)
etage = Admin::Category.create(:label => 'Etage', :active => true, :agency_id => real.id)
rez = Admin::Category.create(:label => 'Rez de chaussee', :active => true, :agency_id => real.id)
sous = Admin::Category.create(:label => 'Sous sol', :active => true, :agency_id => real.id)
isolation = Admin::Category.create(:label => 'Isolation', :active => true, :agency_id => real.id)

Admin::Field.create(:label => 'Terrain', :category_id => surface.id)
Admin::Field.create(:label => 'Habitable', :category_id => surface.id)
Admin::Field.create(:label => 'Amenageable', :category_id => surface.id)
Admin::Field.create(:label => 'Nombre de piece', :category_id => etage.id)
Admin::Field.create(:label => 'sale de bain', :category_id => etage.id)
Admin::Field.create(:label => 'Nombre de piece', :category_id => rez.id)






