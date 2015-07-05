import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnPreDrawListener;

final class bgt$2
  implements ViewTreeObserver.OnPreDrawListener
{
  bgt$2(bgt parambgt) {}
  
  public final boolean onPreDraw()
  {
    if (this$0.d()) {
      this$0.mViewTreeObserver.removeOnPreDrawListener(this);
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     bgt.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */