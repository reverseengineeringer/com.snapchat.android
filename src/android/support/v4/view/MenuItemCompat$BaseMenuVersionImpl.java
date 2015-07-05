package android.support.v4.view;

import android.view.MenuItem;
import android.view.View;

final class MenuItemCompat$BaseMenuVersionImpl
  implements MenuItemCompat.MenuVersionImpl
{
  public final boolean collapseActionView(MenuItem paramMenuItem)
  {
    return false;
  }
  
  public final boolean expandActionView(MenuItem paramMenuItem)
  {
    return false;
  }
  
  public final View getActionView(MenuItem paramMenuItem)
  {
    return null;
  }
  
  public final boolean isActionViewExpanded(MenuItem paramMenuItem)
  {
    return false;
  }
  
  public final MenuItem setActionView(MenuItem paramMenuItem, int paramInt)
  {
    return paramMenuItem;
  }
  
  public final MenuItem setActionView(MenuItem paramMenuItem, View paramView)
  {
    return paramMenuItem;
  }
  
  public final MenuItem setOnActionExpandListener(MenuItem paramMenuItem, MenuItemCompat.OnActionExpandListener paramOnActionExpandListener)
  {
    return paramMenuItem;
  }
  
  public final void setShowAsAction(MenuItem paramMenuItem, int paramInt) {}
}

/* Location:
 * Qualified Name:     android.support.v4.view.MenuItemCompat.BaseMenuVersionImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */