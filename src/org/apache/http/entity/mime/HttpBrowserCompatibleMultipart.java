package org.apache.http.entity.mime;

import java.io.OutputStream;
import java.nio.charset.Charset;
import java.util.List;
import org.apache.http.entity.mime.content.ContentBody;

class HttpBrowserCompatibleMultipart
  extends AbstractMultipartForm
{
  private final List<FormBodyPart> parts;
  
  public HttpBrowserCompatibleMultipart(String paramString1, Charset paramCharset, String paramString2, List<FormBodyPart> paramList)
  {
    super(paramString1, paramCharset, paramString2);
    parts = paramList;
  }
  
  protected void formatMultipartHeader(FormBodyPart paramFormBodyPart, OutputStream paramOutputStream)
  {
    Header localHeader = paramFormBodyPart.getHeader();
    writeField(localHeader.getField("Content-Disposition"), charset, paramOutputStream);
    if (paramFormBodyPart.getBody().getFilename() != null) {
      writeField(localHeader.getField("Content-Type"), charset, paramOutputStream);
    }
  }
  
  public List<FormBodyPart> getBodyParts()
  {
    return parts;
  }
}

/* Location:
 * Qualified Name:     org.apache.http.entity.mime.HttpBrowserCompatibleMultipart
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */