import android.graphics.Bitmap;
import android.util.LruCache;

public final class afo
  extends LruCache<String, Bitmap>
{
  private static final afo a = new afo();
  
  private afo()
  {
    super(19);
  }
  
  public static afo a()
  {
    return a;
  }
}

/* Location:
 * Qualified Name:     afo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */