package android.support.v4.view;

import android.view.MenuItem;
import android.view.MenuItem.OnActionExpandListener;

final class MenuItemCompatIcs
{
  public static boolean collapseActionView(MenuItem paramMenuItem)
  {
    return paramMenuItem.collapseActionView();
  }
  
  public static boolean expandActionView(MenuItem paramMenuItem)
  {
    return paramMenuItem.expandActionView();
  }
  
  public static boolean isActionViewExpanded(MenuItem paramMenuItem)
  {
    return paramMenuItem.isActionViewExpanded();
  }
  
  public static MenuItem setOnActionExpandListener(MenuItem paramMenuItem, SupportActionExpandProxy paramSupportActionExpandProxy)
  {
    return paramMenuItem.setOnActionExpandListener(new OnActionExpandListenerWrapper(paramSupportActionExpandProxy));
  }
  
  static final class OnActionExpandListenerWrapper
    implements MenuItem.OnActionExpandListener
  {
    private MenuItemCompatIcs.SupportActionExpandProxy mWrapped;
    
    public OnActionExpandListenerWrapper(MenuItemCompatIcs.SupportActionExpandProxy paramSupportActionExpandProxy)
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
  
  static abstract interface SupportActionExpandProxy
  {
    public abstract boolean onMenuItemActionCollapse$1b88ab4c();
    
    public abstract boolean onMenuItemActionExpand$1b88ab4c();
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.MenuItemCompatIcs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */