import android.graphics.Rect;
import android.support.v7.widget.RecyclerView;
import android.util.SparseArray;
import android.view.GestureDetector.SimpleOnGestureListener;
import android.view.MotionEvent;
import android.view.View;

final class bqt$b
  extends GestureDetector.SimpleOnGestureListener
{
  private bqt$b(bqt parambqt) {}
  
  public final boolean onDoubleTap(MotionEvent paramMotionEvent)
  {
    return true;
  }
  
  public final boolean onSingleTapUp(MotionEvent paramMotionEvent)
  {
    boolean bool = false;
    Object localObject = bqt.a(a);
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
        localObject = bqt.a(a).a(bqt.b(a), i);
        bqt localbqt = a;
        if (!(a.getAdapter() instanceof bqr)) {
          break label192;
        }
        long l = ((bqr)a.getAdapter()).e(i);
        bqt.c(a).a(l);
        bqt.b(a).playSoundEffect(0);
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

/* Location:
 * Qualified Name:     bqt.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */