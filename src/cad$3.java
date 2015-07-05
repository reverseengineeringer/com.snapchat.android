import java.net.Socket;
import java.util.logging.Level;
import java.util.logging.Logger;

final class cad$3
  extends bzs
{
  cad$3(Socket paramSocket) {}
  
  protected final void a()
  {
    try
    {
      a.close();
      return;
    }
    catch (Exception localException)
    {
      cad.a().log(Level.WARNING, "Failed to close timed out socket " + a, localException);
    }
  }
}

/* Location:
 * Qualified Name:     cad.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */