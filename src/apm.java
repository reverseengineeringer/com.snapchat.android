import android.graphics.Point;
import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import android.view.View;
import com.snapchat.android.camera.cameradecor.CameraDecor.CameraDecorInterface;
import com.snapchat.android.camera.cameradecor.CameraDecor.CameraDecorInterface.TakeSnapButtonAction;
import com.snapchat.android.ui.camera.TakeSnapButton;

public final class apm
  extends asv
{
  private final TakeSnapButton a;
  private final ScaleGestureDetector b;
  private final CameraDecor.CameraDecorInterface c;
  private final asm d;
  private boolean e = false;
  private boolean f;
  private boolean g;
  
  public apm(TakeSnapButton paramTakeSnapButton, ScaleGestureDetector paramScaleGestureDetector, CameraDecor.CameraDecorInterface paramCameraDecorInterface)
  {
    this(paramTakeSnapButton, paramScaleGestureDetector, paramCameraDecorInterface, new asm());
  }
  
  private apm(TakeSnapButton paramTakeSnapButton, ScaleGestureDetector paramScaleGestureDetector, CameraDecor.CameraDecorInterface paramCameraDecorInterface, asm paramasm)
  {
    super(paramTakeSnapButton, (byte)0);
    a();
    a = ((TakeSnapButton)ck.a(paramTakeSnapButton));
    b = ((ScaleGestureDetector)ck.a(paramScaleGestureDetector));
    c = ((CameraDecor.CameraDecorInterface)ck.a(paramCameraDecorInterface));
    d = ((asm)ck.a(paramasm));
  }
  
  public final void a()
  {
    g = false;
    f = false;
  }
  
  public final boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    int j = paramMotionEvent.getActionMasked();
    int k = paramMotionEvent.getMetaState();
    b.onTouchEvent(paramMotionEvent);
    int i;
    if (j == 1)
    {
      if (((g) || (f)) && ((k != -1) || (!f)) && ((k == -1) || (!g))) {
        break label102;
      }
      i = 1;
      if (i != 0) {}
    }
    else
    {
      if (j != 3) {
        break label107;
      }
    }
    c.a(CameraDecor.CameraDecorInterface.TakeSnapButtonAction.FINGER_UP);
    a();
    for (;;)
    {
      return super.onTouch(paramView, paramMotionEvent);
      label102:
      i = 0;
      break;
      label107:
      Object localObject;
      if (j == 0)
      {
        if ((!f) && (!g))
        {
          localObject = a;
          a = SystemClock.elapsedRealtime();
          ((TakeSnapButton)localObject).removeCallbacks(e);
          ((TakeSnapButton)localObject).postDelayed(e, 125L);
          b = true;
          c = true;
          c.a(CameraDecor.CameraDecorInterface.TakeSnapButtonAction.FINGER_DOWN);
          if (k == -1) {
            f = true;
          } else {
            g = true;
          }
        }
      }
      else if (j == 5)
      {
        e = true;
        a.postDelayed(new Runnable()
        {
          public final void run()
          {
            apm.a(apm.this);
          }
        }, 300L);
      }
      else if ((j == 6) && (e))
      {
        i = paramMotionEvent.getActionIndex();
        localObject = new int[2];
        Object tmp270_268 = localObject;
        tmp270_268[0] = 0;
        Object tmp274_270 = tmp270_268;
        tmp274_270[1] = 0;
        tmp274_270;
        paramView.getLocationOnScreen((int[])localObject);
        localObject = new Point(localObject[0], localObject[1]);
        localObject = new Point((int)(paramMotionEvent.getX(i) * paramView.getScaleX() + x), (int)(paramMotionEvent.getY(i) * paramView.getScaleY() + y));
        c.a(x, y);
      }
    }
  }
}

/* Location:
 * Qualified Name:     apm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */