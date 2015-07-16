import com.snapchat.android.analytics.framework.EasyMetric;
import com.snapchat.android.analytics.framework.ErrorMetric;
import java.io.BufferedInputStream;
import java.io.Closeable;
import java.io.DataInputStream;
import java.io.InputStream;
import org.apache.commons.io.Charsets;

public final class ayi
  implements Closeable
{
  protected static final String BAD_LENGTH_EXCEPTION_MESSAGE_PREFIX = "Server sent a message with a bad length: ";
  private static final int INITIAL_BUFFER_CAPACITY = 1024;
  protected static final int SSL_PACKET_MAX_LENGTH = 900000;
  private static final String TAG = "SCMessageInputStream";
  byte[] buffer = new byte['Ѐ'];
  private final aum mGson;
  private final DataInputStream mInputStream;
  
  public ayi(InputStream paramInputStream, aum paramaum)
  {
    mInputStream = new DataInputStream(new BufferedInputStream(paramInputStream));
    mGson = paramaum;
  }
  
  public final bji a()
  {
    int i = mInputStream.readInt();
    if ((i <= 0) || (i > 900000))
    {
      new ErrorMetric("INVALID_SSL_PACKET_RECEIVED").a("PACKET_LENGTH", Integer.valueOf(i)).e();
      throw new RuntimeException("Server sent a message with a bad length: " + i);
    }
    if (buffer.length < i) {}
    try
    {
      buffer = new byte[i];
      mInputStream.readFully(buffer, 0, i);
      String str = new String(buffer, 0, i, Charsets.UTF_8);
      localbji = (bji)mGson.a(str, bji.class);
      if (localbji == null) {
        throw new RuntimeException("Unexpected message contents which parsed as null: " + str);
      }
    }
    catch (OutOfMemoryError localOutOfMemoryError)
    {
      bji localbji;
      for (;;)
      {
        System.gc();
        buffer = new byte[i];
      }
      Class localClass = aty.a(localbji.j());
      if (localClass == null) {
        throw new RuntimeException("Unexpected message type " + localbji.i() + " from contents: " + localOutOfMemoryError);
      }
      return (bji)mGson.a(localOutOfMemoryError, localClass);
    }
  }
  
  public final void close()
  {
    mInputStream.close();
  }
}

/* Location:
 * Qualified Name:     ayi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */