class Admin::Component < ActiveRecord::Base
  attr_accessible :agency_id, :component_type_id, :content, :template_id, :title, :permalink
  
  belongs_to :component_type
  belongs_to :template, :class_name => 'Component'
  
  scope :by_permalink, lambda { |permalink, agency_id| where(:permalink => permalink, :agency_id => agency_id) }
  scope :by_agency, lambda { |agency_id| where(:agency_id => agency_id) }
  scope :page, where(:component_type_id => 2)
  scope :template, where(:component_type_id => 1)
  scope :stylesheet, where(:component_type_id => 3)
  scope :javascript, where(:component_type_id => 4)
  
  
  liquid_methods :title, :content
end
