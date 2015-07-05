import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.Callback;

final class buw$1
  implements Drawable.Callback
{
  buw$1(buw parambuw) {}
  
  public final void invalidateDrawable(Drawable paramDrawable)
  {
    a.invalidateSelf();
  }
  
  public final void scheduleDrawable(Drawable paramDrawable, Runnable paramRunnable, long paramLong)
  {
    a.scheduleSelf(paramRunnable, paramLong);
  }
  
  public final void unscheduleDrawable(Drawable paramDrawable, Runnable paramRunnable)
  {
    a.unscheduleSelf(paramRunnable);
  }
}

/* Location:
 * Qualified Name:     buw.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */