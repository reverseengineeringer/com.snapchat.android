import android.graphics.Rect;
import android.view.TouchDelegate;
import android.view.View;

final class avh$1
  implements Runnable
{
  avh$1(View paramView1, int paramInt, View paramView2) {}
  
  public final void run()
  {
    Rect localRect = new Rect();
    val$childSmallView.getHitRect(localRect);
    top -= val$extraPaddingPixels;
    left -= val$extraPaddingPixels;
    right += val$extraPaddingPixels;
    bottom += val$extraPaddingPixels;
    val$parentBigView.setTouchDelegate(new TouchDelegate(localRect, val$childSmallView));
  }
}

/* Location:
 * Qualified Name:     avh.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */