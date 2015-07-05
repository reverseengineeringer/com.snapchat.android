package android.support.v4.view;

import android.content.Context;
import android.view.View;

public abstract class ActionProvider
{
  private static final String TAG = "ActionProvider(support)";
  private final Context mContext;
  private SubUiVisibilityListener mSubUiVisibilityListener;
  private VisibilityListener mVisibilityListener;
  
  private ActionProvider(Context paramContext)
  {
    mContext = paramContext;
  }
  
  private Context getContext()
  {
    return mContext;
  }
  
  private static boolean hasSubMenu()
  {
    return false;
  }
  
  private static boolean isVisible()
  {
    return true;
  }
  
  private View onCreateActionView$4a6c20f2()
  {
    return onCreateActionView();
  }
  
  private static boolean onPerformDefaultAction()
  {
    return false;
  }
  
  private static void onPrepareSubMenu$698e60d1() {}
  
  private static boolean overridesItemVisibility()
  {
    return false;
  }
  
  private static void refreshVisibility() {}
  
  private void setSubUiVisibilityListener(SubUiVisibilityListener paramSubUiVisibilityListener)
  {
    mSubUiVisibilityListener = paramSubUiVisibilityListener;
  }
  
  private void setVisibilityListener(VisibilityListener paramVisibilityListener)
  {
    if ((mVisibilityListener != null) && (paramVisibilityListener != null)) {
      new StringBuilder("setVisibilityListener: Setting a new ActionProvider.VisibilityListener when one is already set. Are you reusing this ").append(getClass().getSimpleName()).append(" instance while it is still in use somewhere else?");
    }
    mVisibilityListener = paramVisibilityListener;
  }
  
  private static void subUiVisibilityChanged$1385ff() {}
  
  public abstract View onCreateActionView();
  
  public static abstract interface SubUiVisibilityListener
  {
    public abstract void onSubUiVisibilityChanged$1385ff();
  }
  
  public static abstract interface VisibilityListener
  {
    public abstract void onActionProviderVisibilityChanged$1385ff();
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.ActionProvider
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */