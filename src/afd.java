import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.drawable.AnimationDrawable;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.snapchat.android.discover.model.DSnapPage;
import com.snapchat.android.discover.model.MediaState;
import com.snapchat.android.discover.ui.DSnapView;

public final class afd
{
  public final Context a;
  public DSnapView b;
  public afe c;
  public afc d;
  public boolean e = false;
  public boolean f = false;
  public MediaState g = MediaState.NOT_STARTED;
  public MediaState h = MediaState.NOT_STARTED;
  public String i;
  public int j;
  public afd.a k = null;
  
  public afd(Context paramContext)
  {
    a = paramContext;
  }
  
  public final String a()
  {
    if (b.getDSnapPage() == null) {
      return "?";
    }
    return b.getDSnapPage().a;
  }
  
  public final void a(MediaState paramMediaState)
  {
    if (b == null) {
      return;
    }
    if (!e)
    {
      if (g == paramMediaState)
      {
        a();
        return;
      }
      if ((g.isLoading()) && (paramMediaState.isLoading()))
      {
        a();
        paramMediaState = g;
        return;
      }
      if ((f) && (g.isError()) && (paramMediaState.isLoading()))
      {
        a();
        return;
      }
    }
    a();
    int m;
    if (paramMediaState.isLoading())
    {
      d.a(800);
      localObject1 = c;
      localObject2 = i;
      localMediaState = h;
      m = j;
      a.setBackgroundColor(m);
      if ((localObject2 == null) && (localMediaState == MediaState.SUCCESS))
      {
        c.setVisibility(0);
        b.setVisibility(8);
        h.cancel();
        if (!d.isRunning())
        {
          awf.a(c, d);
          d.start();
          a.setVisibility(0);
        }
      }
    }
    while (!paramMediaState.isError()) {
      for (;;)
      {
        Object localObject2;
        MediaState localMediaState;
        g = paramMediaState;
        e = false;
        f = false;
        return;
        c.setVisibility(8);
        b.setVisibility(0);
        d.stop();
        if (!h.isRunning()) {
          if (localObject2 != null)
          {
            localObject2 = new awv.a().a((String)localObject2);
            mImageView = b;
            mRequireExactDimensions = true;
            localObject2 = ((awv.a)localObject2).a();
            e.a((awv)localObject2, new aww[] { i });
          }
        }
      }
    }
    c.a(800);
    Object localObject1 = d;
    int n;
    int i1;
    switch (afc.3.a[paramMediaState.ordinal()])
    {
    default: 
      n = 2131493125;
      m = 2131493122;
      i1 = 2130837769;
    }
    for (;;)
    {
      b.setText(n);
      c.setText(m);
      d.setImageResource(i1);
      a.setVisibility(0);
      ((afc)localObject1).a(false);
      break;
      n = 2131493121;
      m = 2131493120;
      i1 = 2130837768;
      continue;
      n = 2131493125;
      m = 2131493124;
      i1 = 2130837772;
    }
  }
  
  public static abstract interface a
  {
    public abstract void a();
  }
}

/* Location:
 * Qualified Name:     afd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */