import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import com.snapchat.android.database.SharedPreferenceKey;

final class arv$1
  implements View.OnTouchListener
{
  arv$1(arv paramarv) {}
  
  public final boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    paramView = a;
    if (!arv.a(a)) {}
    for (boolean bool = true;; bool = false)
    {
      arv.a(paramView, bool);
      paramView = arv.b(a).edit();
      paramView.putBoolean(SharedPreferenceKey.SPEED_USE_MPH.getKey(), arv.a(a));
      paramView.apply();
      arv.a(a, arv.c(a));
      return true;
    }
  }
}

/* Location:
 * Qualified Name:     arv.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */