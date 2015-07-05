package org.apache.http.entity;

import java.io.InputStream;
import java.io.OutputStream;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.util.Args;
import org.apache.http.util.Asserts;

@NotThreadSafe
public class BasicHttpEntity
  extends AbstractHttpEntity
{
  private InputStream content;
  private long length = -1L;
  
  public InputStream getContent()
  {
    if (content != null) {}
    for (boolean bool = true;; bool = false)
    {
      Asserts.check(bool, "Content has not been provided");
      return content;
    }
  }
  
  public long getContentLength()
  {
    return length;
  }
  
  public boolean isRepeatable()
  {
    return false;
  }
  
  public boolean isStreaming()
  {
    return content != null;
  }
  
  public void setContent(InputStream paramInputStream)
  {
    content = paramInputStream;
  }
  
  public void setContentLength(long paramLong)
  {
    length = paramLong;
  }
  
  public void writeTo(OutputStream paramOutputStream)
  {
    Args.notNull(paramOutputStream, "Output stream");
    InputStream localInputStream = getContent();
    try
    {
      byte[] arrayOfByte = new byte['က'];
      for (;;)
      {
        int i = localInputStream.read(arrayOfByte);
        if (i == -1) {
          break;
        }
        paramOutputStream.write(arrayOfByte, 0, i);
      }
    }
    finally
    {
      localInputStream.close();
    }
  }
}

/* Location:
 * Qualified Name:     org.apache.http.entity.BasicHttpEntity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */