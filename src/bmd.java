import java.io.Closeable;
import java.io.IOException;

final class bmd
{
  static void a(@chd Closeable paramCloseable)
  {
    if (paramCloseable != null) {}
    try
    {
      paramCloseable.close();
      return;
    }
    catch (IOException paramCloseable)
    {
      bmf.a(paramCloseable);
      return;
    }
    catch (IncompatibleClassChangeError localIncompatibleClassChangeError)
    {
      throw new RuntimeException("Caused by attempting to close " + paramCloseable.getClass().getName(), localIncompatibleClassChangeError);
    }
  }
}

/* Location:
 * Qualified Name:     bmd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */