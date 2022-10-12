////<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
////<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdf.js/2.6.347/pdf.min.js"></script>
////<link href="https://cdnjs.cloudflare.com/ajax/libs/pdf.js/2.6.347/pdf_viewer.min.css" rel="stylesheet" type="text/css" />
////<script type="text/javascript">
////    $(function () {
////        $("[id*=gvFiles] .view").click(function () {
////            var fileId = $(this).attr("rel");
////            $.ajax({
////                type: "POST",
////                url: "Default.aspx/GetPDF",
////                data: "{fileId: " + fileId + "}",
////                contentType: "application/json; charset=utf-8",
////                dataType: "json",
////                success: function (r) {
////                    LoadPdfFromBlob(r.d.Data);
////                }
////            });
////        });
////    });
 
////    var pdfjsLib = window['pdfjs-dist/build/pdf'];
////    pdfjsLib.GlobalWorkerOptions.workerSrc = 'https://cdnjs.cloudflare.com/ajax/libs/pdf.js/2.6.347/pdf.worker.min.js';
////    var pdfDoc = null;
////    var scale = 1; //Set Scale for zooming PDF.
////    var resolution = 1; //Set Resolution to Adjust PDF clarity.
 
////    function LoadPdfFromBlob(blob) {
////        //Read PDF from BLOB.
////        pdfjsLib.getDocument({ data: blob }).promise.then(function (pdfDoc_) {
////            pdfDoc = pdfDoc_;
 
////            //Reference the Container DIV.
////            var pdf_container = document.getElementById("pdf_container");
////            pdf_container.innerHTML = "";
////            pdf_container.style.display = "block";
 
////            //Loop and render all pages.
////            for (var i = 1; i <= pdfDoc.numPages; i++) {
////                RenderPage(pdf_container, i);
////            }
////        });
////    };
////    function RenderPage(pdf_container, num) {
////        pdfDoc.getPage(num).then(function (page) {
////            //Create Canvas element and append to the Container DIV.
////            var canvas = document.createElement('canvas');
////            canvas.id = 'pdf-' + num;
////            ctx = canvas.getContext('2d');
////            pdf_container.appendChild(canvas);
 
////            //Create and add empty DIV to add SPACE between pages.
////            var spacer = document.createElement("div");
////            spacer.style.height = "20px";
////            pdf_container.appendChild(spacer);
 
////            //Set the Canvas dimensions using ViewPort and Scale.
////            var viewport = page.getViewport({ scale: scale });
////            canvas.height = resolution * viewport.height;
////            canvas.width = resolution * viewport.width;
 
////            //Render the PDF page.
////            var renderContext = {
////                canvasContext: ctx,
////                viewport: viewport,
////                transform: [resolution, 0, 0, resolution, 0, 0]
////            };
 
////            page.render(renderContext);
////        });
////    };
////</script>cript>