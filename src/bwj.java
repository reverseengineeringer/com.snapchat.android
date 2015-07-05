import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Random;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.message.BasicHeader;

public final class bwj
  implements HttpEntity
{
  private static final char[] c = "-_1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ".toCharArray();
  public ByteArrayOutputStream a = new ByteArrayOutputStream();
  public String b;
  private boolean d = false;
  private boolean e = false;
  
  public bwj()
  {
    StringBuffer localStringBuffer = new StringBuffer();
    Random localRandom = new Random();
    while (i < 30)
    {
      localStringBuffer.append(c[localRandom.nextInt(c.length)]);
      i += 1;
    }
    b = localStringBuffer.toString();
  }
  
  public final void a()
  {
    if (!e) {
      a.write(("--" + b + "\r\n").getBytes());
    }
    e = true;
  }
  
  public final void a(String paramString1, String paramString2, InputStream paramInputStream, String paramString3, boolean paramBoolean)
  {
    a();
    try
    {
      paramString3 = "Content-Type: " + paramString3 + "\r\n";
      a.write(("Content-Disposition: form-data; name=\"" + paramString1 + "\"; filename=\"" + paramString2 + "\"\r\n").getBytes());
      a.write(paramString3.getBytes());
      a.write("Content-Transfer-Encoding: binary\r\n\r\n".getBytes());
      paramString1 = new byte['က'];
      for (;;)
      {
        int i = paramInputStream.read(paramString1);
        if (i == -1) {
          break;
        }
        a.write(paramString1, 0, i);
      }
      try
      {
        paramInputStream.close();
        throw paramString1;
        a.flush();
        if (paramBoolean) {
          b();
        }
        for (;;)
        {
          try
          {
            paramInputStream.close();
            return;
          }
          catch (IOException paramString1)
          {
            paramString1.printStackTrace();
            return;
          }
          a.write(("\r\n--" + b + "\r\n").getBytes());
        }
      }
      catch (IOException paramString2)
      {
        for (;;)
        {
          paramString2.printStackTrace();
        }
      }
    }
    finally {}
  }
  
  public final void b()
  {
    if (d) {
      return;
    }
    try
    {
      a.write(("\r\n--" + b + "--\r\n").getBytes());
      d = true;
      return;
    }
    catch (IOException localIOException)
    {
      for (;;)
      {
        localIOException.printStackTrace();
      }
    }
  }
  
  public final void consumeContent()
  {
    if (isStreaming()) {
      throw new UnsupportedOperationException("Streaming entity does not implement #consumeContent()");
    }
  }
  
  public final InputStream getContent()
  {
    return new ByteArrayInputStream(a.toByteArray());
  }
  
  public final Header getContentEncoding()
  {
    return null;
  }
  
  public final long getContentLength()
  {
    b();
    return a.toByteArray().length;
  }
  
  public final Header getContentType()
  {
    return new BasicHeader("Content-Type", "multipart/form-data; boundary=" + b);
  }
  
  public final boolean isChunked()
  {
    return false;
  }
  
  public final boolean isRepeatable()
  {
    return false;
  }
  
  public final boolean isStreaming()
  {
    return false;
  }
  
  public final void writeTo(OutputStream paramOutputStream)
  {
    paramOutputStream.write(a.toByteArray());
  }
}

/* Location:
 * Qualified Name:     bwj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */