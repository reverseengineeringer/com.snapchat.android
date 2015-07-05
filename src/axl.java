import java.io.BufferedOutputStream;
import java.io.Closeable;
import java.io.DataOutputStream;
import java.io.OutputStream;
import org.apache.commons.io.Charsets;

public final class axl
  implements Closeable
{
  private final ato mGson;
  private final DataOutputStream mOutputStream;
  
  public axl(OutputStream paramOutputStream, ato paramato)
  {
    mOutputStream = new DataOutputStream(new BufferedOutputStream(paramOutputStream));
    mGson = paramato;
  }
  
  public final void a(bii parambii)
  {
    parambii = mGson.a(parambii).getBytes(Charsets.UTF_8);
    mOutputStream.writeInt(parambii.length);
    mOutputStream.write(parambii);
    mOutputStream.flush();
  }
  
  public final void close()
  {
    mOutputStream.close();
  }
}

/* Location:
 * Qualified Name:     axl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */