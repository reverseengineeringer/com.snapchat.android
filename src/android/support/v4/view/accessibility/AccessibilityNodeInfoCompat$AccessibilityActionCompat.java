package android.support.v4.view.accessibility;

public final class AccessibilityNodeInfoCompat$AccessibilityActionCompat
{
  private final Object mAction;
  
  private AccessibilityNodeInfoCompat$AccessibilityActionCompat(Object paramObject)
  {
    mAction = paramObject;
  }
  
  private int getId()
  {
    return AccessibilityNodeInfoCompatApi21.AccessibilityAction.getId(mAction);
  }
  
  private CharSequence getLabel()
  {
    return AccessibilityNodeInfoCompatApi21.AccessibilityAction.getLabel(mAction);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.AccessibilityActionCompat
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */