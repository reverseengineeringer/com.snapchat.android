import android.content.Context;
import android.view.OrientationEventListener;

final class avh$1
  extends OrientationEventListener
{
  avh$1(avh paramavh, Context paramContext)
  {
    super(paramContext, 3);
  }
  
  public final void onOrientationChanged(int paramInt)
  {
    int i = 0;
    avh localavh = this$0;
    if ((avh.a(paramInt, 338, 360)) || (avh.a(paramInt, 0, 22))) {
      i = 1;
    }
    for (;;)
    {
      if ((i != mRotation) && ((mReportRotation & i) != 0))
      {
        mRotation = i;
        if (mScreenRotationListener != null) {
          mScreenRotationListener.a(i);
        }
      }
      return;
      if (avh.a(paramInt, 248, 292)) {
        i = 16;
      } else if (avh.a(paramInt, 158, 202)) {
        i = 256;
      } else if (avh.a(paramInt, 68, 112)) {
        i = 4096;
      }
    }
  }
}

/* Location:
 * Qualified Name:     avh.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */