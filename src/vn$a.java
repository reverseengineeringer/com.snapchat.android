import android.view.GestureDetector.SimpleOnGestureListener;
import android.view.MotionEvent;
import com.snapchat.android.camera.cameradecor.CameraDecor.CameraDecorInterface;

final class vn$a
  extends GestureDetector.SimpleOnGestureListener
{
  private vn$a(vn paramvn) {}
  
  public final boolean onDoubleTapEvent(MotionEvent paramMotionEvent)
  {
    if ((paramMotionEvent.getActionMasked() == 0) && (a.a != null))
    {
      paramMotionEvent = a.j;
      mSpring.c(50.0D);
      mSpring.b(1.0D);
      mSpring.b(0.0D);
      a.a.s();
    }
    return true;
  }
  
  public final boolean onScroll(MotionEvent paramMotionEvent1, MotionEvent paramMotionEvent2, float paramFloat1, float paramFloat2)
  {
    if (vn.b(a))
    {
      a.a.a(1.0F + 7.0E-4F * paramFloat2);
      return true;
    }
    return false;
  }
  
  public final boolean onSingleTapUp(MotionEvent paramMotionEvent)
  {
    a.a.a((int)paramMotionEvent.getX(), (int)paramMotionEvent.getY());
    return true;
  }
}

/* Location:
 * Qualified Name:     vn.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */