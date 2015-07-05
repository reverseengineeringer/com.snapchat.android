import android.widget.FrameLayout;
import android.widget.MediaController;
import android.widget.RelativeLayout.LayoutParams;

final class adv$1
  implements Runnable
{
  adv$1(adv paramadv) {}
  
  public final void run()
  {
    RelativeLayout.LayoutParams localLayoutParams = (RelativeLayout.LayoutParams)a.d.getLayoutParams();
    bottomMargin = a.a.getMeasuredHeight();
    a.d.setLayoutParams(localLayoutParams);
  }
}

/* Location:
 * Qualified Name:     adv.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */