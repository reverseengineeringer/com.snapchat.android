package android.support.v4.view.accessibility;

import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeInfo.AccessibilityAction;
import android.view.accessibility.AccessibilityNodeInfo.CollectionInfo;
import android.view.accessibility.AccessibilityNodeInfo.CollectionItemInfo;
import java.util.List;

final class AccessibilityNodeInfoCompatApi21
{
  static void addAction(Object paramObject, int paramInt, CharSequence paramCharSequence)
  {
    paramCharSequence = new AccessibilityNodeInfo.AccessibilityAction(paramInt, paramCharSequence);
    ((AccessibilityNodeInfo)paramObject).addAction(paramCharSequence);
  }
  
  static List<Object> getActionList(Object paramObject)
  {
    return (List)((AccessibilityNodeInfo)paramObject).getActionList();
  }
  
  public static Object obtainCollectionInfo(int paramInt1, int paramInt2, boolean paramBoolean, int paramInt3)
  {
    return AccessibilityNodeInfo.CollectionInfo.obtain(paramInt1, paramInt2, paramBoolean, paramInt3);
  }
  
  public static Object obtainCollectionItemInfo$771e0323(int paramInt1, int paramInt2, int paramInt3, int paramInt4, boolean paramBoolean)
  {
    return AccessibilityNodeInfo.CollectionItemInfo.obtain(paramInt1, paramInt2, paramInt3, paramInt4, paramBoolean, false);
  }
  
  static final class AccessibilityAction
  {
    static int getId(Object paramObject)
    {
      return ((AccessibilityNodeInfo.AccessibilityAction)paramObject).getId();
    }
    
    static CharSequence getLabel(Object paramObject)
    {
      return ((AccessibilityNodeInfo.AccessibilityAction)paramObject).getLabel();
    }
  }
  
  static final class CollectionItemInfo
  {
    public static boolean isSelected(Object paramObject)
    {
      return ((AccessibilityNodeInfo.CollectionItemInfo)paramObject).isSelected();
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.accessibility.AccessibilityNodeInfoCompatApi21
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */