import android.graphics.Bitmap;

public final class ajj
  extends aim
{
  private static final int JPEG_ENCODING_QUALITY = 60;
  private final nq mSnapbryoAnalytics;
  
  protected ajj(ajj.a parama)
  {
    super(parama);
    mSnapbryoAnalytics = mSnapbryoAnalytics;
  }
  
  private ajj n()
  {
    return ((ajj.a)new ajj.a().a(this)).c();
  }
  
  @cgc
  public final byte[] g()
  {
    Bitmap localBitmap = mCompositeImageBitmap;
    if (localBitmap == null)
    {
      nq.a(this, "Null Composite Image Bitmap");
      return null;
    }
    localBitmap = aur.e(localBitmap);
    if (localBitmap == null)
    {
      nq.a(this, "Null Composite Image Bitmap after SnapMediaUtils.downscaleBitmapForUpload");
      return null;
    }
    return aur.b(localBitmap);
  }
  
  public final int h()
  {
    return 0;
  }
  
  public final void i() {}
  
  public final boolean m()
  {
    return false;
  }
  
  public static final class a
    extends aim.a<a>
  {
    nq mSnapbryoAnalytics;
    
    public final ajj c()
    {
      super.a();
      if (mSnapbryoAnalytics == null) {
        mSnapbryoAnalytics = new nq();
      }
      return new ajj(this);
    }
  }
}

/* Location:
 * Qualified Name:     ajj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */