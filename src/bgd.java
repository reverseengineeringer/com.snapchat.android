import android.view.View;
import android.widget.ListView;

public final class bgd
{
  public static boolean a(@chc ListView paramListView)
  {
    if (paramListView.getChildCount() == 0) {}
    do
    {
      return true;
      if (paramListView.getFirstVisiblePosition() != 0) {
        return false;
      }
      paramListView = paramListView.getChildAt(0);
    } while ((paramListView != null) && (paramListView.getTop() == 0));
    return false;
  }
  
  public static boolean b(@chc ListView paramListView)
  {
    if (paramListView.getChildCount() == 0) {}
    View localView;
    do
    {
      return true;
      if (paramListView.getLastVisiblePosition() != paramListView.getCount() - 1) {
        return false;
      }
      localView = paramListView.getChildAt(paramListView.getChildCount() - 1);
    } while ((localView != null) && (localView.getBottom() <= paramListView.getHeight()));
    return false;
  }
}

/* Location:
 * Qualified Name:     bgd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */