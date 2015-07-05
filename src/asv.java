import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;

public class asv
  implements View.OnTouchListener
{
  public static final float BOUNCE_VELOCITY = 50.0F;
  public static final float DEFAULT_DAMPENING_CONSTANT = 15.0F;
  public static final float DEFAULT_END_SIZE = 1.2F;
  public static final boolean DEFAULT_KEEP_EXPANDED_ON_HOVER_LEAVE = false;
  public static final float DEFAULT_SPRING_CONSTANT = 1000.0F;
  public boolean mBounceEnabled = true;
  private final boolean mKeepExpandedOnHoverLeave;
  public final bj mSpring;
  private final View mViewToAnimate;
  
  public asv(View paramView)
  {
    this(paramView, false);
  }
  
  public asv(View paramView, byte paramByte)
  {
    this(paramView, true);
  }
  
  private asv(View paramView, boolean paramBoolean)
  {
    this(paramView, paramBoolean, avk.a());
  }
  
  private asv(View paramView, boolean paramBoolean, bp parambp)
  {
    mViewToAnimate = paramView;
    mKeepExpandedOnHoverLeave = paramBoolean;
    mSpring = parambp.a();
    mSpring.a(new bl(1000.0D, 15.0D));
    mSpring.a(new bi()
    {
      public final void a(bj paramAnonymousbj)
      {
        if (asv.a(asv.this))
        {
          float f1 = val$endSize;
          float f2 = (float)d.a;
          asv.a(asv.this, (f1 - 1.0F) * f2 + 1.0F);
        }
      }
    });
  }
  
  public final void a(float paramFloat)
  {
    mViewToAnimate.setScaleX(paramFloat);
    mViewToAnimate.setScaleY(paramFloat);
  }
  
  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    int i = 1;
    double d = 1.0D;
    if ((paramMotionEvent.getActionMasked() == 1) || (paramMotionEvent.getActionMasked() == 3))
    {
      mSpring.b(0.0D);
      return false;
    }
    if ((!mKeepExpandedOnHoverLeave) && (paramMotionEvent.getActionMasked() == 2))
    {
      if ((paramMotionEvent.getX() >= 0.0F) && (paramMotionEvent.getX() < paramView.getWidth()) && (paramMotionEvent.getY() >= 0.0F) && (paramMotionEvent.getY() < paramView.getHeight()))
      {
        paramView = mSpring;
        if (i == 0) {
          break label115;
        }
      }
      for (;;)
      {
        paramView.b(d);
        return false;
        i = 0;
        break;
        label115:
        d = 0.0D;
      }
    }
    mSpring.b(1.0D);
    return false;
  }
}

/* Location:
 * Qualified Name:     asv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */