import java.io.Closeable;
import java.io.InputStream;
import java.io.Reader;

public abstract class bne
  implements Closeable
{
  private Reader reader;
  
  public abstract long a();
  
  public abstract cax b();
  
  public final InputStream c()
  {
    return b().e();
  }
  
  public void close()
  {
    b().close();
  }
}

/* Location:
 * Qualified Name:     bne
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */