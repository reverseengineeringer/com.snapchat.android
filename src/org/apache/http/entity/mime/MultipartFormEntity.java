package org.apache.http.entity.mime;

import java.io.InputStream;
import java.io.OutputStream;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.message.BasicHeader;

class MultipartFormEntity
  implements HttpEntity
{
  private final long contentLength;
  private final Header contentType;
  private final AbstractMultipartForm multipart;
  
  MultipartFormEntity(AbstractMultipartForm paramAbstractMultipartForm, String paramString, long paramLong)
  {
    multipart = paramAbstractMultipartForm;
    contentType = new BasicHeader("Content-Type", paramString);
    contentLength = paramLong;
  }
  
  public void consumeContent()
  {
    if (isStreaming()) {
      throw new UnsupportedOperationException("Streaming entity does not implement #consumeContent()");
    }
  }
  
  public InputStream getContent()
  {
    throw new UnsupportedOperationException("Multipart form entity does not implement #getContent()");
  }
  
  public Header getContentEncoding()
  {
    return null;
  }
  
  public long getContentLength()
  {
    return contentLength;
  }
  
  public Header getContentType()
  {
    return contentType;
  }
  
  AbstractMultipartForm getMultipart()
  {
    return multipart;
  }
  
  public boolean isChunked()
  {
    return !isRepeatable();
  }
  
  public boolean isRepeatable()
  {
    return contentLength != -1L;
  }
  
  public boolean isStreaming()
  {
    return !isRepeatable();
  }
  
  public void writeTo(OutputStream paramOutputStream)
  {
    multipart.writeTo(paramOutputStream);
  }
}

/* Location:
 * Qualified Name:     org.apache.http.entity.mime.MultipartFormEntity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */