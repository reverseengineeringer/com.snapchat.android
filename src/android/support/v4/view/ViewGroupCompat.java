package android.support.v4.view;

import android.os.Build.VERSION;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;

public final class ViewGroupCompat
{
  static final ViewGroupCompatImpl IMPL = new ViewGroupCompatStubImpl();
  public static final int LAYOUT_MODE_CLIP_BOUNDS = 0;
  public static final int LAYOUT_MODE_OPTICAL_BOUNDS = 1;
  
  static
  {
    int i = Build.VERSION.SDK_INT;
    if (i >= 21)
    {
      IMPL = new ViewGroupCompatApi21Impl();
      return;
    }
    if (i >= 18)
    {
      IMPL = new ViewGroupCompatJellybeanMR2Impl();
      return;
    }
    if (i >= 14)
    {
      IMPL = new ViewGroupCompatIcsImpl();
      return;
    }
    if (i >= 11)
    {
      IMPL = new ViewGroupCompatHCImpl();
      return;
    }
  }
  
  private static int getLayoutMode(ViewGroup paramViewGroup)
  {
    return IMPL.getLayoutMode(paramViewGroup);
  }
  
  private static boolean isTransitionGroup(ViewGroup paramViewGroup)
  {
    return IMPL.isTransitionGroup(paramViewGroup);
  }
  
  private static boolean onRequestSendAccessibilityEvent(ViewGroup paramViewGroup, View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    return IMPL.onRequestSendAccessibilityEvent(paramViewGroup, paramView, paramAccessibilityEvent);
  }
  
  private static void setLayoutMode(ViewGroup paramViewGroup, int paramInt)
  {
    IMPL.setLayoutMode(paramViewGroup, paramInt);
  }
  
  public static void setMotionEventSplittingEnabled$4d3af60(ViewGroup paramViewGroup)
  {
    IMPL.setMotionEventSplittingEnabled$4d3af60(paramViewGroup);
  }
  
  private static void setTransitionGroup(ViewGroup paramViewGroup, boolean paramBoolean)
  {
    IMPL.setTransitionGroup(paramViewGroup, paramBoolean);
  }
  
  static final class ViewGroupCompatApi21Impl
    extends ViewGroupCompat.ViewGroupCompatJellybeanMR2Impl
  {
    public final boolean isTransitionGroup(ViewGroup paramViewGroup)
    {
      return ViewGroupCompatApi21.isTransitionGroup(paramViewGroup);
    }
    
    public final void setTransitionGroup(ViewGroup paramViewGroup, boolean paramBoolean)
    {
      ViewGroupCompatApi21.setTransitionGroup(paramViewGroup, paramBoolean);
    }
  }
  
  static class ViewGroupCompatHCImpl
    extends ViewGroupCompat.ViewGroupCompatStubImpl
  {
    public final void setMotionEventSplittingEnabled$4d3af60(ViewGroup paramViewGroup)
    {
      ViewGroupCompatHC.setMotionEventSplittingEnabled$4d3af60(paramViewGroup);
    }
  }
  
  static class ViewGroupCompatIcsImpl
    extends ViewGroupCompat.ViewGroupCompatHCImpl
  {
    public final boolean onRequestSendAccessibilityEvent(ViewGroup paramViewGroup, View paramView, AccessibilityEvent paramAccessibilityEvent)
    {
      return ViewGroupCompatIcs.onRequestSendAccessibilityEvent(paramViewGroup, paramView, paramAccessibilityEvent);
    }
  }
  
  static abstract interface ViewGroupCompatImpl
  {
    public abstract int getLayoutMode(ViewGroup paramViewGroup);
    
    public abstract boolean isTransitionGroup(ViewGroup paramViewGroup);
    
    public abstract boolean onRequestSendAccessibilityEvent(ViewGroup paramViewGroup, View paramView, AccessibilityEvent paramAccessibilityEvent);
    
    public abstract void setLayoutMode(ViewGroup paramViewGroup, int paramInt);
    
    public abstract void setMotionEventSplittingEnabled$4d3af60(ViewGroup paramViewGroup);
    
    public abstract void setTransitionGroup(ViewGroup paramViewGroup, boolean paramBoolean);
  }
  
  static class ViewGroupCompatJellybeanMR2Impl
    extends ViewGroupCompat.ViewGroupCompatIcsImpl
  {
    public final int getLayoutMode(ViewGroup paramViewGroup)
    {
      return ViewGroupCompatJellybeanMR2.getLayoutMode(paramViewGroup);
    }
    
    public final void setLayoutMode(ViewGroup paramViewGroup, int paramInt)
    {
      ViewGroupCompatJellybeanMR2.setLayoutMode(paramViewGroup, paramInt);
    }
  }
  
  static class ViewGroupCompatStubImpl
    implements ViewGroupCompat.ViewGroupCompatImpl
  {
    public int getLayoutMode(ViewGroup paramViewGroup)
    {
      return 0;
    }
    
    public boolean isTransitionGroup(ViewGroup paramViewGroup)
    {
      return false;
    }
    
    public boolean onRequestSendAccessibilityEvent(ViewGroup paramViewGroup, View paramView, AccessibilityEvent paramAccessibilityEvent)
    {
      return true;
    }
    
    public void setLayoutMode(ViewGroup paramViewGroup, int paramInt) {}
    
    public void setMotionEventSplittingEnabled$4d3af60(ViewGroup paramViewGroup) {}
    
    public void setTransitionGroup(ViewGroup paramViewGroup, boolean paramBoolean) {}
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.ViewGroupCompat
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */