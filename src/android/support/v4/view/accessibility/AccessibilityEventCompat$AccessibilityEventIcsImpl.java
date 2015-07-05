package android.support.v4.view.accessibility;

import android.view.accessibility.AccessibilityEvent;

final class AccessibilityEventCompat$AccessibilityEventIcsImpl
  extends AccessibilityEventCompat.AccessibilityEventStubImpl
{
  public final void appendRecord(AccessibilityEvent paramAccessibilityEvent, Object paramObject)
  {
    AccessibilityEventCompatIcs.appendRecord(paramAccessibilityEvent, paramObject);
  }
  
  public final Object getRecord(AccessibilityEvent paramAccessibilityEvent, int paramInt)
  {
    return AccessibilityEventCompatIcs.getRecord(paramAccessibilityEvent, paramInt);
  }
  
  public final int getRecordCount(AccessibilityEvent paramAccessibilityEvent)
  {
    return AccessibilityEventCompatIcs.getRecordCount(paramAccessibilityEvent);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.accessibility.AccessibilityEventCompat.AccessibilityEventIcsImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */