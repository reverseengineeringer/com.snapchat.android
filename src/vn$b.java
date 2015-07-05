import android.view.ScaleGestureDetector;
import android.view.ScaleGestureDetector.SimpleOnScaleGestureListener;
import com.snapchat.android.camera.cameradecor.CameraDecor.CameraDecorInterface;

final class vn$b
  extends ScaleGestureDetector.SimpleOnScaleGestureListener
{
  private vn$b(vn paramvn) {}
  
  public final boolean onScale(ScaleGestureDetector paramScaleGestureDetector)
  {
    a.a.a(paramScaleGestureDetector.getScaleFactor());
    return true;
  }
}

/* Location:
 * Qualified Name:     vn.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */