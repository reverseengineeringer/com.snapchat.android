package android.support.v4.view.accessibility;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.List;

final class AccessibilityNodeProviderCompat$AccessibilityNodeProviderKitKatImpl
  extends AccessibilityNodeProviderCompat.AccessibilityNodeProviderStubImpl
{
  public final Object newAccessibilityNodeProviderBridge(final AccessibilityNodeProviderCompat paramAccessibilityNodeProviderCompat)
  {
    AccessibilityNodeProviderCompatKitKat.newAccessibilityNodeProviderBridge(new AccessibilityNodeProviderCompatKitKat.AccessibilityNodeInfoBridge()
    {
      public final Object createAccessibilityNodeInfo(int paramAnonymousInt)
      {
        AccessibilityNodeInfoCompat localAccessibilityNodeInfoCompat = paramAccessibilityNodeProviderCompat.createAccessibilityNodeInfo(paramAnonymousInt);
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
      
      public final boolean performAction(int paramAnonymousInt1, int paramAnonymousInt2, Bundle paramAnonymousBundle)
      {
        return paramAccessibilityNodeProviderCompat.performAction(paramAnonymousInt1, paramAnonymousInt2, paramAnonymousBundle);
      }
    });
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.accessibility.AccessibilityNodeProviderCompat.AccessibilityNodeProviderKitKatImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */