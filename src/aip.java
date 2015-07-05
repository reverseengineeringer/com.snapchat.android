import android.graphics.Bitmap;

public final class aip
  extends bfm
{
  private static final String TAG = "DecryptedSnapVideo";
  private final awp mCache;
  private final String mKey;
  @cgc
  private final Bitmap mOverlay;
  
  private aip(@cgb awp paramawp, @cgb String paramString, @cgc Bitmap paramBitmap)
  {
    mCache = paramawp;
    mKey = paramString;
    mOverlay = paramBitmap;
  }
  
  @cgc
  public final String a()
  {
    f();
    return mCache.b(mKey);
  }
  
  @cgc
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
    public final awp mCache;
    public final String mKey;
    
    public a(@cgb awp paramawp, @cgb String paramString)
    {
      mCache = ((awp)ck.a(paramawp));
      mKey = ((String)ck.a(paramString));
    }
    
    public final a a(@cgb Bitmap paramBitmap)
    {
      mBitmap = ((Bitmap)ck.a(paramBitmap));
      return this;
    }
  }
}

/* Location:
 * Qualified Name:     aip
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */