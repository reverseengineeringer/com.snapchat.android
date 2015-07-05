package android.support.v4.accessibilityservice;

import android.accessibilityservice.AccessibilityServiceInfo;
import android.content.pm.ResolveInfo;

class AccessibilityServiceInfoCompat$AccessibilityServiceInfoIcsImpl
  extends AccessibilityServiceInfoCompat.AccessibilityServiceInfoStubImpl
{
  public final boolean getCanRetrieveWindowContent(AccessibilityServiceInfo paramAccessibilityServiceInfo)
  {
    return AccessibilityServiceInfoCompatIcs.getCanRetrieveWindowContent(paramAccessibilityServiceInfo);
  }
  
  public int getCapabilities(AccessibilityServiceInfo paramAccessibilityServiceInfo)
  {
    if (AccessibilityServiceInfoCompatIcs.getCanRetrieveWindowContent(paramAccessibilityServiceInfo)) {
      return 1;
    }
    return 0;
  }
  
  public final String getDescription(AccessibilityServiceInfo paramAccessibilityServiceInfo)
  {
    return AccessibilityServiceInfoCompatIcs.getDescription(paramAccessibilityServiceInfo);
  }
  
  public final String getId(AccessibilityServiceInfo paramAccessibilityServiceInfo)
  {
    return AccessibilityServiceInfoCompatIcs.getId(paramAccessibilityServiceInfo);
  }
  
  public final ResolveInfo getResolveInfo(AccessibilityServiceInfo paramAccessibilityServiceInfo)
  {
    return AccessibilityServiceInfoCompatIcs.getResolveInfo(paramAccessibilityServiceInfo);
  }
  
  public final String getSettingsActivityName(AccessibilityServiceInfo paramAccessibilityServiceInfo)
  {
    return AccessibilityServiceInfoCompatIcs.getSettingsActivityName(paramAccessibilityServiceInfo);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.accessibilityservice.AccessibilityServiceInfoCompat.AccessibilityServiceInfoIcsImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */