import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import com.snapchat.android.Timber;
import com.snapchat.android.database.SharedPreferenceKey;

final class aqw$1
  implements View.OnTouchListener
{
  aqw$1(aqw paramaqw) {}
  
  public final boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    paramView = a;
    boolean bool;
    if (!aqw.a(a))
    {
      bool = true;
      aqw.a(paramView, bool);
      paramView = aqw.b(a).edit();
      paramView.putBoolean(SharedPreferenceKey.SPEED_USE_MPH.getKey(), aqw.a(a));
      paramView.apply();
      aqw.a(a, aqw.c(a));
      if (!aqw.a(a)) {
        break label121;
      }
    }
    label121:
    for (paramView = "MPH";; paramView = "KPH")
    {
      Timber.c("SpeedometerView", "User switched unit preference to " + paramView, new Object[0]);
      return true;
      bool = false;
      break;
    }
  }
}

/* Location:
 * Qualified Name:     aqw.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */