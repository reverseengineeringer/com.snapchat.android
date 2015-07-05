import android.graphics.Bitmap;
import android.util.LruCache;

public final class aeo
  extends LruCache<String, Bitmap>
{
  private static final aeo a = new aeo();
  
  private aeo()
  {
    super(19);
  }
  
  public static aeo a()
  {
    return a;
  }
}

/* Location:
 * Qualified Name:     aeo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */