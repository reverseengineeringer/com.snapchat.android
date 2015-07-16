import android.graphics.Bitmap;

public final class akf
  extends aji
{
  private static final int JPEG_ENCODING_QUALITY = 60;
  private final oh mSnapbryoAnalytics;
  
  protected akf(akf.a parama)
  {
    super(parama);
    mSnapbryoAnalytics = mSnapbryoAnalytics;
  }
  
  private akf n()
  {
    return ((akf.a)new akf.a().a(this)).c();
  }
  
  @chd
  public final byte[] g()
  {
    Bitmap localBitmap = mCompositeImageBitmap;
    if (localBitmap == null)
    {
      oh.a(this, "Null Composite Image Bitmap");
      return null;
    }
    localBitmap = avp.e(localBitmap);
    if (localBitmap == null)
    {
      oh.a(this, "Null Composite Image Bitmap after SnapMediaUtils.downscaleBitmapForUpload");
      return null;
    }
    return avp.b(localBitmap);
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
    extends aji.a<a>
  {
    oh mSnapbryoAnalytics;
    
    public final akf c()
    {
      super.a();
      if (mSnapbryoAnalytics == null) {
        mSnapbryoAnalytics = new oh();
      }
      return new akf(this);
    }
  }
}

/* Location:
 * Qualified Name:     akf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */