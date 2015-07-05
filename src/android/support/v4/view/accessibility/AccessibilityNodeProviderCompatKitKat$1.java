package android.support.v4.view.accessibility;

import android.os.Bundle;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeProvider;
import java.util.List;

final class AccessibilityNodeProviderCompatKitKat$1
  extends AccessibilityNodeProvider
{
  AccessibilityNodeProviderCompatKitKat$1(AccessibilityNodeProviderCompatKitKat.AccessibilityNodeInfoBridge paramAccessibilityNodeInfoBridge) {}
  
  public final AccessibilityNodeInfo createAccessibilityNodeInfo(int paramInt)
  {
    return (AccessibilityNodeInfo)val$bridge.createAccessibilityNodeInfo(paramInt);
  }
  
  public final List<AccessibilityNodeInfo> findAccessibilityNodeInfosByText(String paramString, int paramInt)
  {
    return val$bridge.findAccessibilityNodeInfosByText$2393931d();
  }
  
  public final AccessibilityNodeInfo findFocus(int paramInt)
  {
    val$bridge.findFocus$54cf32c4();
    return null;
  }
  
  public final boolean performAction(int paramInt1, int paramInt2, Bundle paramBundle)
  {
    return val$bridge.performAction(paramInt1, paramInt2, paramBundle);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.accessibility.AccessibilityNodeProviderCompatKitKat.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */