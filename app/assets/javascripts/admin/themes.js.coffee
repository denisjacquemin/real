# apply ace to the #editor element
editor = ace.edit('editor')
textarea = $('#editor').prev('textarea')
#editor.getSession().setMode("ace/mode/html")
editor.setTheme("ace/theme/twilight")
editor.getSession().setValue(textarea.val())

# before submiting the form, put the content of the #editor in the #content input 
textarea.closest('form').submit ->
  textarea.val(editor.getSession().getValue())
  return true