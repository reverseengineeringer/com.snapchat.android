package android.support.v4.view.accessibility;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.List;

final class AccessibilityNodeProviderCompat$AccessibilityNodeProviderKitKatImpl$1
  implements AccessibilityNodeProviderCompatKitKat.AccessibilityNodeInfoBridge
{
  AccessibilityNodeProviderCompat$AccessibilityNodeProviderKitKatImpl$1(AccessibilityNodeProviderCompat.AccessibilityNodeProviderKitKatImpl paramAccessibilityNodeProviderKitKatImpl, AccessibilityNodeProviderCompat paramAccessibilityNodeProviderCompat) {}
  
  public final Object createAccessibilityNodeInfo(int paramInt)
  {
    AccessibilityNodeInfoCompat localAccessibilityNodeInfoCompat = val$compat.createAccessibilityNodeInfo(paramInt);
    if (localAccessibilityNodeInfoCompat == null) {
      return null;
    }
    return mInfo;
  }
  
  public final List<Object> findAccessibilityNodeInfosByText$2393931d()
  {
    AccessibilityNodeProviderCompat.findAccessibilityNodeInfosByText$2393931d();
    new ArrayList();
    throw new NullPointerException();
  }
  
  public final Object findFocus$54cf32c4()
  {
    AccessibilityNodeProviderCompat.findFocus$f3a5639();
    return null;
  }
  
  public final boolean performAction(int paramInt1, int paramInt2, Bundle paramBundle)
  {
    return val$compat.performAction(paramInt1, paramInt2, paramBundle);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.accessibility.AccessibilityNodeProviderCompat.AccessibilityNodeProviderKitKatImpl.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */