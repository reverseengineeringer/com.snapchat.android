import java.io.BufferedOutputStream;
import java.io.Closeable;
import java.io.DataOutputStream;
import java.io.OutputStream;
import org.apache.commons.io.Charsets;

public final class ayj
  implements Closeable
{
  private final aum mGson;
  private final DataOutputStream mOutputStream;
  
  public ayj(OutputStream paramOutputStream, aum paramaum)
  {
    mOutputStream = new DataOutputStream(new BufferedOutputStream(paramOutputStream));
    mGson = paramaum;
  }
  
  public final void a(bji parambji)
  {
    parambji = mGson.a(parambji).getBytes(Charsets.UTF_8);
    mOutputStream.writeInt(parambji.length);
    mOutputStream.write(parambji);
    mOutputStream.flush();
  }
  
  public final void close()
  {
    mOutputStream.close();
  }
}

/* Location:
 * Qualified Name:     ayj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */