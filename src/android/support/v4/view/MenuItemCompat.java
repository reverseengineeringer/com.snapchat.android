package android.support.v4.view;

import android.os.Build.VERSION;
import android.support.v4.internal.view.SupportMenuItem;
import android.view.MenuItem;
import android.view.View;

public final class MenuItemCompat
{
  static final MenuVersionImpl IMPL = new BaseMenuVersionImpl();
  public static final int SHOW_AS_ACTION_ALWAYS = 2;
  public static final int SHOW_AS_ACTION_COLLAPSE_ACTION_VIEW = 8;
  public static final int SHOW_AS_ACTION_IF_ROOM = 1;
  public static final int SHOW_AS_ACTION_NEVER = 0;
  public static final int SHOW_AS_ACTION_WITH_TEXT = 4;
  private static final String TAG = "MenuItemCompat";
  
  static
  {
    int i = Build.VERSION.SDK_INT;
    if (i >= 14)
    {
      IMPL = new IcsMenuVersionImpl();
      return;
    }
    if (i >= 11)
    {
      IMPL = new HoneycombMenuVersionImpl();
      return;
    }
  }
  
  private static boolean collapseActionView(MenuItem paramMenuItem)
  {
    if ((paramMenuItem instanceof SupportMenuItem)) {
      return ((SupportMenuItem)paramMenuItem).collapseActionView();
    }
    return IMPL.collapseActionView(paramMenuItem);
  }
  
  private static boolean expandActionView(MenuItem paramMenuItem)
  {
    if ((paramMenuItem instanceof SupportMenuItem)) {
      return ((SupportMenuItem)paramMenuItem).expandActionView();
    }
    return IMPL.expandActionView(paramMenuItem);
  }
  
  private static ActionProvider getActionProvider(MenuItem paramMenuItem)
  {
    if ((paramMenuItem instanceof SupportMenuItem)) {
      return ((SupportMenuItem)paramMenuItem).getSupportActionProvider();
    }
    return null;
  }
  
  private static View getActionView(MenuItem paramMenuItem)
  {
    if ((paramMenuItem instanceof SupportMenuItem)) {
      return ((SupportMenuItem)paramMenuItem).getActionView();
    }
    return IMPL.getActionView(paramMenuItem);
  }
  
  private static boolean isActionViewExpanded(MenuItem paramMenuItem)
  {
    if ((paramMenuItem instanceof SupportMenuItem)) {
      return ((SupportMenuItem)paramMenuItem).isActionViewExpanded();
    }
    return IMPL.isActionViewExpanded(paramMenuItem);
  }
  
  private static MenuItem setActionProvider$1d6ae0b4(MenuItem paramMenuItem)
  {
    Object localObject = paramMenuItem;
    if ((paramMenuItem instanceof SupportMenuItem)) {
      localObject = ((SupportMenuItem)paramMenuItem).setSupportActionProvider$456ad057();
    }
    return (MenuItem)localObject;
  }
  
  private static MenuItem setActionView(MenuItem paramMenuItem, int paramInt)
  {
    if ((paramMenuItem instanceof SupportMenuItem)) {
      return ((SupportMenuItem)paramMenuItem).setActionView(paramInt);
    }
    return IMPL.setActionView(paramMenuItem, paramInt);
  }
  
  private static MenuItem setActionView(MenuItem paramMenuItem, View paramView)
  {
    if ((paramMenuItem instanceof SupportMenuItem)) {
      return ((SupportMenuItem)paramMenuItem).setActionView(paramView);
    }
    return IMPL.setActionView(paramMenuItem, paramView);
  }
  
  private static MenuItem setOnActionExpandListener(MenuItem paramMenuItem, OnActionExpandListener paramOnActionExpandListener)
  {
    if ((paramMenuItem instanceof SupportMenuItem)) {
      return ((SupportMenuItem)paramMenuItem).setSupportOnActionExpandListener$20465665();
    }
    return IMPL.setOnActionExpandListener(paramMenuItem, paramOnActionExpandListener);
  }
  
  public static void setShowAsAction(MenuItem paramMenuItem, int paramInt)
  {
    if ((paramMenuItem instanceof SupportMenuItem))
    {
      ((SupportMenuItem)paramMenuItem).setShowAsAction(paramInt);
      return;
    }
    IMPL.setShowAsAction(paramMenuItem, paramInt);
  }
  
  static final class BaseMenuVersionImpl
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
  
  static class HoneycombMenuVersionImpl
    implements MenuItemCompat.MenuVersionImpl
  {
    public boolean collapseActionView(MenuItem paramMenuItem)
    {
      return false;
    }
    
    public boolean expandActionView(MenuItem paramMenuItem)
    {
      return false;
    }
    
    public final View getActionView(MenuItem paramMenuItem)
    {
      return MenuItemCompatHoneycomb.getActionView(paramMenuItem);
    }
    
    public boolean isActionViewExpanded(MenuItem paramMenuItem)
    {
      return false;
    }
    
    public final MenuItem setActionView(MenuItem paramMenuItem, int paramInt)
    {
      return MenuItemCompatHoneycomb.setActionView(paramMenuItem, paramInt);
    }
    
    public final MenuItem setActionView(MenuItem paramMenuItem, View paramView)
    {
      return MenuItemCompatHoneycomb.setActionView(paramMenuItem, paramView);
    }
    
    public MenuItem setOnActionExpandListener(MenuItem paramMenuItem, MenuItemCompat.OnActionExpandListener paramOnActionExpandListener)
    {
      return paramMenuItem;
    }
    
    public final void setShowAsAction(MenuItem paramMenuItem, int paramInt)
    {
      MenuItemCompatHoneycomb.setShowAsAction(paramMenuItem, paramInt);
    }
  }
  
  static final class IcsMenuVersionImpl
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
  
  static abstract interface MenuVersionImpl
  {
    public abstract boolean collapseActionView(MenuItem paramMenuItem);
    
    public abstract boolean expandActionView(MenuItem paramMenuItem);
    
    public abstract View getActionView(MenuItem paramMenuItem);
    
    public abstract boolean isActionViewExpanded(MenuItem paramMenuItem);
    
    public abstract MenuItem setActionView(MenuItem paramMenuItem, int paramInt);
    
    public abstract MenuItem setActionView(MenuItem paramMenuItem, View paramView);
    
    public abstract MenuItem setOnActionExpandListener(MenuItem paramMenuItem, MenuItemCompat.OnActionExpandListener paramOnActionExpandListener);
    
    public abstract void setShowAsAction(MenuItem paramMenuItem, int paramInt);
  }
  
  public static abstract interface OnActionExpandListener
  {
    public abstract boolean onMenuItemActionCollapse$1b88ab4c();
    
    public abstract boolean onMenuItemActionExpand$1b88ab4c();
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.MenuItemCompat
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */