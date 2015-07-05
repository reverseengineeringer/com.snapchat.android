package android.support.v4.widget;

import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;

final class DrawerLayout$ViewDragCallback$1
  implements Runnable
{
  DrawerLayout$ViewDragCallback$1(DrawerLayout.ViewDragCallback paramViewDragCallback) {}
  
  public final void run()
  {
    int k = 0;
    Object localObject2 = this$1;
    int m = mDragger.mEdgeSize;
    int i;
    Object localObject1;
    int j;
    if (mAbsGravity == 3)
    {
      i = 1;
      if (i == 0) {
        break label226;
      }
      localObject1 = this$0.findDrawerWithGravity(3);
      if (localObject1 == null) {
        break label221;
      }
      j = -((View)localObject1).getWidth();
      label56:
      j += m;
    }
    for (;;)
    {
      label61:
      if ((localObject1 != null) && (((i != 0) && (((View)localObject1).getLeft() < j)) || ((i == 0) && (((View)localObject1).getLeft() > j) && (this$0.getDrawerLockMode((View)localObject1) == 0))))
      {
        DrawerLayout.LayoutParams localLayoutParams = (DrawerLayout.LayoutParams)((View)localObject1).getLayoutParams();
        mDragger.smoothSlideViewTo((View)localObject1, j, ((View)localObject1).getTop());
        isPeeking = true;
        this$0.invalidate();
        ((DrawerLayout.ViewDragCallback)localObject2).closeOtherDrawer();
        localObject1 = this$0;
        if (!mChildrenCanceledTouch)
        {
          long l = SystemClock.uptimeMillis();
          localObject2 = MotionEvent.obtain(l, l, 3, 0.0F, 0.0F, 0);
          j = ((DrawerLayout)localObject1).getChildCount();
          i = k;
          for (;;)
          {
            if (i < j)
            {
              ((DrawerLayout)localObject1).getChildAt(i).dispatchTouchEvent((MotionEvent)localObject2);
              i += 1;
              continue;
              i = 0;
              break;
              label221:
              j = 0;
              break label56;
              label226:
              localObject1 = this$0.findDrawerWithGravity(5);
              j = this$0.getWidth();
              j -= m;
              break label61;
            }
          }
          ((MotionEvent)localObject2).recycle();
          mChildrenCanceledTouch = true;
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v4.widget.DrawerLayout.ViewDragCallback.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */