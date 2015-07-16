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

public final class arw
{
  final SharedPreferences a;
  public final apz b;
  public final Bus c;
  public View d;
  boolean e;
  final View.OnTouchListener f = new View.OnTouchListener()
  {
    public final boolean onTouch(View paramAnonymousView, MotionEvent paramAnonymousMotionEvent)
    {
      paramAnonymousView = arw.this;
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
  private final aip g;
  
  public arw(Context paramContext, apz paramapz)
  {
    this(bbo.a(), PreferenceManager.getDefaultSharedPreferences(paramContext), paramapz);
  }
  
  private arw(Bus paramBus, SharedPreferences paramSharedPreferences, apz paramapz)
  {
    this(paramBus, paramSharedPreferences, paramapz, paramSharedPreferences.getBoolean(SharedPreferenceKey.IS_TEMPERATURE_SCALE_IMPERIAL.getKey(), auv.a()), aip.a());
  }
  
  private arw(Bus paramBus, SharedPreferences paramSharedPreferences, apz paramapz, boolean paramBoolean, aip paramaip)
  {
    c = paramBus;
    b = paramapz;
    a = paramSharedPreferences;
    e = paramBoolean;
    g = paramaip;
  }
  
  public final void a()
  {
    d = b.a(2130968783);
    d.setOnTouchListener(f);
    c.c(this);
    b();
  }
  
  final void b()
  {
    TextView localTextView1 = (TextView)d.findViewById(2131362842);
    TextView localTextView2 = (TextView)d.findViewById(2131362843);
    Object localObject = g.b();
    if (localObject == null)
    {
      localTextView1.setVisibility(8);
      localTextView2.setVisibility(8);
      new EasyMetric("Weather not loaded").e();
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
  
  @bpi
  public final void onWeatherUpdatedEvent(bfu parambfu)
  {
    b();
  }
}

/* Location:
 * Qualified Name:     arw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */