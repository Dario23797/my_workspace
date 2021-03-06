<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head>
    <%@include file="../snippet/meta.jsp" %>
    <style type="text/css" media="screen">
        html, body	{ height:100%; }
        body { margin:0; padding:0; overflow:auto; }
        #flashContent { display:none; }
    </style>

    <script type="text/javascript" src="js/flexpaper_flash.js"></script>
</head>
<body>
<div>
    <a id="viewerPlaceHolder" style="width:100%;height:100%;display:block"></a>
    <input type="hidden" id="resource" value="${resourcePreview}"/>
    <script type="text/javascript">
        var fp = new FlexPaperViewer(
                'swf/FlexPaperViewer',
                'viewerPlaceHolder', { config : {
                    SwfFile : escape(document.getElementById("resource").value),
                    //SwfFile : escape("../../../swf/Paper.swf"),
                    Scale : 100,
                    ZoomTransition : 'easeOut',
                    ZoomTime : 0.5,
                    ZoomInterval : 0.2,
                    FitPageOnLoad : true,
                    FitWidthOnLoad : false,
                    FullScreenAsMaxWindow : false,
                    ProgressiveLoading : false,
                    MinZoomSize : 0.2,
                    MaxZoomSize : 5,
                    SearchMatchAll : false,
                    InitViewMode : 'Portrait',
                    PrintPaperAsBitmap : false,

                    ViewModeToolsVisible : true,
                    ZoomToolsVisible : true,
                    NavToolsVisible : true,
                    CursorToolsVisible : true,
                    SearchToolsVisible : true,

                    localeChain: 'en_US'
                }});
    </script>
</div>
</body>
</html> 