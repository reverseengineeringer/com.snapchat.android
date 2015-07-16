import java.util.logging.Level;
import java.util.logging.Logger;

public final class fp
  extends fr
{
  Logger a;
  
  public fp(String paramString)
  {
    a = Logger.getLogger(paramString);
  }
  
  public final void a(String paramString)
  {
    a.log(Level.FINE, paramString);
  }
  
  public final void b(String paramString)
  {
    a.log(Level.SEVERE, paramString);
  }
}

/* Location:
 * Qualified Name:     fp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */