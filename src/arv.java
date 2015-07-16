import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.preference.PreferenceManager;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.widget.ImageView;
import com.snapchat.android.analytics.framework.EasyMetric;
import com.snapchat.android.analytics.framework.ErrorMetric;
import com.snapchat.android.database.SharedPreferenceKey;
import com.squareup.otto.Bus;

public final class arv
{
  private static float e = 9999.9F;
  public final apz a;
  public final Bus b;
  public View c;
  public final View.OnTouchListener d = new View.OnTouchListener()
  {
    public final boolean onTouch(View paramAnonymousView, MotionEvent paramAnonymousMotionEvent)
    {
      paramAnonymousView = arv.this;
      if (!arv.a(arv.this)) {}
      for (boolean bool = true;; bool = false)
      {
        arv.a(paramAnonymousView, bool);
        paramAnonymousView = arv.b(arv.this).edit();
        paramAnonymousView.putBoolean(SharedPreferenceKey.SPEED_USE_MPH.getKey(), arv.a(arv.this));
        paramAnonymousView.apply();
        arv.a(arv.this, arv.c(arv.this));
        return true;
      }
    }
  };
  private final SharedPreferences f;
  private final Context g;
  private boolean h;
  private float i;
  
  public arv(Context paramContext, apz paramapz)
  {
    this(paramContext, bbo.a(), PreferenceManager.getDefaultSharedPreferences(paramContext), paramapz);
  }
  
  private arv(Context paramContext, Bus paramBus, SharedPreferences paramSharedPreferences, apz paramapz)
  {
    this(paramContext, paramBus, paramSharedPreferences, paramapz, paramSharedPreferences.getBoolean(SharedPreferenceKey.SPEED_USE_MPH.getKey(), auv.a()));
  }
  
  private arv(Context paramContext, Bus paramBus, SharedPreferences paramSharedPreferences, apz paramapz, boolean paramBoolean)
  {
    g = paramContext;
    b = paramBus;
    a = paramapz;
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
      new ErrorMetric("SpeedometerView: Invalid speed").a("speed", Float.toString(paramFloat)).e();
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
      ImageView localImageView1 = (ImageView)c.findViewById(2131362737);
      ImageView localImageView2 = (ImageView)c.findViewById(2131362738);
      int j = (int)(paramFloat / 1000.0F);
      int k;
      int m;
      if (j == 0)
      {
        localImageView1.setVisibility(8);
        localImageView2.setVisibility(8);
        localImageView1 = (ImageView)c.findViewById(2131362739);
        k = (int)(paramFloat / 100.0F) % 10;
        if ((j != 0) || (k != 0)) {
          break label343;
        }
        localImageView1.setVisibility(8);
        localImageView1 = (ImageView)c.findViewById(2131362740);
        m = (int)(paramFloat / 10.0F) % 10;
        if ((j != 0) || (k != 0) || (m != 0)) {
          break label361;
        }
        localImageView1.setVisibility(8);
        ((ImageView)c.findViewById(2131362741)).setImageResource(a((int)paramFloat % 10));
        localImageView1 = (ImageView)c.findViewById(2131362743);
        localImageView2 = (ImageView)c.findViewById(2131362742);
        m = (int)(paramFloat * 10.0F);
        if ((j == 0) && (k == 0) && (paramFloat != 0.0F)) {
          break label380;
        }
        localImageView1.setVisibility(8);
        localImageView2.setVisibility(8);
      }
      for (;;)
      {
        localImageView1 = (ImageView)c.findViewById(2131362744);
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
  
  @bpi
  public final void onSpeedUpdatedEvent(beu parambeu)
  {
    i = mSpeed;
    a(i);
  }
}

/* Location:
 * Qualified Name:     arv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */