# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

real = Admin::Agency.create(:name => 'Real WebSite', :domain => 'localhost')
template = Admin::Template.create(:title => 'Dark Shadow', :content => '<rien>', :agency_id => real.id)

Admin::Page.create(:title => 'home real website', 
            :permalink => 'home',
            :template_id => template.id,
            :agency_id => real.id,
            :content => '<div class="navbar navbar-fixed-top">
  <div class="navbar-inner">
    <div class="container">
      <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </a>
      <a class="brand" href="http://twitter.github.com/bootstrap/examples/starter-template.html#">Real</a>
      <div class="nav-collapse pull-right">
        <ul class="nav">
          <li class="active"><a href="DashboardSuperAdmin.html">Home</a></li>
          <li><a href="Users.html">Features</a></li>
          <li><a href="Agencies.html">Pricing</a></li>
          <li><a href="Agencies.html">Demo</a></li>
          <li><a href="Agencies.html">Contact</a></li>
        </ul>
      </div><!--/.nav-collapse -->
    </div>
  </div>
</div>

<div class="container">
    <div class="hero-unit">
      <h1>Real for Web Agencies</h1>
      <p>Build rock solid real estate web sites with style</p>
      <p>
        <a class="btn btn-primary btn-large">
          Learn more
        </a>
      </p>
    </div>
    <div class="row">
      
        </div> 
      </div>
    </div>
  
  

</div>')
Admin::Page.create(:title => 'contact real website', 
            :permalink => 'contact',
            :template_id => template.id,
            :agency_id => real.id,
            :content => '<a href="mailto:denis.jacquemin@gmail.com"')
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






