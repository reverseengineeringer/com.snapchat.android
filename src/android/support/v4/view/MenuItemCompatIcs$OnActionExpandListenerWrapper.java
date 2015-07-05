package android.support.v4.view;

import android.view.MenuItem;
import android.view.MenuItem.OnActionExpandListener;

final class MenuItemCompatIcs$OnActionExpandListenerWrapper
  implements MenuItem.OnActionExpandListener
{
  private MenuItemCompatIcs.SupportActionExpandProxy mWrapped;
  
  public MenuItemCompatIcs$OnActionExpandListenerWrapper(MenuItemCompatIcs.SupportActionExpandProxy paramSupportActionExpandProxy)
  {
    mWrapped = paramSupportActionExpandProxy;
  }
  
  public final boolean onMenuItemActionCollapse(MenuItem paramMenuItem)
  {
    return mWrapped.onMenuItemActionCollapse$1b88ab4c();
  }
  
  public final boolean onMenuItemActionExpand(MenuItem paramMenuItem)
  {
    return mWrapped.onMenuItemActionExpand$1b88ab4c();
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.MenuItemCompatIcs.OnActionExpandListenerWrapper
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */