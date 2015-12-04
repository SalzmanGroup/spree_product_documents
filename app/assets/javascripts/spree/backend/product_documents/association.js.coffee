class @ProductDocumentAssociation
  constructor: (data) ->
    @searchField = $(data.searchFieldId)
    @listParent = $(data.listParentId)
    @listChildId = data.listChildId
    @template = _.template($(data.templateId).html())
    @associationName = @_getAssociationName()
    @routes = @_getRoutes()
    @api = new ProductDocumentApi

    if @searchField.length > 0
      @_initializeSearchField()
      @_initializeAssociationList()
      @_initializeDeleteListener()

  addChild: (data) ->
    @listParent.append @template(data)

  removeChild: (element) ->
    element.remove()
    data = @_removeChildData(element)
    url = @routes.remove_child
    success = (data) =>
      show_flash "success", Spree.translations["#{@associationName}_removed"]

    @api.removeAssociation url, data, success

  _initializeAssociationList: ->
    url = @routes.associations
    success = (data) =>
      data = JSON.parse(data)
      $.each data, (index, object) =>
        @addChild(object)
    @api.getAssociations(url, success)


  _initializeDeleteListener: ->
    @listParent.on "click", ".delete-#{@associationName}", (e) =>
      association = $(e.target).closest(@listChildId)
      @removeChild(association)

  _initializeSearchField: ->
    @searchField.select2
      dropdownCssClass: "taxon_select_box",
      placeholder: Spree.translations["add_a_#{@associationName}"],
      ajax:
        url: @routes.search,
        datatype: 'json',
        quietMillis: 800,
        data: (term, page) ->
          token: Spree.api_key,
          per_page: 50,
          page: page,
          q:
            name_cont: term
        results: (data, page) =>
          more = page < data.pages
          results: data["#{@associationName}s"],
          more: more
      formatResult: (association) =>
        @_formatAssociation(association)
      formatSelection: (association) =>
        @_formatAssociation(association)

    @searchField.on "change", (e) =>
      data = @_addChildData(@searchField.select2("data"))
      url = @routes.add_child
      success = (data) =>
        data = JSON.parse(data)
        @addChild(data)
        show_flash "success", Spree.translations["#{@associationName}_added"]

      @api.addAssociation(url, data, success)
