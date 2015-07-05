import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory.Options;
import android.util.DisplayMetrics;

public final class awn
{
  public static BitmapFactory.Options a(DisplayMetrics paramDisplayMetrics, int paramInt1, int paramInt2)
  {
    Bitmap.Config localConfig = Bitmap.Config.ARGB_8888;
    BitmapFactory.Options localOptions = new BitmapFactory.Options();
    inJustDecodeBounds = false;
    inSampleSize = b(paramDisplayMetrics, paramInt1, paramInt2);
    inMutable = true;
    inPreferredConfig = localConfig;
    outHeight = paramInt2;
    outWidth = paramInt1;
    return localOptions;
  }
  
  private static int b(DisplayMetrics paramDisplayMetrics, int paramInt1, int paramInt2)
  {
    int m = Math.min(widthPixels, 3379);
    int n = Math.min(heightPixels, 3379);
    int k = 1;
    int j = 1;
    int i = k;
    if (paramInt1 > m)
    {
      i = k;
      if (paramInt2 > n)
      {
        paramInt2 /= 2;
        k = paramInt1 / 2;
        paramInt1 = j;
        while ((paramInt2 / paramInt1 > n) && (k / paramInt1 > m)) {
          paramInt1 *= 2;
        }
        i = paramInt1;
        if (paramInt2 / paramInt1 == n)
        {
          i = paramInt1;
          if (k / paramInt1 == m) {
            i = paramInt1 * 2;
          }
        }
      }
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     awn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */