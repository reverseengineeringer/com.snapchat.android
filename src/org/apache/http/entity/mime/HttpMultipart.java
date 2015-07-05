package org.apache.http.entity.mime;

import java.io.OutputStream;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.apache.http.entity.mime.content.ContentBody;

@Deprecated
public class HttpMultipart
  extends AbstractMultipartForm
{
  private final HttpMultipartMode mode;
  private final List<FormBodyPart> parts;
  
  public HttpMultipart(String paramString1, String paramString2)
  {
    this(paramString1, null, paramString2);
  }
  
  public HttpMultipart(String paramString1, Charset paramCharset, String paramString2)
  {
    this(paramString1, paramCharset, paramString2, HttpMultipartMode.STRICT);
  }
  
  public HttpMultipart(String paramString1, Charset paramCharset, String paramString2, HttpMultipartMode paramHttpMultipartMode)
  {
    super(paramString1, paramCharset, paramString2);
    mode = paramHttpMultipartMode;
    parts = new ArrayList();
  }
  
  public void addBodyPart(FormBodyPart paramFormBodyPart)
  {
    if (paramFormBodyPart == null) {
      return;
    }
    parts.add(paramFormBodyPart);
  }
  
  protected void formatMultipartHeader(FormBodyPart paramFormBodyPart, OutputStream paramOutputStream)
  {
    Header localHeader = paramFormBodyPart.getHeader();
    switch (mode)
    {
    default: 
      paramFormBodyPart = localHeader.iterator();
    }
    while (paramFormBodyPart.hasNext())
    {
      writeField((MinimalField)paramFormBodyPart.next(), paramOutputStream);
      continue;
      writeField(localHeader.getField("Content-Disposition"), charset, paramOutputStream);
      if (paramFormBodyPart.getBody().getFilename() != null) {
        writeField(localHeader.getField("Content-Type"), charset, paramOutputStream);
      }
    }
  }
  
  public List<FormBodyPart> getBodyParts()
  {
    return parts;
  }
  
  public HttpMultipartMode getMode()
  {
    return mode;
  }
}

/* Location:
 * Qualified Name:     org.apache.http.entity.mime.HttpMultipart
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */