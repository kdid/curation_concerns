require 'spec_helper'

describe 'Routes', :type => :routing do

  describe 'Homepage' do
    it 'should route the root url to the catalog controller' do
      expect({ get: '/' }).to route_to(controller: 'catalog', action: 'index')
    end
  end

  describe 'GenericWork' do
    it 'should route to create' do
      expect({ post: 'concern/generic_works' }).to route_to(controller: 'curation_concerns/generic_works', action: 'create')
    end

    it 'should route to new' do
      expect({ get: 'concern/generic_works/new' }).to route_to(controller: 'curation_concerns/generic_works', action: 'new')
    end

    it 'should route to edit' do
      expect({ get: 'concern/generic_works/3/edit' }).to route_to(controller: 'curation_concerns/generic_works', action: 'edit', id: '3')
    end

    it "should route to show" do
      expect({ get: 'concern/generic_works/4' }).to route_to(controller: 'curation_concerns/generic_works', action: 'show', id: '4')
    end

    it "should route to update" do
      expect({ put: 'concern/generic_works/5' }).to route_to(controller: 'curation_concerns/generic_works', action: 'update', id: '5')
    end

    it "should route to destroy" do
      expect({ delete: 'concern/generic_works/6' }).to route_to(controller: 'curation_concerns/generic_works', action: 'destroy', id: '6')
    end

    it "should *not* route to index" do
      expect({ get: 'concern/generic_works' }).not_to route_to(controller: 'curation_concerns/generic_works', action: 'index')
    end    
  end

  describe 'Permissions' do
    it "should route to confirm" do
      expect({ get: '/concern/permissions/1/confirm' }).to route_to(controller: 'curation_concerns/permissions', action: 'confirm', id: '1')
    end

    it "should route to copy" do
      expect({ post: '/concern/permissions/2/copy' }).to route_to(controller: 'curation_concerns/permissions', action: 'copy', id: '2')
    end
  end

  ### TODO: There are LinkedResource routes but no controller. The routes should either be removed or the 
  # describe 'LinkedResource' do
  #   it 'should route to create' do
  #     expect({ post: 'concern/container/1/linked_resources' }).to route_to(controller: 'curation_concerns/linked_resources', action: 'create', parent_id: '1')
  #   end

  #   it 'should route to new' do
  #     expect({ get: 'concern/container/2/linked_resources/new' }).to route_to(controller: 'curation_concerns/linked_resources', action: 'new', parent_id: '2')
  #   end

  #   it 'should route to edit' do
  #     expect({ get: 'concern/linked_resources/3/edit' }).to route_to(controller: 'curation_concerns/linked_resources', action: 'edit', id: '3')
  #   end

  #   it "should route to show" do
  #     expect({ get: 'concern/linked_resources/4' }).to route_to(controller: 'curation_concerns/linked_resources', action: 'show', id: '4')
  #   end

  #   it "should route to update" do
  #     expect({ put: 'concern/linked_resources/5' }).to route_to(controller: 'curation_concerns/linked_resources', action: 'update', id: '5')
  #   end

  #   it "should route to destroy" do
  #     expect({ delete: 'concern/linked_resources/6' }).to route_to(controller: 'curation_concerns/linked_resources', action: 'destroy', id: '6')
  #   end

  #   it "should *not* route to index" do
  #     expect({ get: 'concern/linked_resources' }).not_to route_to(controller: 'curation_concerns/linked_resources', action: 'index')
  #   end
  # end  


  describe 'GenericFile' do
    it 'should route to create' do
      expect({ post: 'concern/container/1/generic_files' }).to route_to(controller: 'curation_concerns/generic_files', action: 'create', parent_id: '1')
    end

    it 'should route to new' do
      expect({ get: 'concern/container/2/generic_files/new' }).to route_to(controller: 'curation_concerns/generic_files', action: 'new', parent_id: '2')
    end

    it 'should route to edit' do
      expect({ get: 'concern/generic_files/3/edit' }).to route_to(controller: 'curation_concerns/generic_files', action: 'edit', id: '3')
    end

    it "should route to show" do
      expect({ get: 'concern/generic_files/4' }).to route_to(controller: 'curation_concerns/generic_files', action: 'show', id: '4')
    end

    it "should route to update" do
      expect({ put: 'concern/generic_files/5' }).to route_to(controller: 'curation_concerns/generic_files', action: 'update', id: '5')
    end

    it "should route to destroy" do
      expect({ delete: 'concern/generic_files/6' }).to route_to(controller: 'curation_concerns/generic_files', action: 'destroy', id: '6')
    end

    it "should *not* route to index" do
      expect({ get: 'concern/generic_files' }).not_to route_to(controller: 'curation_concerns/generic_files', action: 'index')
    end
  end

  describe 'Download' do
    it "should route to show" do
      expect({ get: '/downloads/9' }).to route_to(controller: 'downloads', action: 'show', id: '9')
    end
  end
end