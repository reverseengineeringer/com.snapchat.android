import android.graphics.Rect;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.i;
import android.util.SparseArray;
import android.view.GestureDetector;
import android.view.GestureDetector.SimpleOnGestureListener;
import android.view.MotionEvent;
import android.view.View;

public class bps
  implements RecyclerView.i
{
  final RecyclerView a;
  public bps.a b;
  private final GestureDetector c = new GestureDetector(paramRecyclerView.getContext(), new bps.b((byte)0));
  private final bpr d;
  
  public bps(RecyclerView paramRecyclerView, bpr parambpr)
  {
    a = paramRecyclerView;
    d = parambpr;
  }
  
  public final boolean a(MotionEvent paramMotionEvent)
  {
    return (b != null) && (c.onTouchEvent(paramMotionEvent));
  }
  
  public static abstract interface a
  {
    public abstract void a(long paramLong);
  }
  
  final class b
    extends GestureDetector.SimpleOnGestureListener
  {
    private b() {}
    
    public final boolean onDoubleTap(MotionEvent paramMotionEvent)
    {
      return true;
    }
    
    public final boolean onSingleTapUp(MotionEvent paramMotionEvent)
    {
      boolean bool = false;
      Object localObject = bps.a(bps.this);
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
          localObject = bps.a(bps.this).a(bps.b(bps.this), i);
          bps localbps = bps.this;
          if (!(a.getAdapter() instanceof bpq)) {
            break label192;
          }
          long l = ((bpq)a.getAdapter()).e(i);
          bps.c(bps.this).a(l);
          bps.b(bps.this).playSoundEffect(0);
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
}

/* Location:
 * Qualified Name:     bps
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */