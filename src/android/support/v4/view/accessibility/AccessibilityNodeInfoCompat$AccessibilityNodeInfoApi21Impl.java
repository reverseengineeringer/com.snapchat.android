package android.support.v4.view.accessibility;

import java.util.List;

final class AccessibilityNodeInfoCompat$AccessibilityNodeInfoApi21Impl
  extends AccessibilityNodeInfoCompat.AccessibilityNodeInfoKitKatImpl
{
  public final void addAction(Object paramObject, int paramInt, CharSequence paramCharSequence)
  {
    AccessibilityNodeInfoCompatApi21.addAction(paramObject, paramInt, paramCharSequence);
  }
  
  public final List<Object> getActionList(Object paramObject)
  {
    return AccessibilityNodeInfoCompatApi21.getActionList(paramObject);
  }
  
  public final boolean isCollectionItemSelected(Object paramObject)
  {
    return AccessibilityNodeInfoCompatApi21.CollectionItemInfo.isSelected(paramObject);
  }
  
  public final Object obtainCollectionInfo(int paramInt1, int paramInt2, boolean paramBoolean, int paramInt3)
  {
    return AccessibilityNodeInfoCompatApi21.obtainCollectionInfo(paramInt1, paramInt2, paramBoolean, paramInt3);
  }
  
  public final Object obtainCollectionItemInfo$771e0323(int paramInt1, int paramInt2, int paramInt3, int paramInt4, boolean paramBoolean)
  {
    return AccessibilityNodeInfoCompatApi21.obtainCollectionItemInfo$771e0323(paramInt1, paramInt2, paramInt3, paramInt4, paramBoolean);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.AccessibilityNodeInfoApi21Impl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */