RailsAdmin.config do |config|

  config.main_app_name = ["MyCMS"]
  ### Popular gems integration

  ## == Devise ==
  # config.authenticate_with do
  #   warden.authenticate! scope: :user
  # end
  # config.current_user_method(&:current_user)

  ## == Cancan ==
  #config.authorize_with :cancan

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration


  #config.authorize_with :cancan

  config.authenticate_with do
    warden.authenticate! scope: :user
  end
  config.current_user_method(&:current_user)


  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end

   config.model StaticPage do
    edit do
      field :title
      field :content, :ck_editor
      field :meta_title, :ck_editor
      field :meta_description, :ck_editor
      field :meta_keywords, :ck_editor
    end
  end

  config.model Product do
    edit do
      field :name
      field :avatar
      field :sku 
      field :product_category
      field :price
      field :image
      field :description, :ck_editor
      field :meta_title, :ck_editor
      field :meta_description, :ck_editor
      field :meta_keywords, :ck_editor
    end
  end

end
