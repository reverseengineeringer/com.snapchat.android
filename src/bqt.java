import android.graphics.Rect;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.i;
import android.util.SparseArray;
import android.view.GestureDetector;
import android.view.GestureDetector.SimpleOnGestureListener;
import android.view.MotionEvent;
import android.view.View;

public class bqt
  implements RecyclerView.i
{
  final RecyclerView a;
  public bqt.a b;
  private final GestureDetector c = new GestureDetector(paramRecyclerView.getContext(), new bqt.b((byte)0));
  private final bqs d;
  
  public bqt(RecyclerView paramRecyclerView, bqs parambqs)
  {
    a = paramRecyclerView;
    d = parambqs;
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
      Object localObject = bqt.a(bqt.this);
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
          localObject = bqt.a(bqt.this).a(bqt.b(bqt.this), i);
          bqt localbqt = bqt.this;
          if (!(a.getAdapter() instanceof bqr)) {
            break label192;
          }
          long l = ((bqr)a.getAdapter()).e(i);
          bqt.c(bqt.this).a(l);
          bqt.b(bqt.this).playSoundEffect(0);
          ((View)localObject).onTouchEvent(paramMotionEvent);
          bool = true;
        }
        return bool;
        i += 1;
        break;
      }
      label192:
      throw new IllegalStateException("A RecyclerView with " + bqt.class.getSimpleName() + " requires a " + bqr.class.getSimpleName());
    }
  }
}

/* Location:
 * Qualified Name:     bqt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */