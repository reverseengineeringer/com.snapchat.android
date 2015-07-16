import android.view.MotionEvent;
import android.view.View;
import com.snapchat.android.ui.smartfilters.TurnOnFiltersView;
import com.snapchat.android.ui.swipefilters.FilterPageType;

public final class atd
  extends asm
{
  private final TurnOnFiltersView b;
  
  public atd(TurnOnFiltersView paramTurnOnFiltersView)
  {
    b = paramTurnOnFiltersView;
  }
  
  public final String a()
  {
    return "TurnOnSmartFilters";
  }
  
  public final boolean a(MotionEvent paramMotionEvent)
  {
    return true;
  }
  
  public final FilterPageType b()
  {
    return FilterPageType.TURN_ON_FILTERS_PAGE;
  }
  
  public final View d()
  {
    return b;
  }
}

/* Location:
 * Qualified Name:     atd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */