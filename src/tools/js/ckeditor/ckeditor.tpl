<script src="./src/classes/modules/document/templates/ckeditor/ckeditor.js"></script>
<script src="./src/classes/modules/document/templates/ckeditor/plugins/idoit/placeholder/main.js"></script>
<!--<script src="./src/classes/modules/document/templates/chapters/placeholder.js"></script>-->
<!--<script type="text/javascript" src="./src/classes/modules/document/templates/ckeditor/plugins/idoit/placeholder/mainObject.js"></script>
<script type="text/javascript" src="./src/classes/modules/document/templates/ckeditor/plugins/idoit/placeholder/externalObject.js"></script>
<script type="text/javascript" src="./src/classes/modules/document/templates/ckeditor/plugins/idoit/placeholder/report.js"></script>
<script type="text/javascript" src="./src/classes/modules/document/templates/ckeditor/plugins/idoit/placeholder/template.js"></script>-->
<link rel="stylesheet" type="text/css" href="./src/classes/modules/document/templates/chapters/chapters.css" />
<script type="text/javascript">
    var showPlaceHolderOptions = function() {
        if ($('objectSelector__HIDDEN')) {
            if ($('objectSelector__HIDDEN').value)
                $('placeHolderOptionsContainer').show();
            else
                $('placeHolderOptionsContainer').hide();
        } else {
            $('placeHolderOptionsContainer').show();
        }
    }
</script>


<textarea name="editor1" id="editor1" rows="10" cols="80">
    This is my textarea to be replaced with CKEditor.
</textarea>


<script>
    CKEDITOR.replace( 'editor1', {
        // Load the Simple Box plugin.
        extraPlugins: 'idoit,tableresize',
        language: 'de',
        allowedContent: true,
        extraAllowedContent: 'script',
        on: {
            instanceReady: function (evt) {

            }
        }
    });
</script>
