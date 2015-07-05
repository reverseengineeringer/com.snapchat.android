import android.graphics.Bitmap;
import android.os.Bundle;
import android.widget.ImageView;

public final class avx
{
  @cgb
  public awh mBitmapSource;
  @cgc
  private final Bundle mExtras;
  public final int mHeight;
  @cgc
  public final ImageView mImageView;
  @cgc
  final Bitmap mPlaceholderBitmap;
  @cgb
  public final String mRequestId;
  public final boolean mRequireExactDimensions;
  private final boolean mShouldScale;
  public final int mWidth;
  
  private avx(avx.a parama)
  {
    mImageView = mImageView;
    mPlaceholderBitmap = mPlaceholderBitmap;
    mHeight = mHeight;
    mWidth = mWidth;
    mShouldScale = mShouldScale;
    mRequireExactDimensions = mRequireExactDimensions;
    mExtras = mExtras;
    mRequestId = mRequestId;
    if (mResId != null)
    {
      mBitmapSource = new awm(mResId.intValue());
      return;
    }
    if (mBytes != null)
    {
      mBitmapSource = new awi(mBytes);
      return;
    }
    if (mUri != null)
    {
      if (mEncryptionAlgorithm == null)
      {
        mBitmapSource = new awo(mUri);
        return;
      }
      mBitmapSource = new awk(mUri, mEncryptionAlgorithm);
      return;
    }
    if (mCache != null)
    {
      mBitmapSource = new awj(mCache, mCacheKey, mEncryptionAlgorithm);
      return;
    }
    throw new IllegalArgumentException("No valid bitmap source was specified.");
  }
  
  public static final class a
  {
    public byte[] mBytes = null;
    awp mCache;
    String mCacheKey;
    public ayc mEncryptionAlgorithm;
    public Bundle mExtras;
    public int mHeight = -1;
    public ImageView mImageView;
    Bitmap mPlaceholderBitmap;
    public String mRequestId;
    public boolean mRequireExactDimensions = true;
    public Integer mResId = null;
    boolean mShouldScale = false;
    String mUri = null;
    public int mWidth = -1;
    
    public final a a(String paramString)
    {
      mUri = paramString;
      mRequestId = paramString;
      return this;
    }
    
    public final a a(String paramString1, awp paramawp, String paramString2, ayc paramayc)
    {
      mRequestId = paramString1;
      mCache = paramawp;
      mCacheKey = paramString2;
      mEncryptionAlgorithm = paramayc;
      return this;
    }
    
    public final avx a()
    {
      if (mRequestId == null) {
        throw new IllegalArgumentException("Cannot build AsyncLoadBitmapRequest with null request ID.");
      }
      if (mResId != null) {}
      for (int j = 1;; j = 0)
      {
        int i = j;
        if (mBytes != null) {
          i = j + 1;
        }
        j = i;
        if (mUri != null) {
          j = i + 1;
        }
        i = j;
        if (mCache != null) {
          i = j + 1;
        }
        if (i != 1) {
          throw new IllegalArgumentException("Must have exactly one Bitmap source for request!");
        }
        return new avx(this, (byte)0);
      }
    }
  }
}

/* Location:
 * Qualified Name:     avx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */