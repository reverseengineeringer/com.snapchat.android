import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.a;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.widget.SectionIndexer;
import xyz.danoz.recyclerviewfastscroller.AbsRecyclerViewFastScroller;

public final class clr
  implements View.OnTouchListener
{
  private final AbsRecyclerViewFastScroller a;
  
  public clr(AbsRecyclerViewFastScroller paramAbsRecyclerViewFastScroller)
  {
    a = paramAbsRecyclerViewFastScroller;
  }
  
  public final boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    if (a.getSectionIndicator() != null) {
      paramMotionEvent.getActionMasked();
    }
    paramView = a;
    if (paramView.getScrollProgressCalculator() != null) {}
    for (float f = paramView.getScrollProgressCalculator().a(paramMotionEvent);; f = 0.0F)
    {
      paramView = a;
      int i = (int)(c.getAdapter().a() * f);
      c.a(i);
      if (d != null)
      {
        d.setProgress(f);
        if ((c.getAdapter() instanceof SectionIndexer))
        {
          paramMotionEvent = (SectionIndexer)c.getAdapter();
          i = paramMotionEvent.getSectionForPosition(i);
          paramMotionEvent = paramMotionEvent.getSections();
          d.setSection(paramMotionEvent[i]);
        }
      }
      a.a(f);
      return true;
    }
  }
}

/* Location:
 * Qualified Name:     clr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */