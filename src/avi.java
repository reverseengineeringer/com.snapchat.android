import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.ByteArrayOutputStream;
import java.io.FileInputStream;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;

public final class avi
{
  private static final int BUFFER = 2048;
  private byte[] data = new byte['ࠀ'];
  public ByteArrayOutputStream mByteArrayOutputStream = new ByteArrayOutputStream();
  public ZipOutputStream out = new ZipOutputStream(new BufferedOutputStream(mByteArrayOutputStream));
  
  public final void a(String paramString1, String paramString2)
  {
    paramString2 = new BufferedInputStream(new FileInputStream(paramString2), 2048);
    paramString1 = new ZipEntry(paramString1);
    out.putNextEntry(paramString1);
    for (;;)
    {
      int i = paramString2.read(data, 0, 2048);
      if (i == -1) {
        break;
      }
      out.write(data, 0, i);
    }
    paramString2.close();
    out.closeEntry();
  }
  
  public final void a(String paramString, byte[] paramArrayOfByte)
  {
    paramString = new ZipEntry(paramString);
    out.putNextEntry(paramString);
    out.write(paramArrayOfByte);
    out.closeEntry();
  }
}

/* Location:
 * Qualified Name:     avi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */