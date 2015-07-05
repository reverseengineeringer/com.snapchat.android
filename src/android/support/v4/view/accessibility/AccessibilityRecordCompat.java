package android.support.v4.view.accessibility;

import android.os.Build.VERSION;
import android.os.Parcelable;
import android.view.View;
import java.util.Collections;
import java.util.List;

public final class AccessibilityRecordCompat
{
  public static final AccessibilityRecordImpl IMPL = new AccessibilityRecordStubImpl();
  public final Object mRecord;
  
  static
  {
    if (Build.VERSION.SDK_INT >= 16)
    {
      IMPL = new AccessibilityRecordJellyBeanImpl();
      return;
    }
    if (Build.VERSION.SDK_INT >= 15)
    {
      IMPL = new AccessibilityRecordIcsMr1Impl();
      return;
    }
    if (Build.VERSION.SDK_INT >= 14)
    {
      IMPL = new AccessibilityRecordIcsImpl();
      return;
    }
  }
  
  public AccessibilityRecordCompat(Object paramObject)
  {
    mRecord = paramObject;
  }
  
  private int getAddedCount()
  {
    return IMPL.getAddedCount(mRecord);
  }
  
  private CharSequence getBeforeText()
  {
    return IMPL.getBeforeText(mRecord);
  }
  
  private CharSequence getClassName()
  {
    return IMPL.getClassName(mRecord);
  }
  
  private CharSequence getContentDescription()
  {
    return IMPL.getContentDescription(mRecord);
  }
  
  private int getCurrentItemIndex()
  {
    return IMPL.getCurrentItemIndex(mRecord);
  }
  
  private int getFromIndex()
  {
    return IMPL.getFromIndex(mRecord);
  }
  
  private Object getImpl()
  {
    return mRecord;
  }
  
  private int getItemCount()
  {
    return IMPL.getItemCount(mRecord);
  }
  
  private int getMaxScrollX()
  {
    return IMPL.getMaxScrollX(mRecord);
  }
  
  private int getMaxScrollY()
  {
    return IMPL.getMaxScrollY(mRecord);
  }
  
  private Parcelable getParcelableData()
  {
    return IMPL.getParcelableData(mRecord);
  }
  
  private int getRemovedCount()
  {
    return IMPL.getRemovedCount(mRecord);
  }
  
  private int getScrollX()
  {
    return IMPL.getScrollX(mRecord);
  }
  
  private int getScrollY()
  {
    return IMPL.getScrollY(mRecord);
  }
  
  private AccessibilityNodeInfoCompat getSource()
  {
    return IMPL.getSource(mRecord);
  }
  
  private List<CharSequence> getText()
  {
    return IMPL.getText(mRecord);
  }
  
  private int getToIndex()
  {
    return IMPL.getToIndex(mRecord);
  }
  
  private int getWindowId()
  {
    return IMPL.getWindowId(mRecord);
  }
  
  private boolean isChecked()
  {
    return IMPL.isChecked(mRecord);
  }
  
  private boolean isEnabled()
  {
    return IMPL.isEnabled(mRecord);
  }
  
  private boolean isFullScreen()
  {
    return IMPL.isFullScreen(mRecord);
  }
  
  private boolean isPassword()
  {
    return IMPL.isPassword(mRecord);
  }
  
  private boolean isScrollable()
  {
    return IMPL.isScrollable(mRecord);
  }
  
  public static AccessibilityRecordCompat obtain()
  {
    return new AccessibilityRecordCompat(IMPL.obtain());
  }
  
  private static AccessibilityRecordCompat obtain(AccessibilityRecordCompat paramAccessibilityRecordCompat)
  {
    return new AccessibilityRecordCompat(IMPL.obtain(mRecord));
  }
  
  private void recycle()
  {
    IMPL.recycle(mRecord);
  }
  
  private void setAddedCount(int paramInt)
  {
    IMPL.setAddedCount(mRecord, paramInt);
  }
  
  private void setBeforeText(CharSequence paramCharSequence)
  {
    IMPL.setBeforeText(mRecord, paramCharSequence);
  }
  
  private void setChecked(boolean paramBoolean)
  {
    IMPL.setChecked(mRecord, paramBoolean);
  }
  
  private void setClassName(CharSequence paramCharSequence)
  {
    IMPL.setClassName(mRecord, paramCharSequence);
  }
  
  private void setContentDescription(CharSequence paramCharSequence)
  {
    IMPL.setContentDescription(mRecord, paramCharSequence);
  }
  
  private void setCurrentItemIndex(int paramInt)
  {
    IMPL.setCurrentItemIndex(mRecord, paramInt);
  }
  
  private void setEnabled(boolean paramBoolean)
  {
    IMPL.setEnabled(mRecord, paramBoolean);
  }
  
  private void setFullScreen(boolean paramBoolean)
  {
    IMPL.setFullScreen(mRecord, paramBoolean);
  }
  
  private void setMaxScrollX(int paramInt)
  {
    IMPL.setMaxScrollX(mRecord, paramInt);
  }
  
  private void setMaxScrollY(int paramInt)
  {
    IMPL.setMaxScrollY(mRecord, paramInt);
  }
  
  private void setParcelableData(Parcelable paramParcelable)
  {
    IMPL.setParcelableData(mRecord, paramParcelable);
  }
  
  private void setPassword(boolean paramBoolean)
  {
    IMPL.setPassword(mRecord, paramBoolean);
  }
  
  private void setRemovedCount(int paramInt)
  {
    IMPL.setRemovedCount(mRecord, paramInt);
  }
  
  private void setScrollX(int paramInt)
  {
    IMPL.setScrollX(mRecord, paramInt);
  }
  
  private void setScrollY(int paramInt)
  {
    IMPL.setScrollY(mRecord, paramInt);
  }
  
  private void setSource(View paramView)
  {
    IMPL.setSource(mRecord, paramView);
  }
  
  private void setSource(View paramView, int paramInt)
  {
    IMPL.setSource(mRecord, paramView, paramInt);
  }
  
  public final boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      do
      {
        return true;
        if (paramObject == null) {
          return false;
        }
        if (getClass() != paramObject.getClass()) {
          return false;
        }
        paramObject = (AccessibilityRecordCompat)paramObject;
        if (mRecord != null) {
          break;
        }
      } while (mRecord == null);
      return false;
    } while (mRecord.equals(mRecord));
    return false;
  }
  
  public final int hashCode()
  {
    if (mRecord == null) {
      return 0;
    }
    return mRecord.hashCode();
  }
  
  public final void setFromIndex(int paramInt)
  {
    IMPL.setFromIndex(mRecord, paramInt);
  }
  
  public final void setItemCount(int paramInt)
  {
    IMPL.setItemCount(mRecord, paramInt);
  }
  
  public final void setScrollable(boolean paramBoolean)
  {
    IMPL.setScrollable(mRecord, paramBoolean);
  }
  
  public final void setToIndex(int paramInt)
  {
    IMPL.setToIndex(mRecord, paramInt);
  }
  
  static class AccessibilityRecordIcsImpl
    extends AccessibilityRecordCompat.AccessibilityRecordStubImpl
  {
    public final int getAddedCount(Object paramObject)
    {
      return AccessibilityRecordCompatIcs.getAddedCount(paramObject);
    }
    
    public final CharSequence getBeforeText(Object paramObject)
    {
      return AccessibilityRecordCompatIcs.getBeforeText(paramObject);
    }
    
    public final CharSequence getClassName(Object paramObject)
    {
      return AccessibilityRecordCompatIcs.getClassName(paramObject);
    }
    
    public final CharSequence getContentDescription(Object paramObject)
    {
      return AccessibilityRecordCompatIcs.getContentDescription(paramObject);
    }
    
    public final int getCurrentItemIndex(Object paramObject)
    {
      return AccessibilityRecordCompatIcs.getCurrentItemIndex(paramObject);
    }
    
    public final int getFromIndex(Object paramObject)
    {
      return AccessibilityRecordCompatIcs.getFromIndex(paramObject);
    }
    
    public final int getItemCount(Object paramObject)
    {
      return AccessibilityRecordCompatIcs.getItemCount(paramObject);
    }
    
    public final Parcelable getParcelableData(Object paramObject)
    {
      return AccessibilityRecordCompatIcs.getParcelableData(paramObject);
    }
    
    public final int getRemovedCount(Object paramObject)
    {
      return AccessibilityRecordCompatIcs.getRemovedCount(paramObject);
    }
    
    public final int getScrollX(Object paramObject)
    {
      return AccessibilityRecordCompatIcs.getScrollX(paramObject);
    }
    
    public final int getScrollY(Object paramObject)
    {
      return AccessibilityRecordCompatIcs.getScrollY(paramObject);
    }
    
    public final AccessibilityNodeInfoCompat getSource(Object paramObject)
    {
      return AccessibilityNodeInfoCompat.wrapNonNullInstance(AccessibilityRecordCompatIcs.getSource(paramObject));
    }
    
    public final List<CharSequence> getText(Object paramObject)
    {
      return AccessibilityRecordCompatIcs.getText(paramObject);
    }
    
    public final int getToIndex(Object paramObject)
    {
      return AccessibilityRecordCompatIcs.getToIndex(paramObject);
    }
    
    public final int getWindowId(Object paramObject)
    {
      return AccessibilityRecordCompatIcs.getWindowId(paramObject);
    }
    
    public final boolean isChecked(Object paramObject)
    {
      return AccessibilityRecordCompatIcs.isChecked(paramObject);
    }
    
    public final boolean isEnabled(Object paramObject)
    {
      return AccessibilityRecordCompatIcs.isEnabled(paramObject);
    }
    
    public final boolean isFullScreen(Object paramObject)
    {
      return AccessibilityRecordCompatIcs.isFullScreen(paramObject);
    }
    
    public final boolean isPassword(Object paramObject)
    {
      return AccessibilityRecordCompatIcs.isPassword(paramObject);
    }
    
    public final boolean isScrollable(Object paramObject)
    {
      return AccessibilityRecordCompatIcs.isScrollable(paramObject);
    }
    
    public final Object obtain()
    {
      return AccessibilityRecordCompatIcs.obtain();
    }
    
    public final Object obtain(Object paramObject)
    {
      return AccessibilityRecordCompatIcs.obtain(paramObject);
    }
    
    public final void recycle(Object paramObject)
    {
      AccessibilityRecordCompatIcs.recycle(paramObject);
    }
    
    public final void setAddedCount(Object paramObject, int paramInt)
    {
      AccessibilityRecordCompatIcs.setAddedCount(paramObject, paramInt);
    }
    
    public final void setBeforeText(Object paramObject, CharSequence paramCharSequence)
    {
      AccessibilityRecordCompatIcs.setBeforeText(paramObject, paramCharSequence);
    }
    
    public final void setChecked(Object paramObject, boolean paramBoolean)
    {
      AccessibilityRecordCompatIcs.setChecked(paramObject, paramBoolean);
    }
    
    public final void setClassName(Object paramObject, CharSequence paramCharSequence)
    {
      AccessibilityRecordCompatIcs.setClassName(paramObject, paramCharSequence);
    }
    
    public final void setContentDescription(Object paramObject, CharSequence paramCharSequence)
    {
      AccessibilityRecordCompatIcs.setContentDescription(paramObject, paramCharSequence);
    }
    
    public final void setCurrentItemIndex(Object paramObject, int paramInt)
    {
      AccessibilityRecordCompatIcs.setCurrentItemIndex(paramObject, paramInt);
    }
    
    public final void setEnabled(Object paramObject, boolean paramBoolean)
    {
      AccessibilityRecordCompatIcs.setEnabled(paramObject, paramBoolean);
    }
    
    public final void setFromIndex(Object paramObject, int paramInt)
    {
      AccessibilityRecordCompatIcs.setFromIndex(paramObject, paramInt);
    }
    
    public final void setFullScreen(Object paramObject, boolean paramBoolean)
    {
      AccessibilityRecordCompatIcs.setFullScreen(paramObject, paramBoolean);
    }
    
    public final void setItemCount(Object paramObject, int paramInt)
    {
      AccessibilityRecordCompatIcs.setItemCount(paramObject, paramInt);
    }
    
    public final void setParcelableData(Object paramObject, Parcelable paramParcelable)
    {
      AccessibilityRecordCompatIcs.setParcelableData(paramObject, paramParcelable);
    }
    
    public final void setPassword(Object paramObject, boolean paramBoolean)
    {
      AccessibilityRecordCompatIcs.setPassword(paramObject, paramBoolean);
    }
    
    public final void setRemovedCount(Object paramObject, int paramInt)
    {
      AccessibilityRecordCompatIcs.setRemovedCount(paramObject, paramInt);
    }
    
    public final void setScrollX(Object paramObject, int paramInt)
    {
      AccessibilityRecordCompatIcs.setScrollX(paramObject, paramInt);
    }
    
    public final void setScrollY(Object paramObject, int paramInt)
    {
      AccessibilityRecordCompatIcs.setScrollY(paramObject, paramInt);
    }
    
    public final void setScrollable(Object paramObject, boolean paramBoolean)
    {
      AccessibilityRecordCompatIcs.setScrollable(paramObject, paramBoolean);
    }
    
    public final void setSource(Object paramObject, View paramView)
    {
      AccessibilityRecordCompatIcs.setSource(paramObject, paramView);
    }
    
    public final void setToIndex(Object paramObject, int paramInt)
    {
      AccessibilityRecordCompatIcs.setToIndex(paramObject, paramInt);
    }
  }
  
  static class AccessibilityRecordIcsMr1Impl
    extends AccessibilityRecordCompat.AccessibilityRecordIcsImpl
  {
    public final int getMaxScrollX(Object paramObject)
    {
      return AccessibilityRecordCompatIcsMr1.getMaxScrollX(paramObject);
    }
    
    public final int getMaxScrollY(Object paramObject)
    {
      return AccessibilityRecordCompatIcsMr1.getMaxScrollY(paramObject);
    }
    
    public final void setMaxScrollX(Object paramObject, int paramInt)
    {
      AccessibilityRecordCompatIcsMr1.setMaxScrollX(paramObject, paramInt);
    }
    
    public final void setMaxScrollY(Object paramObject, int paramInt)
    {
      AccessibilityRecordCompatIcsMr1.setMaxScrollY(paramObject, paramInt);
    }
  }
  
  public static abstract interface AccessibilityRecordImpl
  {
    public abstract int getAddedCount(Object paramObject);
    
    public abstract CharSequence getBeforeText(Object paramObject);
    
    public abstract CharSequence getClassName(Object paramObject);
    
    public abstract CharSequence getContentDescription(Object paramObject);
    
    public abstract int getCurrentItemIndex(Object paramObject);
    
    public abstract int getFromIndex(Object paramObject);
    
    public abstract int getItemCount(Object paramObject);
    
    public abstract int getMaxScrollX(Object paramObject);
    
    public abstract int getMaxScrollY(Object paramObject);
    
    public abstract Parcelable getParcelableData(Object paramObject);
    
    public abstract int getRemovedCount(Object paramObject);
    
    public abstract int getScrollX(Object paramObject);
    
    public abstract int getScrollY(Object paramObject);
    
    public abstract AccessibilityNodeInfoCompat getSource(Object paramObject);
    
    public abstract List<CharSequence> getText(Object paramObject);
    
    public abstract int getToIndex(Object paramObject);
    
    public abstract int getWindowId(Object paramObject);
    
    public abstract boolean isChecked(Object paramObject);
    
    public abstract boolean isEnabled(Object paramObject);
    
    public abstract boolean isFullScreen(Object paramObject);
    
    public abstract boolean isPassword(Object paramObject);
    
    public abstract boolean isScrollable(Object paramObject);
    
    public abstract Object obtain();
    
    public abstract Object obtain(Object paramObject);
    
    public abstract void recycle(Object paramObject);
    
    public abstract void setAddedCount(Object paramObject, int paramInt);
    
    public abstract void setBeforeText(Object paramObject, CharSequence paramCharSequence);
    
    public abstract void setChecked(Object paramObject, boolean paramBoolean);
    
    public abstract void setClassName(Object paramObject, CharSequence paramCharSequence);
    
    public abstract void setContentDescription(Object paramObject, CharSequence paramCharSequence);
    
    public abstract void setCurrentItemIndex(Object paramObject, int paramInt);
    
    public abstract void setEnabled(Object paramObject, boolean paramBoolean);
    
    public abstract void setFromIndex(Object paramObject, int paramInt);
    
    public abstract void setFullScreen(Object paramObject, boolean paramBoolean);
    
    public abstract void setItemCount(Object paramObject, int paramInt);
    
    public abstract void setMaxScrollX(Object paramObject, int paramInt);
    
    public abstract void setMaxScrollY(Object paramObject, int paramInt);
    
    public abstract void setParcelableData(Object paramObject, Parcelable paramParcelable);
    
    public abstract void setPassword(Object paramObject, boolean paramBoolean);
    
    public abstract void setRemovedCount(Object paramObject, int paramInt);
    
    public abstract void setScrollX(Object paramObject, int paramInt);
    
    public abstract void setScrollY(Object paramObject, int paramInt);
    
    public abstract void setScrollable(Object paramObject, boolean paramBoolean);
    
    public abstract void setSource(Object paramObject, View paramView);
    
    public abstract void setSource(Object paramObject, View paramView, int paramInt);
    
    public abstract void setToIndex(Object paramObject, int paramInt);
  }
  
  static final class AccessibilityRecordJellyBeanImpl
    extends AccessibilityRecordCompat.AccessibilityRecordIcsMr1Impl
  {
    public final void setSource(Object paramObject, View paramView, int paramInt)
    {
      AccessibilityRecordCompatJellyBean.setSource(paramObject, paramView, paramInt);
    }
  }
  
  static class AccessibilityRecordStubImpl
    implements AccessibilityRecordCompat.AccessibilityRecordImpl
  {
    public int getAddedCount(Object paramObject)
    {
      return 0;
    }
    
    public CharSequence getBeforeText(Object paramObject)
    {
      return null;
    }
    
    public CharSequence getClassName(Object paramObject)
    {
      return null;
    }
    
    public CharSequence getContentDescription(Object paramObject)
    {
      return null;
    }
    
    public int getCurrentItemIndex(Object paramObject)
    {
      return 0;
    }
    
    public int getFromIndex(Object paramObject)
    {
      return 0;
    }
    
    public int getItemCount(Object paramObject)
    {
      return 0;
    }
    
    public int getMaxScrollX(Object paramObject)
    {
      return 0;
    }
    
    public int getMaxScrollY(Object paramObject)
    {
      return 0;
    }
    
    public Parcelable getParcelableData(Object paramObject)
    {
      return null;
    }
    
    public int getRemovedCount(Object paramObject)
    {
      return 0;
    }
    
    public int getScrollX(Object paramObject)
    {
      return 0;
    }
    
    public int getScrollY(Object paramObject)
    {
      return 0;
    }
    
    public AccessibilityNodeInfoCompat getSource(Object paramObject)
    {
      return null;
    }
    
    public List<CharSequence> getText(Object paramObject)
    {
      return Collections.emptyList();
    }
    
    public int getToIndex(Object paramObject)
    {
      return 0;
    }
    
    public int getWindowId(Object paramObject)
    {
      return 0;
    }
    
    public boolean isChecked(Object paramObject)
    {
      return false;
    }
    
    public boolean isEnabled(Object paramObject)
    {
      return false;
    }
    
    public boolean isFullScreen(Object paramObject)
    {
      return false;
    }
    
    public boolean isPassword(Object paramObject)
    {
      return false;
    }
    
    public boolean isScrollable(Object paramObject)
    {
      return false;
    }
    
    public Object obtain()
    {
      return null;
    }
    
    public Object obtain(Object paramObject)
    {
      return null;
    }
    
    public void recycle(Object paramObject) {}
    
    public void setAddedCount(Object paramObject, int paramInt) {}
    
    public void setBeforeText(Object paramObject, CharSequence paramCharSequence) {}
    
    public void setChecked(Object paramObject, boolean paramBoolean) {}
    
    public void setClassName(Object paramObject, CharSequence paramCharSequence) {}
    
    public void setContentDescription(Object paramObject, CharSequence paramCharSequence) {}
    
    public void setCurrentItemIndex(Object paramObject, int paramInt) {}
    
    public void setEnabled(Object paramObject, boolean paramBoolean) {}
    
    public void setFromIndex(Object paramObject, int paramInt) {}
    
    public void setFullScreen(Object paramObject, boolean paramBoolean) {}
    
    public void setItemCount(Object paramObject, int paramInt) {}
    
    public void setMaxScrollX(Object paramObject, int paramInt) {}
    
    public void setMaxScrollY(Object paramObject, int paramInt) {}
    
    public void setParcelableData(Object paramObject, Parcelable paramParcelable) {}
    
    public void setPassword(Object paramObject, boolean paramBoolean) {}
    
    public void setRemovedCount(Object paramObject, int paramInt) {}
    
    public void setScrollX(Object paramObject, int paramInt) {}
    
    public void setScrollY(Object paramObject, int paramInt) {}
    
    public void setScrollable(Object paramObject, boolean paramBoolean) {}
    
    public void setSource(Object paramObject, View paramView) {}
    
    public void setSource(Object paramObject, View paramView, int paramInt) {}
    
    public void setToIndex(Object paramObject, int paramInt) {}
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.accessibility.AccessibilityRecordCompat
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */