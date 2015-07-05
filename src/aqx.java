import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.preference.PreferenceManager;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.widget.TextView;
import com.snapchat.android.analytics.framework.EasyMetric;
import com.snapchat.android.database.SharedPreferenceKey;
import com.squareup.otto.Bus;

public final class aqx
{
  final SharedPreferences a;
  public final apd b;
  public final Bus c;
  public View d;
  boolean e;
  final View.OnTouchListener f = new View.OnTouchListener()
  {
    public final boolean onTouch(View paramAnonymousView, MotionEvent paramAnonymousMotionEvent)
    {
      paramAnonymousView = aqx.this;
      if (!e) {}
      for (boolean bool = true;; bool = false)
      {
        e = bool;
        paramAnonymousView = a.edit();
        paramAnonymousView.putBoolean(SharedPreferenceKey.IS_TEMPERATURE_SCALE_IMPERIAL.getKey(), e);
        paramAnonymousView.apply();
        b();
        return true;
      }
    }
  };
  private final aht g;
  
  public aqx(Context paramContext, apd paramapd)
  {
    this(ban.a(), PreferenceManager.getDefaultSharedPreferences(paramContext), paramapd);
  }
  
  private aqx(Bus paramBus, SharedPreferences paramSharedPreferences, apd paramapd)
  {
    this(paramBus, paramSharedPreferences, paramapd, paramSharedPreferences.getBoolean(str, atx.a()), aht.a());
  }
  
  private aqx(Bus paramBus, SharedPreferences paramSharedPreferences, apd paramapd, boolean paramBoolean, aht paramaht)
  {
    c = paramBus;
    b = paramapd;
    a = paramSharedPreferences;
    e = paramBoolean;
    g = paramaht;
  }
  
  public final void a()
  {
    d = b.a(2130968781);
    d.setOnTouchListener(f);
    c.c(this);
    b();
  }
  
  final void b()
  {
    TextView localTextView1 = (TextView)d.findViewById(2131362849);
    TextView localTextView2 = (TextView)d.findViewById(2131362850);
    Object localObject = g.b();
    if (localObject == null)
    {
      localTextView1.setVisibility(8);
      localTextView2.setVisibility(8);
      new EasyMetric("Weather not loaded").d();
      return;
    }
    if (e) {
      localObject = mTempF;
    }
    for (int i = 2131493102;; i = 2131493101)
    {
      localTextView1.setText((CharSequence)localObject);
      localTextView1.setVisibility(0);
      localTextView2.setText(i);
      localTextView2.setVisibility(0);
      return;
      localObject = mTempC;
    }
  }
  
  @boh
  public final void onWeatherUpdatedEvent(bev parambev)
  {
    b();
  }
}

/* Location:
 * Qualified Name:     aqx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */