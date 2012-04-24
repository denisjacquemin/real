# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

editor = ace.edit('editor')
textarea = $('#admin_page_content')
#editor.getSession().setMode("ace/mode/html")
editor.setTheme("ace/theme/twilight")
editor.getSession().setValue(textarea.val())

# before submiting the, put the content of the #editor in the #content input 
$('#edit_admin_page_1').submit ->
  textarea.val(editor.getSession().getValue())
  return true


 
