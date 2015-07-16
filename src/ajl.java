import android.graphics.Bitmap;

public final class ajl
  extends bgm
{
  private static final String TAG = "DecryptedSnapVideo";
  private final axn mCache;
  private final String mKey;
  @chd
  private final Bitmap mOverlay;
  
  private ajl(@chc axn paramaxn, @chc String paramString, @chd Bitmap paramBitmap)
  {
    mCache = paramaxn;
    mKey = paramString;
    mOverlay = paramBitmap;
  }
  
  @chd
  public final String a()
  {
    f();
    return mCache.b(mKey);
  }
  
  @chd
  public final Bitmap b()
  {
    f();
    return mOverlay;
  }
  
  protected final void c()
  {
    mCache.c(mKey);
  }
  
  public static final class a
  {
    public Bitmap mBitmap = null;
    public final axn mCache;
    public final String mKey;
    
    public a(@chc axn paramaxn, @chc String paramString)
    {
      mCache = ((axn)co.a(paramaxn));
      mKey = ((String)co.a(paramString));
    }
    
    public final a a(@chc Bitmap paramBitmap)
    {
      mBitmap = ((Bitmap)co.a(paramBitmap));
      return this;
    }
  }
}

/* Location:
 * Qualified Name:     ajl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */