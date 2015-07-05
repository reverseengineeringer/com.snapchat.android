package android.support.v4.view.accessibility;

import android.graphics.Rect;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.view.View;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class AccessibilityNodeInfoCompat
{
  public static final int ACTION_ACCESSIBILITY_FOCUS = 64;
  public static final String ACTION_ARGUMENT_EXTEND_SELECTION_BOOLEAN = "ACTION_ARGUMENT_EXTEND_SELECTION_BOOLEAN";
  public static final String ACTION_ARGUMENT_HTML_ELEMENT_STRING = "ACTION_ARGUMENT_HTML_ELEMENT_STRING";
  public static final String ACTION_ARGUMENT_MOVEMENT_GRANULARITY_INT = "ACTION_ARGUMENT_MOVEMENT_GRANULARITY_INT";
  public static final String ACTION_ARGUMENT_SELECTION_END_INT = "ACTION_ARGUMENT_SELECTION_END_INT";
  public static final String ACTION_ARGUMENT_SELECTION_START_INT = "ACTION_ARGUMENT_SELECTION_START_INT";
  public static final String ACTION_ARGUMENT_SET_TEXT_CHARSEQUENCE = "ACTION_ARGUMENT_SET_TEXT_CHARSEQUENCE";
  public static final int ACTION_CLEAR_ACCESSIBILITY_FOCUS = 128;
  public static final int ACTION_CLEAR_FOCUS = 2;
  public static final int ACTION_CLEAR_SELECTION = 8;
  public static final int ACTION_CLICK = 16;
  public static final int ACTION_COPY = 16384;
  public static final int ACTION_CUT = 65536;
  public static final int ACTION_FOCUS = 1;
  public static final int ACTION_LONG_CLICK = 32;
  public static final int ACTION_NEXT_AT_MOVEMENT_GRANULARITY = 256;
  public static final int ACTION_NEXT_HTML_ELEMENT = 1024;
  public static final int ACTION_PASTE = 32768;
  public static final int ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY = 512;
  public static final int ACTION_PREVIOUS_HTML_ELEMENT = 2048;
  public static final int ACTION_SCROLL_BACKWARD = 8192;
  public static final int ACTION_SCROLL_FORWARD = 4096;
  public static final int ACTION_SELECT = 4;
  public static final int ACTION_SET_SELECTION = 131072;
  public static final int ACTION_SET_TEXT = 2097152;
  public static final int FOCUS_ACCESSIBILITY = 2;
  public static final int FOCUS_INPUT = 1;
  public static final AccessibilityNodeInfoImpl IMPL = new AccessibilityNodeInfoStubImpl();
  public static final int MOVEMENT_GRANULARITY_CHARACTER = 1;
  public static final int MOVEMENT_GRANULARITY_LINE = 4;
  public static final int MOVEMENT_GRANULARITY_PAGE = 16;
  public static final int MOVEMENT_GRANULARITY_PARAGRAPH = 8;
  public static final int MOVEMENT_GRANULARITY_WORD = 2;
  public final Object mInfo;
  
  static
  {
    if (Build.VERSION.SDK_INT >= 21)
    {
      IMPL = new AccessibilityNodeInfoApi21Impl();
      return;
    }
    if (Build.VERSION.SDK_INT >= 19)
    {
      IMPL = new AccessibilityNodeInfoKitKatImpl();
      return;
    }
    if (Build.VERSION.SDK_INT >= 18)
    {
      IMPL = new AccessibilityNodeInfoJellybeanMr2Impl();
      return;
    }
    if (Build.VERSION.SDK_INT >= 16)
    {
      IMPL = new AccessibilityNodeInfoJellybeanImpl();
      return;
    }
    if (Build.VERSION.SDK_INT >= 14)
    {
      IMPL = new AccessibilityNodeInfoIcsImpl();
      return;
    }
  }
  
  public AccessibilityNodeInfoCompat(Object paramObject)
  {
    mInfo = paramObject;
  }
  
  private void addChild(View paramView, int paramInt)
  {
    IMPL.addChild(mInfo, paramView, paramInt);
  }
  
  private List<AccessibilityNodeInfoCompat> findAccessibilityNodeInfosByText(String paramString)
  {
    ArrayList localArrayList = new ArrayList();
    paramString = IMPL.findAccessibilityNodeInfosByText(mInfo, paramString);
    int j = paramString.size();
    int i = 0;
    while (i < j)
    {
      localArrayList.add(new AccessibilityNodeInfoCompat(paramString.get(i)));
      i += 1;
    }
    return localArrayList;
  }
  
  private AccessibilityNodeInfoCompat findFocus(int paramInt)
  {
    return wrapNonNullInstance(IMPL.findFocus(mInfo, paramInt));
  }
  
  private AccessibilityNodeInfoCompat focusSearch(int paramInt)
  {
    return wrapNonNullInstance(IMPL.focusSearch(mInfo, paramInt));
  }
  
  private List<AccessibilityActionCompat> getActionList()
  {
    ArrayList localArrayList = new ArrayList();
    List localList = IMPL.getActionList(mInfo);
    int j = localList.size();
    int i = 0;
    while (i < j)
    {
      localArrayList.add(new AccessibilityActionCompat(localList.get(i), (byte)0));
      i += 1;
    }
    return localArrayList;
  }
  
  private static String getActionSymbolicName(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return "ACTION_UNKNOWN";
    case 1: 
      return "ACTION_FOCUS";
    case 2: 
      return "ACTION_CLEAR_FOCUS";
    case 4: 
      return "ACTION_SELECT";
    case 8: 
      return "ACTION_CLEAR_SELECTION";
    case 16: 
      return "ACTION_CLICK";
    case 32: 
      return "ACTION_LONG_CLICK";
    case 64: 
      return "ACTION_ACCESSIBILITY_FOCUS";
    case 128: 
      return "ACTION_CLEAR_ACCESSIBILITY_FOCUS";
    case 256: 
      return "ACTION_NEXT_AT_MOVEMENT_GRANULARITY";
    case 512: 
      return "ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY";
    case 1024: 
      return "ACTION_NEXT_HTML_ELEMENT";
    case 2048: 
      return "ACTION_PREVIOUS_HTML_ELEMENT";
    case 4096: 
      return "ACTION_SCROLL_FORWARD";
    case 8192: 
      return "ACTION_SCROLL_BACKWARD";
    case 65536: 
      return "ACTION_CUT";
    case 16384: 
      return "ACTION_COPY";
    case 32768: 
      return "ACTION_PASTE";
    }
    return "ACTION_SET_SELECTION";
  }
  
  private AccessibilityNodeInfoCompat getChild(int paramInt)
  {
    return wrapNonNullInstance(IMPL.getChild(mInfo, paramInt));
  }
  
  private int getChildCount()
  {
    return IMPL.getChildCount(mInfo);
  }
  
  private CollectionInfoCompat getCollectionInfo()
  {
    Object localObject = IMPL.getCollectionInfo(mInfo);
    if (localObject == null) {
      return null;
    }
    return new CollectionInfoCompat(localObject, (byte)0);
  }
  
  private CollectionItemInfoCompat getCollectionItemInfo()
  {
    Object localObject = IMPL.getCollectionItemInfo(mInfo);
    if (localObject == null) {
      return null;
    }
    return new CollectionItemInfoCompat(localObject, (byte)0);
  }
  
  private Object getInfo()
  {
    return mInfo;
  }
  
  private int getLiveRegion()
  {
    return IMPL.getLiveRegion(mInfo);
  }
  
  private int getMovementGranularities()
  {
    return IMPL.getMovementGranularities(mInfo);
  }
  
  private AccessibilityNodeInfoCompat getParent()
  {
    return wrapNonNullInstance(IMPL.getParent(mInfo));
  }
  
  private RangeInfoCompat getRangeInfo()
  {
    Object localObject = IMPL.getRangeInfo(mInfo);
    if (localObject == null) {
      return null;
    }
    return new RangeInfoCompat(localObject, (byte)0);
  }
  
  private String getViewIdResourceName()
  {
    return IMPL.getViewIdResourceName(mInfo);
  }
  
  private int getWindowId()
  {
    return IMPL.getWindowId(mInfo);
  }
  
  private boolean isCheckable()
  {
    return IMPL.isCheckable(mInfo);
  }
  
  private boolean isChecked()
  {
    return IMPL.isChecked(mInfo);
  }
  
  private boolean isPassword()
  {
    return IMPL.isPassword(mInfo);
  }
  
  private boolean isScrollable()
  {
    return IMPL.isScrollable(mInfo);
  }
  
  public static AccessibilityNodeInfoCompat obtain()
  {
    return wrapNonNullInstance(IMPL.obtain());
  }
  
  public static AccessibilityNodeInfoCompat obtain(AccessibilityNodeInfoCompat paramAccessibilityNodeInfoCompat)
  {
    return wrapNonNullInstance(IMPL.obtain(mInfo));
  }
  
  public static AccessibilityNodeInfoCompat obtain(View paramView)
  {
    return wrapNonNullInstance(IMPL.obtain(paramView));
  }
  
  private static AccessibilityNodeInfoCompat obtain(View paramView, int paramInt)
  {
    return wrapNonNullInstance(IMPL.obtain(paramView, paramInt));
  }
  
  private boolean performAction(int paramInt)
  {
    return IMPL.performAction(mInfo, paramInt);
  }
  
  private boolean performAction(int paramInt, Bundle paramBundle)
  {
    return IMPL.performAction(mInfo, paramInt, paramBundle);
  }
  
  private void setCheckable(boolean paramBoolean)
  {
    IMPL.setCheckable(mInfo, paramBoolean);
  }
  
  private void setChecked(boolean paramBoolean)
  {
    IMPL.setChecked(mInfo, paramBoolean);
  }
  
  private void setCollectionInfo(Object paramObject)
  {
    IMPL.setCollectionInfo(mInfo, mInfo);
  }
  
  private void setLiveRegion(int paramInt)
  {
    IMPL.setLiveRegion(mInfo, paramInt);
  }
  
  private void setMovementGranularities(int paramInt)
  {
    IMPL.setMovementGranularities(mInfo, paramInt);
  }
  
  private void setParent(View paramView, int paramInt)
  {
    IMPL.setParent(mInfo, paramView, paramInt);
  }
  
  private void setPassword(boolean paramBoolean)
  {
    IMPL.setPassword(mInfo, paramBoolean);
  }
  
  private void setSource(View paramView, int paramInt)
  {
    IMPL.setSource(mInfo, paramView, paramInt);
  }
  
  private void setText(CharSequence paramCharSequence)
  {
    IMPL.setText(mInfo, paramCharSequence);
  }
  
  private void setViewIdResourceName(String paramString)
  {
    IMPL.setViewIdResourceName(mInfo, paramString);
  }
  
  static AccessibilityNodeInfoCompat wrapNonNullInstance(Object paramObject)
  {
    if (paramObject != null) {
      return new AccessibilityNodeInfoCompat(paramObject);
    }
    return null;
  }
  
  public final void addAction(int paramInt)
  {
    IMPL.addAction(mInfo, paramInt);
  }
  
  public final void addChild(View paramView)
  {
    IMPL.addChild(mInfo, paramView);
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
        paramObject = (AccessibilityNodeInfoCompat)paramObject;
        if (mInfo != null) {
          break;
        }
      } while (mInfo == null);
      return false;
    } while (mInfo.equals(mInfo));
    return false;
  }
  
  public final int getActions()
  {
    return IMPL.getActions(mInfo);
  }
  
  public final void getBoundsInParent(Rect paramRect)
  {
    IMPL.getBoundsInParent(mInfo, paramRect);
  }
  
  public final void getBoundsInScreen(Rect paramRect)
  {
    IMPL.getBoundsInScreen(mInfo, paramRect);
  }
  
  public final CharSequence getClassName()
  {
    return IMPL.getClassName(mInfo);
  }
  
  public final CharSequence getContentDescription()
  {
    return IMPL.getContentDescription(mInfo);
  }
  
  public final CharSequence getPackageName()
  {
    return IMPL.getPackageName(mInfo);
  }
  
  public final CharSequence getText()
  {
    return IMPL.getText(mInfo);
  }
  
  public final int hashCode()
  {
    if (mInfo == null) {
      return 0;
    }
    return mInfo.hashCode();
  }
  
  public final boolean isAccessibilityFocused()
  {
    return IMPL.isAccessibilityFocused(mInfo);
  }
  
  public final boolean isClickable()
  {
    return IMPL.isClickable(mInfo);
  }
  
  public final boolean isEnabled()
  {
    return IMPL.isEnabled(mInfo);
  }
  
  public final boolean isFocusable()
  {
    return IMPL.isFocusable(mInfo);
  }
  
  public final boolean isFocused()
  {
    return IMPL.isFocused(mInfo);
  }
  
  public final boolean isLongClickable()
  {
    return IMPL.isLongClickable(mInfo);
  }
  
  public final boolean isSelected()
  {
    return IMPL.isSelected(mInfo);
  }
  
  public final boolean isVisibleToUser()
  {
    return IMPL.isVisibleToUser(mInfo);
  }
  
  public final void recycle()
  {
    IMPL.recycle(mInfo);
  }
  
  public final void setAccessibilityFocused(boolean paramBoolean)
  {
    IMPL.setAccessibilityFocused(mInfo, paramBoolean);
  }
  
  public final void setBoundsInParent(Rect paramRect)
  {
    IMPL.setBoundsInParent(mInfo, paramRect);
  }
  
  public final void setBoundsInScreen(Rect paramRect)
  {
    IMPL.setBoundsInScreen(mInfo, paramRect);
  }
  
  public final void setClassName(CharSequence paramCharSequence)
  {
    IMPL.setClassName(mInfo, paramCharSequence);
  }
  
  public final void setClickable(boolean paramBoolean)
  {
    IMPL.setClickable(mInfo, paramBoolean);
  }
  
  public final void setCollectionItemInfo(Object paramObject)
  {
    IMPL.setCollectionItemInfo(mInfo, mInfo);
  }
  
  public final void setContentDescription(CharSequence paramCharSequence)
  {
    IMPL.setContentDescription(mInfo, paramCharSequence);
  }
  
  public final void setEnabled(boolean paramBoolean)
  {
    IMPL.setEnabled(mInfo, paramBoolean);
  }
  
  public final void setFocusable(boolean paramBoolean)
  {
    IMPL.setFocusable(mInfo, paramBoolean);
  }
  
  public final void setFocused(boolean paramBoolean)
  {
    IMPL.setFocused(mInfo, paramBoolean);
  }
  
  public final void setLongClickable(boolean paramBoolean)
  {
    IMPL.setLongClickable(mInfo, paramBoolean);
  }
  
  public final void setPackageName(CharSequence paramCharSequence)
  {
    IMPL.setPackageName(mInfo, paramCharSequence);
  }
  
  public final void setParent(View paramView)
  {
    IMPL.setParent(mInfo, paramView);
  }
  
  public final void setScrollable(boolean paramBoolean)
  {
    IMPL.setScrollable(mInfo, paramBoolean);
  }
  
  public final void setSelected(boolean paramBoolean)
  {
    IMPL.setSelected(mInfo, paramBoolean);
  }
  
  public final void setSource(View paramView)
  {
    IMPL.setSource(mInfo, paramView);
  }
  
  public final void setVisibleToUser(boolean paramBoolean)
  {
    IMPL.setVisibleToUser(mInfo, paramBoolean);
  }
  
  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(super.toString());
    Object localObject = new Rect();
    getBoundsInParent((Rect)localObject);
    localStringBuilder.append("; boundsInParent: " + localObject);
    getBoundsInScreen((Rect)localObject);
    localStringBuilder.append("; boundsInScreen: " + localObject);
    localStringBuilder.append("; packageName: ").append(getPackageName());
    localStringBuilder.append("; className: ").append(getClassName());
    localStringBuilder.append("; text: ").append(getText());
    localStringBuilder.append("; contentDescription: ").append(getContentDescription());
    localStringBuilder.append("; viewId: ").append(IMPL.getViewIdResourceName(mInfo));
    localStringBuilder.append("; checkable: ").append(IMPL.isCheckable(mInfo));
    localStringBuilder.append("; checked: ").append(IMPL.isChecked(mInfo));
    localStringBuilder.append("; focusable: ").append(isFocusable());
    localStringBuilder.append("; focused: ").append(isFocused());
    localStringBuilder.append("; selected: ").append(isSelected());
    localStringBuilder.append("; clickable: ").append(isClickable());
    localStringBuilder.append("; longClickable: ").append(isLongClickable());
    localStringBuilder.append("; enabled: ").append(isEnabled());
    localStringBuilder.append("; password: ").append(IMPL.isPassword(mInfo));
    localStringBuilder.append("; scrollable: " + IMPL.isScrollable(mInfo));
    localStringBuilder.append("; [");
    int i = getActions();
    if (i != 0)
    {
      int j = 1 << Integer.numberOfTrailingZeros(i);
      i = (j ^ 0xFFFFFFFF) & i;
      switch (j)
      {
      default: 
        localObject = "ACTION_UNKNOWN";
      }
      for (;;)
      {
        localStringBuilder.append((String)localObject);
        if (i != 0) {
          localStringBuilder.append(", ");
        }
        break;
        localObject = "ACTION_FOCUS";
        continue;
        localObject = "ACTION_CLEAR_FOCUS";
        continue;
        localObject = "ACTION_SELECT";
        continue;
        localObject = "ACTION_CLEAR_SELECTION";
        continue;
        localObject = "ACTION_CLICK";
        continue;
        localObject = "ACTION_LONG_CLICK";
        continue;
        localObject = "ACTION_ACCESSIBILITY_FOCUS";
        continue;
        localObject = "ACTION_CLEAR_ACCESSIBILITY_FOCUS";
        continue;
        localObject = "ACTION_NEXT_AT_MOVEMENT_GRANULARITY";
        continue;
        localObject = "ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY";
        continue;
        localObject = "ACTION_NEXT_HTML_ELEMENT";
        continue;
        localObject = "ACTION_PREVIOUS_HTML_ELEMENT";
        continue;
        localObject = "ACTION_SCROLL_FORWARD";
        continue;
        localObject = "ACTION_SCROLL_BACKWARD";
        continue;
        localObject = "ACTION_CUT";
        continue;
        localObject = "ACTION_COPY";
        continue;
        localObject = "ACTION_PASTE";
        continue;
        localObject = "ACTION_SET_SELECTION";
      }
    }
    localStringBuilder.append("]");
    return localStringBuilder.toString();
  }
  
  public static final class AccessibilityActionCompat
  {
    private final Object mAction;
    
    private AccessibilityActionCompat(Object paramObject)
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
  
  static final class AccessibilityNodeInfoApi21Impl
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
  
  static class AccessibilityNodeInfoIcsImpl
    extends AccessibilityNodeInfoCompat.AccessibilityNodeInfoStubImpl
  {
    public final void addAction(Object paramObject, int paramInt)
    {
      AccessibilityNodeInfoCompatIcs.addAction(paramObject, paramInt);
    }
    
    public void addAction(Object paramObject, int paramInt, CharSequence paramCharSequence)
    {
      if (Integer.bitCount(paramInt) == 1) {
        AccessibilityNodeInfoCompatIcs.addAction(paramObject, paramInt);
      }
    }
    
    public final void addChild(Object paramObject, View paramView)
    {
      AccessibilityNodeInfoCompatIcs.addChild(paramObject, paramView);
    }
    
    public final List<Object> findAccessibilityNodeInfosByText(Object paramObject, String paramString)
    {
      return AccessibilityNodeInfoCompatIcs.findAccessibilityNodeInfosByText(paramObject, paramString);
    }
    
    public final int getActions(Object paramObject)
    {
      return AccessibilityNodeInfoCompatIcs.getActions(paramObject);
    }
    
    public final void getBoundsInParent(Object paramObject, Rect paramRect)
    {
      AccessibilityNodeInfoCompatIcs.getBoundsInParent(paramObject, paramRect);
    }
    
    public final void getBoundsInScreen(Object paramObject, Rect paramRect)
    {
      AccessibilityNodeInfoCompatIcs.getBoundsInScreen(paramObject, paramRect);
    }
    
    public final Object getChild(Object paramObject, int paramInt)
    {
      return AccessibilityNodeInfoCompatIcs.getChild(paramObject, paramInt);
    }
    
    public final int getChildCount(Object paramObject)
    {
      return AccessibilityNodeInfoCompatIcs.getChildCount(paramObject);
    }
    
    public final CharSequence getClassName(Object paramObject)
    {
      return AccessibilityNodeInfoCompatIcs.getClassName(paramObject);
    }
    
    public final CharSequence getContentDescription(Object paramObject)
    {
      return AccessibilityNodeInfoCompatIcs.getContentDescription(paramObject);
    }
    
    public final CharSequence getPackageName(Object paramObject)
    {
      return AccessibilityNodeInfoCompatIcs.getPackageName(paramObject);
    }
    
    public final Object getParent(Object paramObject)
    {
      return AccessibilityNodeInfoCompatIcs.getParent(paramObject);
    }
    
    public final CharSequence getText(Object paramObject)
    {
      return AccessibilityNodeInfoCompatIcs.getText(paramObject);
    }
    
    public final int getWindowId(Object paramObject)
    {
      return AccessibilityNodeInfoCompatIcs.getWindowId(paramObject);
    }
    
    public final boolean isCheckable(Object paramObject)
    {
      return AccessibilityNodeInfoCompatIcs.isCheckable(paramObject);
    }
    
    public final boolean isChecked(Object paramObject)
    {
      return AccessibilityNodeInfoCompatIcs.isChecked(paramObject);
    }
    
    public final boolean isClickable(Object paramObject)
    {
      return AccessibilityNodeInfoCompatIcs.isClickable(paramObject);
    }
    
    public final boolean isEnabled(Object paramObject)
    {
      return AccessibilityNodeInfoCompatIcs.isEnabled(paramObject);
    }
    
    public final boolean isFocusable(Object paramObject)
    {
      return AccessibilityNodeInfoCompatIcs.isFocusable(paramObject);
    }
    
    public final boolean isFocused(Object paramObject)
    {
      return AccessibilityNodeInfoCompatIcs.isFocused(paramObject);
    }
    
    public final boolean isLongClickable(Object paramObject)
    {
      return AccessibilityNodeInfoCompatIcs.isLongClickable(paramObject);
    }
    
    public final boolean isPassword(Object paramObject)
    {
      return AccessibilityNodeInfoCompatIcs.isPassword(paramObject);
    }
    
    public final boolean isScrollable(Object paramObject)
    {
      return AccessibilityNodeInfoCompatIcs.isScrollable(paramObject);
    }
    
    public final boolean isSelected(Object paramObject)
    {
      return AccessibilityNodeInfoCompatIcs.isSelected(paramObject);
    }
    
    public final Object obtain()
    {
      return AccessibilityNodeInfoCompatIcs.obtain();
    }
    
    public final Object obtain(View paramView)
    {
      return AccessibilityNodeInfoCompatIcs.obtain(paramView);
    }
    
    public final Object obtain(Object paramObject)
    {
      return AccessibilityNodeInfoCompatIcs.obtain(paramObject);
    }
    
    public final boolean performAction(Object paramObject, int paramInt)
    {
      return AccessibilityNodeInfoCompatIcs.performAction(paramObject, paramInt);
    }
    
    public final void recycle(Object paramObject)
    {
      AccessibilityNodeInfoCompatIcs.recycle(paramObject);
    }
    
    public final void setBoundsInParent(Object paramObject, Rect paramRect)
    {
      AccessibilityNodeInfoCompatIcs.setBoundsInParent(paramObject, paramRect);
    }
    
    public final void setBoundsInScreen(Object paramObject, Rect paramRect)
    {
      AccessibilityNodeInfoCompatIcs.setBoundsInScreen(paramObject, paramRect);
    }
    
    public final void setCheckable(Object paramObject, boolean paramBoolean)
    {
      AccessibilityNodeInfoCompatIcs.setCheckable(paramObject, paramBoolean);
    }
    
    public final void setChecked(Object paramObject, boolean paramBoolean)
    {
      AccessibilityNodeInfoCompatIcs.setChecked(paramObject, paramBoolean);
    }
    
    public final void setClassName(Object paramObject, CharSequence paramCharSequence)
    {
      AccessibilityNodeInfoCompatIcs.setClassName(paramObject, paramCharSequence);
    }
    
    public final void setClickable(Object paramObject, boolean paramBoolean)
    {
      AccessibilityNodeInfoCompatIcs.setClickable(paramObject, paramBoolean);
    }
    
    public final void setContentDescription(Object paramObject, CharSequence paramCharSequence)
    {
      AccessibilityNodeInfoCompatIcs.setContentDescription(paramObject, paramCharSequence);
    }
    
    public final void setEnabled(Object paramObject, boolean paramBoolean)
    {
      AccessibilityNodeInfoCompatIcs.setEnabled(paramObject, paramBoolean);
    }
    
    public final void setFocusable(Object paramObject, boolean paramBoolean)
    {
      AccessibilityNodeInfoCompatIcs.setFocusable(paramObject, paramBoolean);
    }
    
    public final void setFocused(Object paramObject, boolean paramBoolean)
    {
      AccessibilityNodeInfoCompatIcs.setFocused(paramObject, paramBoolean);
    }
    
    public final void setLongClickable(Object paramObject, boolean paramBoolean)
    {
      AccessibilityNodeInfoCompatIcs.setLongClickable(paramObject, paramBoolean);
    }
    
    public final void setPackageName(Object paramObject, CharSequence paramCharSequence)
    {
      AccessibilityNodeInfoCompatIcs.setPackageName(paramObject, paramCharSequence);
    }
    
    public final void setParent(Object paramObject, View paramView)
    {
      AccessibilityNodeInfoCompatIcs.setParent(paramObject, paramView);
    }
    
    public final void setPassword(Object paramObject, boolean paramBoolean)
    {
      AccessibilityNodeInfoCompatIcs.setPassword(paramObject, paramBoolean);
    }
    
    public final void setScrollable(Object paramObject, boolean paramBoolean)
    {
      AccessibilityNodeInfoCompatIcs.setScrollable(paramObject, paramBoolean);
    }
    
    public final void setSelected(Object paramObject, boolean paramBoolean)
    {
      AccessibilityNodeInfoCompatIcs.setSelected(paramObject, paramBoolean);
    }
    
    public final void setSource(Object paramObject, View paramView)
    {
      AccessibilityNodeInfoCompatIcs.setSource(paramObject, paramView);
    }
    
    public final void setText(Object paramObject, CharSequence paramCharSequence)
    {
      AccessibilityNodeInfoCompatIcs.setText(paramObject, paramCharSequence);
    }
  }
  
  public static abstract interface AccessibilityNodeInfoImpl
  {
    public abstract void addAction(Object paramObject, int paramInt);
    
    public abstract void addAction(Object paramObject, int paramInt, CharSequence paramCharSequence);
    
    public abstract void addChild(Object paramObject, View paramView);
    
    public abstract void addChild(Object paramObject, View paramView, int paramInt);
    
    public abstract List<Object> findAccessibilityNodeInfosByText(Object paramObject, String paramString);
    
    public abstract Object findFocus(Object paramObject, int paramInt);
    
    public abstract Object focusSearch(Object paramObject, int paramInt);
    
    public abstract List<Object> getActionList(Object paramObject);
    
    public abstract int getActions(Object paramObject);
    
    public abstract void getBoundsInParent(Object paramObject, Rect paramRect);
    
    public abstract void getBoundsInScreen(Object paramObject, Rect paramRect);
    
    public abstract Object getChild(Object paramObject, int paramInt);
    
    public abstract int getChildCount(Object paramObject);
    
    public abstract CharSequence getClassName(Object paramObject);
    
    public abstract Object getCollectionInfo(Object paramObject);
    
    public abstract int getCollectionInfoColumnCount(Object paramObject);
    
    public abstract int getCollectionInfoRowCount(Object paramObject);
    
    public abstract int getCollectionItemColumnIndex(Object paramObject);
    
    public abstract int getCollectionItemColumnSpan(Object paramObject);
    
    public abstract Object getCollectionItemInfo(Object paramObject);
    
    public abstract int getCollectionItemRowIndex(Object paramObject);
    
    public abstract int getCollectionItemRowSpan(Object paramObject);
    
    public abstract CharSequence getContentDescription(Object paramObject);
    
    public abstract int getLiveRegion(Object paramObject);
    
    public abstract int getMovementGranularities(Object paramObject);
    
    public abstract CharSequence getPackageName(Object paramObject);
    
    public abstract Object getParent(Object paramObject);
    
    public abstract Object getRangeInfo(Object paramObject);
    
    public abstract CharSequence getText(Object paramObject);
    
    public abstract String getViewIdResourceName(Object paramObject);
    
    public abstract int getWindowId(Object paramObject);
    
    public abstract boolean isAccessibilityFocused(Object paramObject);
    
    public abstract boolean isCheckable(Object paramObject);
    
    public abstract boolean isChecked(Object paramObject);
    
    public abstract boolean isClickable(Object paramObject);
    
    public abstract boolean isCollectionInfoHierarchical(Object paramObject);
    
    public abstract boolean isCollectionItemHeading(Object paramObject);
    
    public abstract boolean isCollectionItemSelected(Object paramObject);
    
    public abstract boolean isEnabled(Object paramObject);
    
    public abstract boolean isFocusable(Object paramObject);
    
    public abstract boolean isFocused(Object paramObject);
    
    public abstract boolean isLongClickable(Object paramObject);
    
    public abstract boolean isPassword(Object paramObject);
    
    public abstract boolean isScrollable(Object paramObject);
    
    public abstract boolean isSelected(Object paramObject);
    
    public abstract boolean isVisibleToUser(Object paramObject);
    
    public abstract Object obtain();
    
    public abstract Object obtain(View paramView);
    
    public abstract Object obtain(View paramView, int paramInt);
    
    public abstract Object obtain(Object paramObject);
    
    public abstract Object obtainCollectionInfo(int paramInt1, int paramInt2, boolean paramBoolean, int paramInt3);
    
    public abstract Object obtainCollectionItemInfo$771e0323(int paramInt1, int paramInt2, int paramInt3, int paramInt4, boolean paramBoolean);
    
    public abstract boolean performAction(Object paramObject, int paramInt);
    
    public abstract boolean performAction(Object paramObject, int paramInt, Bundle paramBundle);
    
    public abstract void recycle(Object paramObject);
    
    public abstract void setAccessibilityFocused(Object paramObject, boolean paramBoolean);
    
    public abstract void setBoundsInParent(Object paramObject, Rect paramRect);
    
    public abstract void setBoundsInScreen(Object paramObject, Rect paramRect);
    
    public abstract void setCheckable(Object paramObject, boolean paramBoolean);
    
    public abstract void setChecked(Object paramObject, boolean paramBoolean);
    
    public abstract void setClassName(Object paramObject, CharSequence paramCharSequence);
    
    public abstract void setClickable(Object paramObject, boolean paramBoolean);
    
    public abstract void setCollectionInfo(Object paramObject1, Object paramObject2);
    
    public abstract void setCollectionItemInfo(Object paramObject1, Object paramObject2);
    
    public abstract void setContentDescription(Object paramObject, CharSequence paramCharSequence);
    
    public abstract void setEnabled(Object paramObject, boolean paramBoolean);
    
    public abstract void setFocusable(Object paramObject, boolean paramBoolean);
    
    public abstract void setFocused(Object paramObject, boolean paramBoolean);
    
    public abstract void setLiveRegion(Object paramObject, int paramInt);
    
    public abstract void setLongClickable(Object paramObject, boolean paramBoolean);
    
    public abstract void setMovementGranularities(Object paramObject, int paramInt);
    
    public abstract void setPackageName(Object paramObject, CharSequence paramCharSequence);
    
    public abstract void setParent(Object paramObject, View paramView);
    
    public abstract void setParent(Object paramObject, View paramView, int paramInt);
    
    public abstract void setPassword(Object paramObject, boolean paramBoolean);
    
    public abstract void setScrollable(Object paramObject, boolean paramBoolean);
    
    public abstract void setSelected(Object paramObject, boolean paramBoolean);
    
    public abstract void setSource(Object paramObject, View paramView);
    
    public abstract void setSource(Object paramObject, View paramView, int paramInt);
    
    public abstract void setText(Object paramObject, CharSequence paramCharSequence);
    
    public abstract void setViewIdResourceName(Object paramObject, String paramString);
    
    public abstract void setVisibleToUser(Object paramObject, boolean paramBoolean);
  }
  
  static class AccessibilityNodeInfoJellybeanImpl
    extends AccessibilityNodeInfoCompat.AccessibilityNodeInfoIcsImpl
  {
    public final void addChild(Object paramObject, View paramView, int paramInt)
    {
      AccessibilityNodeInfoCompatJellyBean.addChild(paramObject, paramView, paramInt);
    }
    
    public final Object findFocus(Object paramObject, int paramInt)
    {
      return AccessibilityNodeInfoCompatJellyBean.findFocus(paramObject, paramInt);
    }
    
    public final Object focusSearch(Object paramObject, int paramInt)
    {
      return AccessibilityNodeInfoCompatJellyBean.focusSearch(paramObject, paramInt);
    }
    
    public final int getMovementGranularities(Object paramObject)
    {
      return AccessibilityNodeInfoCompatJellyBean.getMovementGranularities(paramObject);
    }
    
    public final boolean isAccessibilityFocused(Object paramObject)
    {
      return AccessibilityNodeInfoCompatJellyBean.isAccessibilityFocused(paramObject);
    }
    
    public final boolean isVisibleToUser(Object paramObject)
    {
      return AccessibilityNodeInfoCompatJellyBean.isVisibleToUser(paramObject);
    }
    
    public final Object obtain(View paramView, int paramInt)
    {
      return AccessibilityNodeInfoCompatJellyBean.obtain(paramView, paramInt);
    }
    
    public final boolean performAction(Object paramObject, int paramInt, Bundle paramBundle)
    {
      return AccessibilityNodeInfoCompatJellyBean.performAction(paramObject, paramInt, paramBundle);
    }
    
    public final void setAccessibilityFocused(Object paramObject, boolean paramBoolean)
    {
      AccessibilityNodeInfoCompatJellyBean.setAccesibilityFocused(paramObject, paramBoolean);
    }
    
    public final void setMovementGranularities(Object paramObject, int paramInt)
    {
      AccessibilityNodeInfoCompatJellyBean.setMovementGranularities(paramObject, paramInt);
    }
    
    public final void setParent(Object paramObject, View paramView, int paramInt)
    {
      AccessibilityNodeInfoCompatJellyBean.setParent(paramObject, paramView, paramInt);
    }
    
    public final void setSource(Object paramObject, View paramView, int paramInt)
    {
      AccessibilityNodeInfoCompatJellyBean.setSource(paramObject, paramView, paramInt);
    }
    
    public final void setVisibleToUser(Object paramObject, boolean paramBoolean)
    {
      AccessibilityNodeInfoCompatJellyBean.setVisibleToUser(paramObject, paramBoolean);
    }
  }
  
  static class AccessibilityNodeInfoJellybeanMr2Impl
    extends AccessibilityNodeInfoCompat.AccessibilityNodeInfoJellybeanImpl
  {
    public final String getViewIdResourceName(Object paramObject)
    {
      return AccessibilityNodeInfoCompatJellybeanMr2.getViewIdResourceName(paramObject);
    }
    
    public final void setViewIdResourceName(Object paramObject, String paramString)
    {
      AccessibilityNodeInfoCompatJellybeanMr2.setViewIdResourceName(paramObject, paramString);
    }
  }
  
  static class AccessibilityNodeInfoKitKatImpl
    extends AccessibilityNodeInfoCompat.AccessibilityNodeInfoJellybeanMr2Impl
  {
    public final Object getCollectionInfo(Object paramObject)
    {
      return AccessibilityNodeInfoCompatKitKat.getCollectionInfo(paramObject);
    }
    
    public final int getCollectionInfoColumnCount(Object paramObject)
    {
      return AccessibilityNodeInfoCompatKitKat.CollectionInfo.getColumnCount(paramObject);
    }
    
    public final int getCollectionInfoRowCount(Object paramObject)
    {
      return AccessibilityNodeInfoCompatKitKat.CollectionInfo.getRowCount(paramObject);
    }
    
    public final int getCollectionItemColumnIndex(Object paramObject)
    {
      return AccessibilityNodeInfoCompatKitKat.CollectionItemInfo.getColumnIndex(paramObject);
    }
    
    public final int getCollectionItemColumnSpan(Object paramObject)
    {
      return AccessibilityNodeInfoCompatKitKat.CollectionItemInfo.getColumnSpan(paramObject);
    }
    
    public final Object getCollectionItemInfo(Object paramObject)
    {
      return AccessibilityNodeInfoCompatKitKat.getCollectionItemInfo(paramObject);
    }
    
    public final int getCollectionItemRowIndex(Object paramObject)
    {
      return AccessibilityNodeInfoCompatKitKat.CollectionItemInfo.getRowIndex(paramObject);
    }
    
    public final int getCollectionItemRowSpan(Object paramObject)
    {
      return AccessibilityNodeInfoCompatKitKat.CollectionItemInfo.getRowSpan(paramObject);
    }
    
    public final int getLiveRegion(Object paramObject)
    {
      return AccessibilityNodeInfoCompatKitKat.getLiveRegion(paramObject);
    }
    
    public final Object getRangeInfo(Object paramObject)
    {
      return AccessibilityNodeInfoCompatKitKat.getRangeInfo(paramObject);
    }
    
    public final boolean isCollectionInfoHierarchical(Object paramObject)
    {
      return AccessibilityNodeInfoCompatKitKat.CollectionInfo.isHierarchical(paramObject);
    }
    
    public final boolean isCollectionItemHeading(Object paramObject)
    {
      return AccessibilityNodeInfoCompatKitKat.CollectionItemInfo.isHeading(paramObject);
    }
    
    public Object obtainCollectionInfo(int paramInt1, int paramInt2, boolean paramBoolean, int paramInt3)
    {
      return AccessibilityNodeInfoCompatKitKat.obtainCollectionInfo$50cb9c52(paramInt1, paramInt2, paramBoolean);
    }
    
    public Object obtainCollectionItemInfo$771e0323(int paramInt1, int paramInt2, int paramInt3, int paramInt4, boolean paramBoolean)
    {
      return AccessibilityNodeInfoCompatKitKat.obtainCollectionItemInfo(paramInt1, paramInt2, paramInt3, paramInt4, paramBoolean);
    }
    
    public final void setCollectionInfo(Object paramObject1, Object paramObject2)
    {
      AccessibilityNodeInfoCompatKitKat.setCollectionInfo(paramObject1, paramObject2);
    }
    
    public final void setCollectionItemInfo(Object paramObject1, Object paramObject2)
    {
      AccessibilityNodeInfoCompatKitKat.setCollectionItemInfo(paramObject1, paramObject2);
    }
    
    public final void setLiveRegion(Object paramObject, int paramInt)
    {
      AccessibilityNodeInfoCompatKitKat.setLiveRegion(paramObject, paramInt);
    }
  }
  
  static class AccessibilityNodeInfoStubImpl
    implements AccessibilityNodeInfoCompat.AccessibilityNodeInfoImpl
  {
    public void addAction(Object paramObject, int paramInt) {}
    
    public void addAction(Object paramObject, int paramInt, CharSequence paramCharSequence) {}
    
    public void addChild(Object paramObject, View paramView) {}
    
    public void addChild(Object paramObject, View paramView, int paramInt) {}
    
    public List<Object> findAccessibilityNodeInfosByText(Object paramObject, String paramString)
    {
      return Collections.emptyList();
    }
    
    public Object findFocus(Object paramObject, int paramInt)
    {
      return null;
    }
    
    public Object focusSearch(Object paramObject, int paramInt)
    {
      return null;
    }
    
    public List<Object> getActionList(Object paramObject)
    {
      return null;
    }
    
    public int getActions(Object paramObject)
    {
      return 0;
    }
    
    public void getBoundsInParent(Object paramObject, Rect paramRect) {}
    
    public void getBoundsInScreen(Object paramObject, Rect paramRect) {}
    
    public Object getChild(Object paramObject, int paramInt)
    {
      return null;
    }
    
    public int getChildCount(Object paramObject)
    {
      return 0;
    }
    
    public CharSequence getClassName(Object paramObject)
    {
      return null;
    }
    
    public Object getCollectionInfo(Object paramObject)
    {
      return null;
    }
    
    public int getCollectionInfoColumnCount(Object paramObject)
    {
      return 0;
    }
    
    public int getCollectionInfoRowCount(Object paramObject)
    {
      return 0;
    }
    
    public int getCollectionItemColumnIndex(Object paramObject)
    {
      return 0;
    }
    
    public int getCollectionItemColumnSpan(Object paramObject)
    {
      return 0;
    }
    
    public Object getCollectionItemInfo(Object paramObject)
    {
      return null;
    }
    
    public int getCollectionItemRowIndex(Object paramObject)
    {
      return 0;
    }
    
    public int getCollectionItemRowSpan(Object paramObject)
    {
      return 0;
    }
    
    public CharSequence getContentDescription(Object paramObject)
    {
      return null;
    }
    
    public int getLiveRegion(Object paramObject)
    {
      return 0;
    }
    
    public int getMovementGranularities(Object paramObject)
    {
      return 0;
    }
    
    public CharSequence getPackageName(Object paramObject)
    {
      return null;
    }
    
    public Object getParent(Object paramObject)
    {
      return null;
    }
    
    public Object getRangeInfo(Object paramObject)
    {
      return null;
    }
    
    public CharSequence getText(Object paramObject)
    {
      return null;
    }
    
    public String getViewIdResourceName(Object paramObject)
    {
      return null;
    }
    
    public int getWindowId(Object paramObject)
    {
      return 0;
    }
    
    public boolean isAccessibilityFocused(Object paramObject)
    {
      return false;
    }
    
    public boolean isCheckable(Object paramObject)
    {
      return false;
    }
    
    public boolean isChecked(Object paramObject)
    {
      return false;
    }
    
    public boolean isClickable(Object paramObject)
    {
      return false;
    }
    
    public boolean isCollectionInfoHierarchical(Object paramObject)
    {
      return false;
    }
    
    public boolean isCollectionItemHeading(Object paramObject)
    {
      return false;
    }
    
    public boolean isCollectionItemSelected(Object paramObject)
    {
      return false;
    }
    
    public boolean isEnabled(Object paramObject)
    {
      return false;
    }
    
    public boolean isFocusable(Object paramObject)
    {
      return false;
    }
    
    public boolean isFocused(Object paramObject)
    {
      return false;
    }
    
    public boolean isLongClickable(Object paramObject)
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
    
    public boolean isSelected(Object paramObject)
    {
      return false;
    }
    
    public boolean isVisibleToUser(Object paramObject)
    {
      return false;
    }
    
    public Object obtain()
    {
      return null;
    }
    
    public Object obtain(View paramView)
    {
      return null;
    }
    
    public Object obtain(View paramView, int paramInt)
    {
      return null;
    }
    
    public Object obtain(Object paramObject)
    {
      return null;
    }
    
    public Object obtainCollectionInfo(int paramInt1, int paramInt2, boolean paramBoolean, int paramInt3)
    {
      return null;
    }
    
    public Object obtainCollectionItemInfo$771e0323(int paramInt1, int paramInt2, int paramInt3, int paramInt4, boolean paramBoolean)
    {
      return null;
    }
    
    public boolean performAction(Object paramObject, int paramInt)
    {
      return false;
    }
    
    public boolean performAction(Object paramObject, int paramInt, Bundle paramBundle)
    {
      return false;
    }
    
    public void recycle(Object paramObject) {}
    
    public void setAccessibilityFocused(Object paramObject, boolean paramBoolean) {}
    
    public void setBoundsInParent(Object paramObject, Rect paramRect) {}
    
    public void setBoundsInScreen(Object paramObject, Rect paramRect) {}
    
    public void setCheckable(Object paramObject, boolean paramBoolean) {}
    
    public void setChecked(Object paramObject, boolean paramBoolean) {}
    
    public void setClassName(Object paramObject, CharSequence paramCharSequence) {}
    
    public void setClickable(Object paramObject, boolean paramBoolean) {}
    
    public void setCollectionInfo(Object paramObject1, Object paramObject2) {}
    
    public void setCollectionItemInfo(Object paramObject1, Object paramObject2) {}
    
    public void setContentDescription(Object paramObject, CharSequence paramCharSequence) {}
    
    public void setEnabled(Object paramObject, boolean paramBoolean) {}
    
    public void setFocusable(Object paramObject, boolean paramBoolean) {}
    
    public void setFocused(Object paramObject, boolean paramBoolean) {}
    
    public void setLiveRegion(Object paramObject, int paramInt) {}
    
    public void setLongClickable(Object paramObject, boolean paramBoolean) {}
    
    public void setMovementGranularities(Object paramObject, int paramInt) {}
    
    public void setPackageName(Object paramObject, CharSequence paramCharSequence) {}
    
    public void setParent(Object paramObject, View paramView) {}
    
    public void setParent(Object paramObject, View paramView, int paramInt) {}
    
    public void setPassword(Object paramObject, boolean paramBoolean) {}
    
    public void setScrollable(Object paramObject, boolean paramBoolean) {}
    
    public void setSelected(Object paramObject, boolean paramBoolean) {}
    
    public void setSource(Object paramObject, View paramView) {}
    
    public void setSource(Object paramObject, View paramView, int paramInt) {}
    
    public void setText(Object paramObject, CharSequence paramCharSequence) {}
    
    public void setViewIdResourceName(Object paramObject, String paramString) {}
    
    public void setVisibleToUser(Object paramObject, boolean paramBoolean) {}
  }
  
  public static final class CollectionInfoCompat
  {
    public static final int SELECTION_MODE_MULTIPLE = 2;
    public static final int SELECTION_MODE_NONE = 0;
    public static final int SELECTION_MODE_SINGLE = 1;
    public final Object mInfo;
    
    public CollectionInfoCompat(Object paramObject)
    {
      mInfo = paramObject;
    }
    
    private int getColumnCount()
    {
      return AccessibilityNodeInfoCompat.access$000().getCollectionInfoColumnCount(mInfo);
    }
    
    private int getRowCount()
    {
      return AccessibilityNodeInfoCompat.access$000().getCollectionInfoRowCount(mInfo);
    }
    
    private boolean isHierarchical()
    {
      return AccessibilityNodeInfoCompat.access$000().isCollectionInfoHierarchical(mInfo);
    }
    
    private static CollectionInfoCompat obtain(int paramInt1, int paramInt2, boolean paramBoolean, int paramInt3)
    {
      return new CollectionInfoCompat(AccessibilityNodeInfoCompat.access$000().obtainCollectionInfo(paramInt1, paramInt2, paramBoolean, paramInt3));
    }
  }
  
  public static final class CollectionItemInfoCompat
  {
    final Object mInfo;
    
    private CollectionItemInfoCompat(Object paramObject)
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
  
  public static final class RangeInfoCompat
  {
    public static final int RANGE_TYPE_FLOAT = 1;
    public static final int RANGE_TYPE_INT = 0;
    public static final int RANGE_TYPE_PERCENT = 2;
    private final Object mInfo;
    
    private RangeInfoCompat(Object paramObject)
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
}

/* Location:
 * Qualified Name:     android.support.v4.view.accessibility.AccessibilityNodeInfoCompat
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */