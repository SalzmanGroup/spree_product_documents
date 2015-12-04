class @ProductDocumentApi
  removeAssociation: (url, data, success) ->
    data._method = "DELETE"
    $.ajax
      datatype: 'json',
      type: "POST",
      url: url,
      data: data,
      success: success,
      headers: {
        "X-Spree-Token": Spree.api_key,
      }

  getAssociations: (url, success) ->
    $.ajax
      url: url,
      datatype: 'json',
      headers: {
        "X-Spree-Token": Spree.api_key,
      },
      success: success

  addAssociation: (url, data, success) ->
    data._method = "PUT"
    $.ajax
      url: url
      datatype: 'json',
      type: "POST",
      headers: {
        "X-Spree-Token": Spree.api_key,
      }
      data: data,
      success: success

