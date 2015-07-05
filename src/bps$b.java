import android.graphics.Rect;
import android.support.v7.widget.RecyclerView;
import android.util.SparseArray;
import android.view.GestureDetector.SimpleOnGestureListener;
import android.view.MotionEvent;
import android.view.View;

final class bps$b
  extends GestureDetector.SimpleOnGestureListener
{
  private bps$b(bps parambps) {}
  
  public final boolean onDoubleTap(MotionEvent paramMotionEvent)
  {
    return true;
  }
  
  public final boolean onSingleTapUp(MotionEvent paramMotionEvent)
  {
    boolean bool = false;
    Object localObject = bps.a(a);
    int j = (int)paramMotionEvent.getX();
    int k = (int)paramMotionEvent.getY();
    int i = 0;
    if (i < a.size()) {
      if (!((Rect)a.get(a.keyAt(i))).contains(j, k)) {}
    }
    for (i = a.keyAt(i);; i = -1)
    {
      if (i != -1)
      {
        localObject = bps.a(a).a(bps.b(a), i);
        bps localbps = a;
        if (!(a.getAdapter() instanceof bpq)) {
          break label192;
        }
        long l = ((bpq)a.getAdapter()).e(i);
        bps.c(a).a(l);
        bps.b(a).playSoundEffect(0);
        ((View)localObject).onTouchEvent(paramMotionEvent);
        bool = true;
      }
      return bool;
      i += 1;
      break;
    }
    label192:
    throw new IllegalStateException("A RecyclerView with " + bps.class.getSimpleName() + " requires a " + bpq.class.getSimpleName());
  }
}

/* Location:
 * Qualified Name:     bps.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */