package android.support.v4.view.accessibility;

public final class AccessibilityNodeInfoCompat$RangeInfoCompat
{
  public static final int RANGE_TYPE_FLOAT = 1;
  public static final int RANGE_TYPE_INT = 0;
  public static final int RANGE_TYPE_PERCENT = 2;
  private final Object mInfo;
  
  private AccessibilityNodeInfoCompat$RangeInfoCompat(Object paramObject)
  {
    mInfo = paramObject;
  }
  
  private float getCurrent()
  {
    return AccessibilityNodeInfoCompatKitKat.RangeInfo.getCurrent(mInfo);
  }
  
  private float getMax()
  {
    return AccessibilityNodeInfoCompatKitKat.RangeInfo.getMax(mInfo);
  }
  
  private float getMin()
  {
    return AccessibilityNodeInfoCompatKitKat.RangeInfo.getMin(mInfo);
  }
  
  private int getType()
  {
    return AccessibilityNodeInfoCompatKitKat.RangeInfo.getType(mInfo);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.RangeInfoCompat
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */