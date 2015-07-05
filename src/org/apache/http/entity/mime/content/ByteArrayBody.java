package org.apache.http.entity.mime.content;

import java.io.OutputStream;
import org.apache.http.entity.ContentType;
import org.apache.http.util.Args;

public class ByteArrayBody
  extends AbstractContentBody
{
  private final byte[] data;
  private final String filename;
  
  public ByteArrayBody(byte[] paramArrayOfByte, String paramString)
  {
    this(paramArrayOfByte, "application/octet-stream", paramString);
  }
  
  @Deprecated
  public ByteArrayBody(byte[] paramArrayOfByte, String paramString1, String paramString2)
  {
    this(paramArrayOfByte, ContentType.create(paramString1), paramString2);
  }
  
  public ByteArrayBody(byte[] paramArrayOfByte, ContentType paramContentType, String paramString)
  {
    super(paramContentType);
    Args.notNull(paramArrayOfByte, "byte[]");
    data = paramArrayOfByte;
    filename = paramString;
  }
  
  public String getCharset()
  {
    return null;
  }
  
  public long getContentLength()
  {
    return data.length;
  }
  
  public String getFilename()
  {
    return filename;
  }
  
  public String getTransferEncoding()
  {
    return "binary";
  }
  
  public void writeTo(OutputStream paramOutputStream)
  {
    paramOutputStream.write(data);
  }
}

/* Location:
 * Qualified Name:     org.apache.http.entity.mime.content.ByteArrayBody
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */