import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.preference.PreferenceManager;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.widget.ImageView;
import com.snapchat.android.Timber;
import com.snapchat.android.analytics.framework.EasyMetric;
import com.snapchat.android.analytics.framework.ErrorMetric;
import com.snapchat.android.database.SharedPreferenceKey;
import com.squareup.otto.Bus;

public final class aqw
{
  private static float e = 9999.9F;
  public final apd a;
  public final Bus b;
  public View c;
  public final View.OnTouchListener d = new View.OnTouchListener()
  {
    public final boolean onTouch(View paramAnonymousView, MotionEvent paramAnonymousMotionEvent)
    {
      paramAnonymousView = aqw.this;
      boolean bool;
      if (!aqw.a(aqw.this))
      {
        bool = true;
        aqw.a(paramAnonymousView, bool);
        paramAnonymousView = aqw.b(aqw.this).edit();
        paramAnonymousView.putBoolean(SharedPreferenceKey.SPEED_USE_MPH.getKey(), aqw.a(aqw.this));
        paramAnonymousView.apply();
        aqw.a(aqw.this, aqw.c(aqw.this));
        if (!aqw.a(aqw.this)) {
          break label121;
        }
      }
      label121:
      for (paramAnonymousView = "MPH";; paramAnonymousView = "KPH")
      {
        Timber.c("SpeedometerView", "User switched unit preference to " + paramAnonymousView, new Object[0]);
        return true;
        bool = false;
        break;
      }
    }
  };
  private final SharedPreferences f;
  private final Context g;
  private boolean h;
  private float i;
  
  public aqw(Context paramContext, apd paramapd)
  {
    this(paramContext, ban.a(), PreferenceManager.getDefaultSharedPreferences(paramContext), paramapd);
  }
  
  private aqw(Context paramContext, Bus paramBus, SharedPreferences paramSharedPreferences, apd paramapd)
  {
    this(paramContext, paramBus, paramSharedPreferences, paramapd, paramSharedPreferences.getBoolean(str, atx.a()));
  }
  
  private aqw(Context paramContext, Bus paramBus, SharedPreferences paramSharedPreferences, apd paramapd, boolean paramBoolean)
  {
    g = paramContext;
    b = paramBus;
    a = paramapd;
    f = paramSharedPreferences;
    h = paramBoolean;
  }
  
  private static int a(int paramInt)
  {
    switch (paramInt % 10)
    {
    default: 
      throw new IndexOutOfBoundsException("Invalid input: " + paramInt);
    case 0: 
      return 2130838110;
    case 1: 
      return 2130838111;
    case 2: 
      return 2130838112;
    case 3: 
      return 2130838113;
    case 4: 
      return 2130838114;
    case 5: 
      return 2130838115;
    case 6: 
      return 2130838116;
    case 7: 
      return 2130838117;
    case 8: 
      return 2130838118;
    }
    return 2130838119;
  }
  
  public final void a(float paramFloat)
  {
    if (h)
    {
      paramFloat = (float)(paramFloat * 2.237D);
      if ((!Float.isNaN(paramFloat)) && (paramFloat >= 0.0F) && (paramFloat <= e)) {
        break label416;
      }
      new ErrorMetric("SpeedometerView: Invalid speed").a("speed", Float.toString(paramFloat)).d();
      paramFloat = 0.0F;
    }
    label111:
    label149:
    label193:
    label343:
    label361:
    label380:
    label408:
    label416:
    for (;;)
    {
      ImageView localImageView1 = (ImageView)c.findViewById(2131362740);
      ImageView localImageView2 = (ImageView)c.findViewById(2131362741);
      int j = (int)(paramFloat / 1000.0F);
      int k;
      int m;
      if (j == 0)
      {
        localImageView1.setVisibility(8);
        localImageView2.setVisibility(8);
        localImageView1 = (ImageView)c.findViewById(2131362742);
        k = (int)(paramFloat / 100.0F) % 10;
        if ((j != 0) || (k != 0)) {
          break label343;
        }
        localImageView1.setVisibility(8);
        localImageView1 = (ImageView)c.findViewById(2131362743);
        m = (int)(paramFloat / 10.0F) % 10;
        if ((j != 0) || (k != 0) || (m != 0)) {
          break label361;
        }
        localImageView1.setVisibility(8);
        ((ImageView)c.findViewById(2131362744)).setImageResource(a((int)paramFloat % 10));
        localImageView1 = (ImageView)c.findViewById(2131362746);
        localImageView2 = (ImageView)c.findViewById(2131362745);
        m = (int)(paramFloat * 10.0F);
        if ((j == 0) && (k == 0) && (paramFloat != 0.0F)) {
          break label380;
        }
        localImageView1.setVisibility(8);
        localImageView2.setVisibility(8);
      }
      for (;;)
      {
        localImageView1 = (ImageView)c.findViewById(2131362747);
        if (!h) {
          break label408;
        }
        localImageView1.setImageResource(2130838122);
        return;
        paramFloat = (float)(paramFloat * 3.6D);
        break;
        localImageView1.setVisibility(0);
        localImageView1.setImageResource(a(j));
        localImageView2.setVisibility(0);
        break label111;
        localImageView1.setVisibility(0);
        localImageView1.setImageResource(a(k));
        break label149;
        localImageView1.setVisibility(0);
        localImageView1.setImageResource(a(m));
        break label193;
        localImageView1.setVisibility(0);
        localImageView1.setImageResource(a(m % 10));
        localImageView2.setVisibility(0);
      }
      localImageView1.setImageResource(2130838121);
      return;
    }
  }
  
  @boh
  public final void onSpeedUpdatedEvent(bdu parambdu)
  {
    i = mSpeed;
    a(i);
  }
}

/* Location:
 * Qualified Name:     aqw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */