import java.io.Closeable;
import java.io.InputStream;

public abstract class bmd
  implements Closeable
{
  public abstract long a();
  
  public abstract bzw b();
  
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
 * Qualified Name:     bmd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */