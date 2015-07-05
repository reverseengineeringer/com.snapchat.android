package android.support.v4.view;

import android.view.MenuItem;

final class MenuItemCompat$IcsMenuVersionImpl
  extends MenuItemCompat.HoneycombMenuVersionImpl
{
  public final boolean collapseActionView(MenuItem paramMenuItem)
  {
    return MenuItemCompatIcs.collapseActionView(paramMenuItem);
  }
  
  public final boolean expandActionView(MenuItem paramMenuItem)
  {
    return MenuItemCompatIcs.expandActionView(paramMenuItem);
  }
  
  public final boolean isActionViewExpanded(MenuItem paramMenuItem)
  {
    return MenuItemCompatIcs.isActionViewExpanded(paramMenuItem);
  }
  
  public final MenuItem setOnActionExpandListener(MenuItem paramMenuItem, final MenuItemCompat.OnActionExpandListener paramOnActionExpandListener)
  {
    if (paramOnActionExpandListener == null) {
      return MenuItemCompatIcs.setOnActionExpandListener(paramMenuItem, null);
    }
    MenuItemCompatIcs.setOnActionExpandListener(paramMenuItem, new MenuItemCompatIcs.SupportActionExpandProxy()
    {
      public final boolean onMenuItemActionCollapse$1b88ab4c()
      {
        return paramOnActionExpandListener.onMenuItemActionCollapse$1b88ab4c();
      }
      
      public final boolean onMenuItemActionExpand$1b88ab4c()
      {
        return paramOnActionExpandListener.onMenuItemActionExpand$1b88ab4c();
      }
    });
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.MenuItemCompat.IcsMenuVersionImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */