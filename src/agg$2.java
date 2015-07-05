import android.support.v7.widget.RecyclerView.a;
import android.support.v7.widget.RecyclerView.b;
import android.view.View;
import android.view.View.OnClickListener;
import java.util.List;

final class agg$2
  implements View.OnClickListener
{
  agg$2(agg paramagg, int paramInt) {}
  
  public final void onClick(View paramView)
  {
    List localList = agg.a(b).b();
    agg localagg;
    int i;
    if (localList != null)
    {
      localagg = b;
      i = a;
      if (c.c()) {
        break label110;
      }
      d.a(paramView.getBottom(), paramView.getHeight() * (localList.size() - 1));
      e.remove(i);
    }
    for (;;)
    {
      e.addAll(i, localList);
      f = e;
      a.b();
      return;
      label110:
      d.a(paramView.getTop(), paramView.getHeight() * localList.size());
    }
  }
}

/* Location:
 * Qualified Name:     agg.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */