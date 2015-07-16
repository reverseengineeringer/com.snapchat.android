import android.view.ScaleGestureDetector;
import android.view.ScaleGestureDetector.SimpleOnScaleGestureListener;
import com.snapchat.android.camera.cameradecor.CameraDecor.CameraDecorInterface;

final class wj$b
  extends ScaleGestureDetector.SimpleOnScaleGestureListener
{
  private wj$b(wj paramwj) {}
  
  public final boolean onScale(ScaleGestureDetector paramScaleGestureDetector)
  {
    a.a.a(paramScaleGestureDetector.getScaleFactor());
    return true;
  }
}

/* Location:
 * Qualified Name:     wj.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */