import android.database.Cursor;
import java.io.Closeable;
import java.io.IOException;
import java.net.Socket;
import java.util.Scanner;

public final class bgo
{
  private static final String TAG = "CloseableUtils";
  
  public static void a(@chd Cursor paramCursor)
  {
    if (paramCursor != null) {
      paramCursor.close();
    }
  }
  
  public static void a(@chd Closeable paramCloseable)
  {
    if (paramCloseable != null) {}
    try
    {
      paramCloseable.close();
      return;
    }
    catch (IncompatibleClassChangeError localIncompatibleClassChangeError)
    {
      throw new RuntimeException("Caused by attempting to close " + paramCloseable.getClass().getName(), localIncompatibleClassChangeError);
    }
    catch (IOException paramCloseable) {}
  }
  
  public static void a(@chd Socket paramSocket)
  {
    if (paramSocket != null) {}
    try
    {
      paramSocket.close();
      return;
    }
    catch (IOException paramSocket) {}
  }
  
  public static void a(@chd Scanner paramScanner)
  {
    if (paramScanner != null) {
      paramScanner.close();
    }
  }
}

/* Location:
 * Qualified Name:     bgo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */