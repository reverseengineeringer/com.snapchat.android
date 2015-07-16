import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.animation.AccelerateInterpolator;
import android.widget.ImageView;
import android.widget.TextView;
import com.snapchat.android.discover.ui.DSnapView;

public final class afc
{
  public final ViewGroup a;
  final TextView b;
  final TextView c;
  final ImageView d;
  public boolean e = false;
  public Animator f = null;
  private final ViewGroup g;
  private final TextView h;
  private final View i;
  private final View j;
  
  public afc(@chc DSnapView paramDSnapView, final View.OnClickListener paramOnClickListener)
  {
    a = ((ViewGroup)paramDSnapView.findViewById(2131362302));
    j = a.findViewById(2131362308);
    i = a.findViewById(2131362307);
    g = ((ViewGroup)a.findViewById(2131362306));
    h = ((TextView)a.findViewById(2131362309));
    g.setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        a(true);
        if (paramOnClickListener != null) {
          paramOnClickListener.onClick(paramAnonymousView);
        }
      }
    });
    d = ((ImageView)a.findViewById(2131362305));
    b = ((TextView)a.findViewById(2131362303));
    c = ((TextView)a.findViewById(2131362304));
    b();
  }
  
  public final void a()
  {
    a.setVisibility(8);
    e = false;
    f = null;
  }
  
  public final void a(int paramInt)
  {
    if ((a.getVisibility() != 0) || (f != null)) {
      return;
    }
    a(paramInt, 1.0F, true);
  }
  
  public final void a(long paramLong, float paramFloat, final boolean paramBoolean)
  {
    f = ObjectAnimator.ofFloat(a, View.ALPHA, new float[] { paramFloat, 0.0F });
    f.setDuration(paramLong);
    f.setInterpolator(new AccelerateInterpolator(1.5F));
    f.addListener(new awh()
    {
      private boolean c = false;
      
      public final void onAnimationCancel(Animator paramAnonymousAnimator)
      {
        c = true;
      }
      
      public final void onAnimationEnd(Animator paramAnonymousAnimator)
      {
        if ((!paramBoolean) || (!c)) {
          a();
        }
      }
    });
    f.start();
  }
  
  final void a(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      j.setVisibility(8);
      i.setVisibility(0);
      h.setText(2131493213);
      g.setClickable(false);
      return;
    }
    j.setVisibility(0);
    i.setVisibility(8);
    h.setText(2131493127);
    g.setClickable(true);
  }
  
  public final void b()
  {
    a.setVisibility(8);
    i.setVisibility(8);
    a(false);
  }
}

/* Location:
 * Qualified Name:     afc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */