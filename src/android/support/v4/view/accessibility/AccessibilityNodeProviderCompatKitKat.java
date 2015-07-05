package android.support.v4.view.accessibility;

import android.os.Bundle;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeProvider;
import java.util.List;

final class AccessibilityNodeProviderCompatKitKat
{
  public static Object newAccessibilityNodeProviderBridge(AccessibilityNodeInfoBridge paramAccessibilityNodeInfoBridge)
  {
    new AccessibilityNodeProvider()
    {
      public final AccessibilityNodeInfo createAccessibilityNodeInfo(int paramAnonymousInt)
      {
        return (AccessibilityNodeInfo)val$bridge.createAccessibilityNodeInfo(paramAnonymousInt);
      }
      
      public final List<AccessibilityNodeInfo> findAccessibilityNodeInfosByText(String paramAnonymousString, int paramAnonymousInt)
      {
        return val$bridge.findAccessibilityNodeInfosByText$2393931d();
      }
      
      public final AccessibilityNodeInfo findFocus(int paramAnonymousInt)
      {
        val$bridge.findFocus$54cf32c4();
        return null;
      }
      
      public final boolean performAction(int paramAnonymousInt1, int paramAnonymousInt2, Bundle paramAnonymousBundle)
      {
        return val$bridge.performAction(paramAnonymousInt1, paramAnonymousInt2, paramAnonymousBundle);
      }
    };
  }
  
  static abstract interface AccessibilityNodeInfoBridge
  {
    public abstract Object createAccessibilityNodeInfo(int paramInt);
    
    public abstract List<Object> findAccessibilityNodeInfosByText$2393931d();
    
    public abstract Object findFocus$54cf32c4();
    
    public abstract boolean performAction(int paramInt1, int paramInt2, Bundle paramBundle);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.accessibility.AccessibilityNodeProviderCompatKitKat
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */