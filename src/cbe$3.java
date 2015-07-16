import java.net.Socket;
import java.util.logging.Level;
import java.util.logging.Logger;

final class cbe$3
  extends cat
{
  cbe$3(Socket paramSocket) {}
  
  protected final void a()
  {
    try
    {
      a.close();
      return;
    }
    catch (Exception localException)
    {
      cbe.a().log(Level.WARNING, "Failed to close timed out socket " + a, localException);
    }
  }
}

/* Location:
 * Qualified Name:     cbe.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */