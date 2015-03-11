# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
submitTagPost = (form) ->
    $.ajax
        url: form.attr('action')
        type: form.attr('method')
        dataType: "json"
        data : 
            "tagpost[post_id]": form.find("#post_id").val()
            "tagpost[tag_id]": form.find("#tag_id").val()
        success: (data, status, response) ->
            $("#tagList").append("<li>#{data.name}</li>")
        error: ->
            alert("error")
        dataType: "json"
$(document).ready ->
    $(".slabText").slabText({
        "viewportBreakpoint":380
    });
    form = $('#tagPostForm')
    $('#add-tag').click (event) ->
        event.preventDefault( )
        submitTagPost(form)
    true
true