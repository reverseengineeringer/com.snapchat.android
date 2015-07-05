import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.animation.AccelerateInterpolator;
import android.widget.ImageView;
import android.widget.TextView;
import com.snapchat.android.Timber;
import com.snapchat.android.discover.ui.DSnapView;

public final class aec
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
  
  public aec(@cgb DSnapView paramDSnapView, final View.OnClickListener paramOnClickListener)
  {
    a = ((ViewGroup)paramDSnapView.findViewById(2131362304));
    j = a.findViewById(2131362310);
    i = a.findViewById(2131362309);
    g = ((ViewGroup)a.findViewById(2131362308));
    h = ((TextView)a.findViewById(2131362311));
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
    d = ((ImageView)a.findViewById(2131362307));
    b = ((TextView)a.findViewById(2131362305));
    c = ((TextView)a.findViewById(2131362306));
  }
  
  public final void a(int paramInt)
  {
    if ((a.getVisibility() != 0) || (f != null)) {
      return;
    }
    Timber.a("DSnapLoadingErrorViewHolder", "LOADING-STATE: Hiding with duration " + paramInt, new Object[0]);
    a(paramInt, 1.0F, true);
  }
  
  public final void a(long paramLong, float paramFloat, final boolean paramBoolean)
  {
    f = ObjectAnimator.ofFloat(a, View.ALPHA, new float[] { paramFloat, 0.0F });
    f.setDuration(paramLong);
    f.setInterpolator(new AccelerateInterpolator(1.5F));
    f.addListener(new avj()
    {
      private boolean c = false;
      
      public final void onAnimationCancel(Animator paramAnonymousAnimator)
      {
        c = true;
      }
      
      public final void onAnimationEnd(Animator paramAnonymousAnimator)
      {
        if ((!paramBoolean) || (!c))
        {
          paramAnonymousAnimator = aec.this;
          a.setVisibility(8);
          e = false;
          f = null;
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
}

/* Location:
 * Qualified Name:     aec
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */