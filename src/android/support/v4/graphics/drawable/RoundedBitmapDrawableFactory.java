package android.support.v4.graphics.drawable;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Rect;
import android.os.Build.VERSION;
import android.support.v4.graphics.BitmapCompat;
import android.support.v4.view.GravityCompat;
import java.io.InputStream;

public final class RoundedBitmapDrawableFactory
{
  private static final String TAG = "RoundedBitmapDrawableFactory";
  
  private static RoundedBitmapDrawable create(Resources paramResources, Bitmap paramBitmap)
  {
    if (Build.VERSION.SDK_INT >= 21) {
      return new RoundedBitmapDrawable21(paramResources, paramBitmap);
    }
    return new DefaultRoundedBitmapDrawable(paramResources, paramBitmap);
  }
  
  private static RoundedBitmapDrawable create(Resources paramResources, InputStream paramInputStream)
  {
    paramResources = create(paramResources, BitmapFactory.decodeStream(paramInputStream));
    if (paramResources.getBitmap() == null) {
      new StringBuilder("BitmapDrawable cannot decode ").append(paramInputStream);
    }
    return paramResources;
  }
  
  private static RoundedBitmapDrawable create(Resources paramResources, String paramString)
  {
    return create(paramResources, BitmapFactory.decodeFile(paramString));
  }
  
  static final class DefaultRoundedBitmapDrawable
    extends RoundedBitmapDrawable
  {
    DefaultRoundedBitmapDrawable(Resources paramResources, Bitmap paramBitmap)
    {
      super(paramBitmap);
    }
    
    final void gravityCompatApply(int paramInt1, int paramInt2, int paramInt3, Rect paramRect1, Rect paramRect2)
    {
      GravityCompat.apply$1d198dab(paramInt1, paramInt2, paramInt3, paramRect1, paramRect2);
    }
    
    public final boolean hasMipMap()
    {
      return (mBitmap != null) && (BitmapCompat.hasMipMap(mBitmap));
    }
    
    public final void setMipMap(boolean paramBoolean)
    {
      if (mBitmap != null)
      {
        BitmapCompat.setHasMipMap(mBitmap, paramBoolean);
        invalidateSelf();
      }
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v4.graphics.drawable.RoundedBitmapDrawableFactory
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */