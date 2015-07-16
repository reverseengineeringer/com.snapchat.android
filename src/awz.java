import android.graphics.Bitmap;
import android.os.AsyncTask;
import android.util.DisplayMetrics;

public class awz
  extends AsyncTask<Void, Void, Bitmap>
{
  private Bitmap mBitmap;
  private DisplayMetrics mDisplayMetrics;
  
  public awz(Bitmap paramBitmap, DisplayMetrics paramDisplayMetrics)
  {
    mBitmap = paramBitmap;
    mDisplayMetrics = paramDisplayMetrics;
  }
}

/* Location:
 * Qualified Name:     awz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */