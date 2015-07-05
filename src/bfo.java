import android.database.Cursor;
import com.snapchat.android.Timber;
import java.io.Closeable;
import java.io.IOException;
import java.net.Socket;

public final class bfo
{
  private static final String TAG = "CloseableUtils";
  
  public static void a(@cgc Cursor paramCursor)
  {
    if (paramCursor != null) {
      paramCursor.close();
    }
  }
  
  public static void a(@cgc Closeable paramCloseable)
  {
    if (paramCloseable != null) {}
    try
    {
      paramCloseable.close();
      return;
    }
    catch (IOException paramCloseable)
    {
      Timber.a("CloseableUtils", paramCloseable);
      return;
    }
    catch (IncompatibleClassChangeError localIncompatibleClassChangeError)
    {
      throw new RuntimeException("Caused by attempting to close " + paramCloseable.getClass().getName(), localIncompatibleClassChangeError);
    }
  }
  
  public static void a(@cgc Socket paramSocket)
  {
    if (paramSocket != null) {}
    try
    {
      paramSocket.close();
      return;
    }
    catch (IOException paramSocket)
    {
      Timber.a("CloseableUtils", paramSocket);
    }
  }
}

/* Location:
 * Qualified Name:     bfo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */