package org.apache.http.entity;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.io.OutputStream;
import org.apache.http.HttpEntity;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.util.Args;
import org.apache.http.util.EntityUtils;

@NotThreadSafe
public class BufferedHttpEntity
  extends HttpEntityWrapper
{
  private final byte[] buffer;
  
  public BufferedHttpEntity(HttpEntity paramHttpEntity)
  {
    super(paramHttpEntity);
    if ((!paramHttpEntity.isRepeatable()) || (paramHttpEntity.getContentLength() < 0L))
    {
      buffer = EntityUtils.toByteArray(paramHttpEntity);
      return;
    }
    buffer = null;
  }
  
  public InputStream getContent()
  {
    if (buffer != null) {
      return new ByteArrayInputStream(buffer);
    }
    return super.getContent();
  }
  
  public long getContentLength()
  {
    if (buffer != null) {
      return buffer.length;
    }
    return super.getContentLength();
  }
  
  public boolean isChunked()
  {
    return (buffer == null) && (super.isChunked());
  }
  
  public boolean isRepeatable()
  {
    return true;
  }
  
  public boolean isStreaming()
  {
    return (buffer == null) && (super.isStreaming());
  }
  
  public void writeTo(OutputStream paramOutputStream)
  {
    Args.notNull(paramOutputStream, "Output stream");
    if (buffer != null)
    {
      paramOutputStream.write(buffer);
      return;
    }
    super.writeTo(paramOutputStream);
  }
}

/* Location:
 * Qualified Name:     org.apache.http.entity.BufferedHttpEntity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */