# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


real = Admin::Agency.create(:name => 'Real WebSite', :domain => 'localhost')
Admin::Page.create(:title => 'home real website', 
            :permalink => 'home',
            :template => 1,
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
            :template => 1,
            :agency_id => real.id,
            :content => '<a href="mailto:denis.jacquemin@gmail.com"')
Admin::Item.create(:title => 'Villa 4 facades', :description => 'Superbe villa 4 facade a renover en plein centre, proximite de tout, 5min gare', :type_id => 1, :agency_id => real.id)
