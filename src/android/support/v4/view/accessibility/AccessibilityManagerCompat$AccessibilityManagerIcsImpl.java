package android.support.v4.view.accessibility;

import android.accessibilityservice.AccessibilityServiceInfo;
import android.view.accessibility.AccessibilityManager;
import java.util.List;

final class AccessibilityManagerCompat$AccessibilityManagerIcsImpl
  extends AccessibilityManagerCompat.AccessibilityManagerStubImpl
{
  public final boolean addAccessibilityStateChangeListener(AccessibilityManager paramAccessibilityManager, AccessibilityManagerCompat.AccessibilityStateChangeListenerCompat paramAccessibilityStateChangeListenerCompat)
  {
    return AccessibilityManagerCompatIcs.addAccessibilityStateChangeListener(paramAccessibilityManager, mListener);
  }
  
  public final List<AccessibilityServiceInfo> getEnabledAccessibilityServiceList(AccessibilityManager paramAccessibilityManager, int paramInt)
  {
    return AccessibilityManagerCompatIcs.getEnabledAccessibilityServiceList(paramAccessibilityManager, paramInt);
  }
  
  public final List<AccessibilityServiceInfo> getInstalledAccessibilityServiceList(AccessibilityManager paramAccessibilityManager)
  {
    return AccessibilityManagerCompatIcs.getInstalledAccessibilityServiceList(paramAccessibilityManager);
  }
  
  public final boolean isTouchExplorationEnabled(AccessibilityManager paramAccessibilityManager)
  {
    return AccessibilityManagerCompatIcs.isTouchExplorationEnabled(paramAccessibilityManager);
  }
  
  public final Object newAccessiblityStateChangeListener(final AccessibilityManagerCompat.AccessibilityStateChangeListenerCompat paramAccessibilityStateChangeListenerCompat)
  {
    AccessibilityManagerCompatIcs.newAccessibilityStateChangeListener(new AccessibilityManagerCompatIcs.AccessibilityStateChangeListenerBridge()
    {
      public final void onAccessibilityStateChanged$1385ff() {}
    });
  }
  
  public final boolean removeAccessibilityStateChangeListener(AccessibilityManager paramAccessibilityManager, AccessibilityManagerCompat.AccessibilityStateChangeListenerCompat paramAccessibilityStateChangeListenerCompat)
  {
    return AccessibilityManagerCompatIcs.removeAccessibilityStateChangeListener(paramAccessibilityManager, mListener);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.accessibility.AccessibilityManagerCompat.AccessibilityManagerIcsImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */