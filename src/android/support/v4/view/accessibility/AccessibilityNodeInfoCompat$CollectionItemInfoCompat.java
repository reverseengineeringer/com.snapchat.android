package android.support.v4.view.accessibility;

public final class AccessibilityNodeInfoCompat$CollectionItemInfoCompat
{
  final Object mInfo;
  
  private AccessibilityNodeInfoCompat$CollectionItemInfoCompat(Object paramObject)
  {
    mInfo = paramObject;
  }
  
  private int getColumnIndex()
  {
    return AccessibilityNodeInfoCompat.access$000().getCollectionItemColumnIndex(mInfo);
  }
  
  private int getColumnSpan()
  {
    return AccessibilityNodeInfoCompat.access$000().getCollectionItemColumnSpan(mInfo);
  }
  
  private int getRowIndex()
  {
    return AccessibilityNodeInfoCompat.access$000().getCollectionItemRowIndex(mInfo);
  }
  
  private int getRowSpan()
  {
    return AccessibilityNodeInfoCompat.access$000().getCollectionItemRowSpan(mInfo);
  }
  
  private boolean isHeading()
  {
    return AccessibilityNodeInfoCompat.access$000().isCollectionItemHeading(mInfo);
  }
  
  private boolean isSelected()
  {
    return AccessibilityNodeInfoCompat.access$000().isCollectionItemSelected(mInfo);
  }
  
  public static CollectionItemInfoCompat obtain$430787b1(int paramInt1, int paramInt2, int paramInt3, int paramInt4, boolean paramBoolean)
  {
    return new CollectionItemInfoCompat(AccessibilityNodeInfoCompat.access$000().obtainCollectionItemInfo$771e0323(paramInt1, paramInt2, paramInt3, paramInt4, paramBoolean));
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.CollectionItemInfoCompat
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */