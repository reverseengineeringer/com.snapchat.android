import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.AnimationDrawable;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.widget.ImageView;
import com.snapchat.android.discover.ui.DSnapView;

public final class afe
{
  public final View a;
  final ImageView b;
  final ImageView c;
  final AnimationDrawable d;
  final awn e;
  public boolean f = false;
  public Animator g;
  ObjectAnimator h;
  final aww i = new aww()
  {
    public final void a(awm paramAnonymousawm, awv paramAnonymousawv)
    {
      b.post(new Runnable()
      {
        public final void run()
        {
          h.start();
        }
      });
    }
  };
  private final Context j;
  
  public afe(@chc Context paramContext, @chc DSnapView paramDSnapView)
  {
    this(paramContext, paramDSnapView, new awn(paramContext));
  }
  
  private afe(@chc Context paramContext, @chc DSnapView paramDSnapView, awn paramawn)
  {
    e = paramawn;
    j = paramContext;
    a = paramDSnapView.findViewById(2131362298);
    b = ((ImageView)paramDSnapView.findViewById(2131362300));
    c = ((ImageView)paramDSnapView.findViewById(2131362299));
    d = ((AnimationDrawable)paramContext.getResources().getDrawable(2130837766));
    a();
  }
  
  public final void a()
  {
    a.setAlpha(1.0F);
    a.setVisibility(0);
    h = ObjectAnimator.ofFloat(b, View.ALPHA, new float[] { 1.0F, 0.0F });
    h.setDuration(800L);
    h.setRepeatCount(-1);
    h.setRepeatMode(2);
  }
  
  public final void a(int paramInt)
  {
    if ((a.getVisibility() != 0) || (g != null)) {
      return;
    }
    a(paramInt, 1.0F, true);
  }
  
  public final void a(long paramLong, float paramFloat, final boolean paramBoolean)
  {
    g = ObjectAnimator.ofFloat(a, View.ALPHA, new float[] { paramFloat, 0.0F });
    g.setDuration(paramLong);
    g.setInterpolator(new AccelerateInterpolator(1.5F));
    g.addListener(new awh()
    {
      private boolean c = false;
      
      public final void onAnimationCancel(Animator paramAnonymousAnimator)
      {
        c = true;
      }
      
      public final void onAnimationEnd(Animator paramAnonymousAnimator)
      {
        if ((!paramBoolean) || (!c)) {
          b();
        }
      }
    });
    g.start();
  }
  
  public final void b()
  {
    a.setVisibility(8);
    d.stop();
    h.cancel();
    b.clearAnimation();
    f = false;
    g = null;
    e.a(b);
  }
}

/* Location:
 * Qualified Name:     afe
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */