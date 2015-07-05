package android.support.v4.widget;

import android.view.View;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

final class SlidingPaneLayout$SlidingPanelLayoutImplJB
  extends SlidingPaneLayout.SlidingPanelLayoutImplBase
{
  private Method mGetDisplayList;
  private Field mRecreateDisplayList;
  
  SlidingPaneLayout$SlidingPanelLayoutImplJB()
  {
    try
    {
      mGetDisplayList = View.class.getDeclaredMethod("getDisplayList", null);
      try
      {
        mRecreateDisplayList = View.class.getDeclaredField("mRecreateDisplayList");
        mRecreateDisplayList.setAccessible(true);
        return;
      }
      catch (NoSuchFieldException localNoSuchFieldException) {}
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      for (;;) {}
    }
  }
  
  public final void invalidateChildRegion(SlidingPaneLayout paramSlidingPaneLayout, View paramView)
  {
    if ((mGetDisplayList != null) && (mRecreateDisplayList != null)) {}
    try
    {
      mRecreateDisplayList.setBoolean(paramView, true);
      mGetDisplayList.invoke(paramView, null);
      super.invalidateChildRegion(paramSlidingPaneLayout, paramView);
      return;
      paramView.invalidate();
      return;
    }
    catch (Exception localException)
    {
      for (;;) {}
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v4.widget.SlidingPaneLayout.SlidingPanelLayoutImplJB
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */