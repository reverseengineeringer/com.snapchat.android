import android.content.Context;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.util.TypedValue;
import android.view.View;
import com.snapchat.android.ui.listeners.SwipeableRecyclerViewItemTouchListener.d;

public final class va
  implements SwipeableRecyclerViewItemTouchListener.d<uw>
{
  private static float a(uw paramuw)
  {
    paramuw = k;
    if (paramuw == null) {
      return 0.0F;
    }
    return paramuw.getTranslationX();
  }
  
  private static int b(uw paramuw)
  {
    paramuw = a.getContext();
    Resources.Theme localTheme = paramuw.getTheme();
    if (localTheme == null) {
      return 0;
    }
    TypedValue localTypedValue = new TypedValue();
    localTheme.resolveAttribute(16842829, localTypedValue, true);
    TypedValue.coerceToString(type, data);
    return (int)localTypedValue.getDimension(paramuw.getResources().getDisplayMetrics());
  }
}

/* Location:
 * Qualified Name:     va
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */