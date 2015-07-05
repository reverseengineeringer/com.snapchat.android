package org.apache.http.entity.mime.content;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.Reader;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
import java.nio.charset.UnsupportedCharsetException;
import org.apache.http.Consts;
import org.apache.http.entity.ContentType;
import org.apache.http.util.Args;

public class StringBody
  extends AbstractContentBody
{
  private final byte[] content;
  
  @Deprecated
  public StringBody(String paramString)
  {
    this(paramString, "text/plain", Consts.ASCII);
  }
  
  @Deprecated
  public StringBody(String paramString1, String paramString2, Charset paramCharset)
  {
    this(paramString1, ContentType.create(paramString2, paramCharset));
  }
  
  @Deprecated
  public StringBody(String paramString, Charset paramCharset)
  {
    this(paramString, "text/plain", paramCharset);
  }
  
  public StringBody(String paramString, ContentType paramContentType)
  {
    super(paramContentType);
    Args.notNull(paramString, "Text");
    paramContentType = paramContentType.getCharset();
    if (paramContentType != null) {}
    for (paramContentType = paramContentType.name();; paramContentType = Consts.ASCII.name()) {
      try
      {
        content = paramString.getBytes(paramContentType);
        return;
      }
      catch (UnsupportedEncodingException paramString)
      {
        throw new UnsupportedCharsetException(paramContentType);
      }
    }
  }
  
  @Deprecated
  public static StringBody create(String paramString)
  {
    return create(paramString, null, null);
  }
  
  @Deprecated
  public static StringBody create(String paramString1, String paramString2, Charset paramCharset)
  {
    try
    {
      paramString1 = new StringBody(paramString1, paramString2, paramCharset);
      return paramString1;
    }
    catch (UnsupportedEncodingException paramString1)
    {
      throw new IllegalArgumentException("Charset " + paramCharset + " is not supported", paramString1);
    }
  }
  
  @Deprecated
  public static StringBody create(String paramString, Charset paramCharset)
  {
    return create(paramString, null, paramCharset);
  }
  
  public long getContentLength()
  {
    return content.length;
  }
  
  public String getFilename()
  {
    return null;
  }
  
  public Reader getReader()
  {
    Charset localCharset = getContentType().getCharset();
    ByteArrayInputStream localByteArrayInputStream = new ByteArrayInputStream(content);
    if (localCharset != null) {}
    for (;;)
    {
      return new InputStreamReader(localByteArrayInputStream, localCharset);
      localCharset = Consts.ASCII;
    }
  }
  
  public String getTransferEncoding()
  {
    return "8bit";
  }
  
  public void writeTo(OutputStream paramOutputStream)
  {
    Args.notNull(paramOutputStream, "Output stream");
    ByteArrayInputStream localByteArrayInputStream = new ByteArrayInputStream(content);
    byte[] arrayOfByte = new byte['က'];
    for (;;)
    {
      int i = localByteArrayInputStream.read(arrayOfByte);
      if (i == -1) {
        break;
      }
      paramOutputStream.write(arrayOfByte, 0, i);
    }
    paramOutputStream.flush();
  }
}

/* Location:
 * Qualified Name:     org.apache.http.entity.mime.content.StringBody
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */