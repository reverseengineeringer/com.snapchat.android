import android.content.Context;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.util.TypedValue;
import android.view.View;
import com.snapchat.android.ui.listeners.SwipeableRecyclerViewItemTouchListener.d;

public final class vw
  implements SwipeableRecyclerViewItemTouchListener.d<vs>
{
  private static float a(vs paramvs)
  {
    paramvs = k;
    if (paramvs == null) {
      return 0.0F;
    }
    return paramvs.getTranslationX();
  }
  
  private static int b(vs paramvs)
  {
    paramvs = a.getContext();
    Resources.Theme localTheme = paramvs.getTheme();
    if (localTheme == null) {
      return 0;
    }
    TypedValue localTypedValue = new TypedValue();
    localTheme.resolveAttribute(16842829, localTypedValue, true);
    TypedValue.coerceToString(type, data);
    return (int)localTypedValue.getDimension(paramvs.getResources().getDisplayMetrics());
  }
}

/* Location:
 * Qualified Name:     vw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */