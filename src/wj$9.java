import android.view.View;
import android.widget.ImageButton;
import android.widget.TextView;

final class wj$9
  implements Runnable
{
  wj$9(wj paramwj, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, boolean paramBoolean4) {}
  
  public final void run()
  {
    Object localObject = e.i;
    int i;
    if (a)
    {
      i = 2130837654;
      ((ImageButton)localObject).setImageResource(i);
      localObject = e.l;
      if (!b) {
        break label71;
      }
      i = 0;
      label40:
      ((View)localObject).setVisibility(i);
      if (!c) {
        break label77;
      }
      e.m.setText(2131493246);
    }
    label71:
    label77:
    while (d)
    {
      return;
      i = 2130837653;
      break;
      i = 8;
      break label40;
    }
    e.m.setText(wj.a(e));
  }
}

/* Location:
 * Qualified Name:     wj.9
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */