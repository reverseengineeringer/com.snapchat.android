import android.content.res.Resources;
import android.util.TypedValue;
import android.widget.FrameLayout.LayoutParams;

public abstract class bq
{
  public static final int a(float paramFloat, Resources paramResources)
  {
    return (int)TypedValue.applyDimension(1, paramFloat, paramResources.getDisplayMetrics());
  }
  
  public static final FrameLayout.LayoutParams a(int paramInt1, int paramInt2)
  {
    return new FrameLayout.LayoutParams(paramInt1, paramInt2);
  }
}

/* Location:
 * Qualified Name:     bq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */