import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnPreDrawListener;

final class bht$2
  implements ViewTreeObserver.OnPreDrawListener
{
  bht$2(bht parambht) {}
  
  public final boolean onPreDraw()
  {
    if (this$0.d()) {
      this$0.mViewTreeObserver.removeOnPreDrawListener(this);
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     bht.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */