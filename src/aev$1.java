import android.widget.FrameLayout;
import android.widget.MediaController;
import android.widget.RelativeLayout.LayoutParams;

final class aev$1
  implements Runnable
{
  aev$1(aev paramaev) {}
  
  public final void run()
  {
    RelativeLayout.LayoutParams localLayoutParams = (RelativeLayout.LayoutParams)a.d.getLayoutParams();
    bottomMargin = a.a.getMeasuredHeight();
    a.d.setLayoutParams(localLayoutParams);
  }
}

/* Location:
 * Qualified Name:     aev.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */