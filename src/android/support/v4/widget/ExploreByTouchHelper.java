package android.support.v4.widget;

import android.content.Context;
import android.graphics.Rect;
import android.os.Bundle;
import android.support.v4.view.AccessibilityDelegateCompat;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewParentCompat;
import android.support.v4.view.accessibility.AccessibilityEventCompat;
import android.support.v4.view.accessibility.AccessibilityManagerCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.AccessibilityNodeInfoImpl;
import android.support.v4.view.accessibility.AccessibilityNodeProviderCompat;
import android.support.v4.view.accessibility.AccessibilityRecordCompat;
import android.support.v4.view.accessibility.AccessibilityRecordCompat.AccessibilityRecordImpl;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

public abstract class ExploreByTouchHelper
  extends AccessibilityDelegateCompat
{
  private static final String DEFAULT_CLASS_NAME = View.class.getName();
  public static final int INVALID_ID = Integer.MIN_VALUE;
  private int mFocusedVirtualViewId = Integer.MIN_VALUE;
  private int mHoveredVirtualViewId = Integer.MIN_VALUE;
  private final AccessibilityManager mManager;
  private ExploreByTouchNodeProvider mNodeProvider;
  private final int[] mTempGlobalRect = new int[2];
  private final Rect mTempParentRect = new Rect();
  private final Rect mTempScreenRect = new Rect();
  private final Rect mTempVisibleRect = new Rect();
  private final View mView;
  
  private ExploreByTouchHelper(View paramView)
  {
    if (paramView == null) {
      throw new IllegalArgumentException("View may not be null");
    }
    mView = paramView;
    mManager = ((AccessibilityManager)paramView.getContext().getSystemService("accessibility"));
  }
  
  private boolean clearAccessibilityFocus(int paramInt)
  {
    if (isAccessibilityFocused(paramInt))
    {
      mFocusedVirtualViewId = Integer.MIN_VALUE;
      mView.invalidate();
      sendEventForVirtualView(paramInt, 65536);
      return true;
    }
    return false;
  }
  
  private AccessibilityEvent createEvent(int paramInt1, int paramInt2)
  {
    AccessibilityEvent localAccessibilityEvent;
    switch (paramInt1)
    {
    default: 
      localAccessibilityEvent = AccessibilityEvent.obtain(paramInt2);
      localAccessibilityEvent.setEnabled(true);
      localAccessibilityEvent.setClassName(DEFAULT_CLASS_NAME);
      if ((localAccessibilityEvent.getText().isEmpty()) && (localAccessibilityEvent.getContentDescription() == null)) {
        throw new RuntimeException("Callbacks must add text or a content description in populateEventForVirtualViewId()");
      }
      break;
    case -1: 
      localAccessibilityEvent = AccessibilityEvent.obtain(paramInt2);
      ViewCompat.onInitializeAccessibilityEvent(mView, localAccessibilityEvent);
      return localAccessibilityEvent;
    }
    localAccessibilityEvent.setPackageName(mView.getContext().getPackageName());
    AccessibilityRecordCompat localAccessibilityRecordCompat = AccessibilityEventCompat.asRecord(localAccessibilityEvent);
    View localView = mView;
    AccessibilityRecordCompat.IMPL.setSource(mRecord, localView, paramInt1);
    return localAccessibilityEvent;
  }
  
  private AccessibilityEvent createEventForChild(int paramInt1, int paramInt2)
  {
    AccessibilityEvent localAccessibilityEvent = AccessibilityEvent.obtain(paramInt2);
    localAccessibilityEvent.setEnabled(true);
    localAccessibilityEvent.setClassName(DEFAULT_CLASS_NAME);
    if ((localAccessibilityEvent.getText().isEmpty()) && (localAccessibilityEvent.getContentDescription() == null)) {
      throw new RuntimeException("Callbacks must add text or a content description in populateEventForVirtualViewId()");
    }
    localAccessibilityEvent.setPackageName(mView.getContext().getPackageName());
    AccessibilityRecordCompat localAccessibilityRecordCompat = AccessibilityEventCompat.asRecord(localAccessibilityEvent);
    View localView = mView;
    AccessibilityRecordCompat.IMPL.setSource(mRecord, localView, paramInt1);
    return localAccessibilityEvent;
  }
  
  private AccessibilityEvent createEventForHost(int paramInt)
  {
    AccessibilityEvent localAccessibilityEvent = AccessibilityEvent.obtain(paramInt);
    ViewCompat.onInitializeAccessibilityEvent(mView, localAccessibilityEvent);
    return localAccessibilityEvent;
  }
  
  private AccessibilityNodeInfoCompat createNode(int paramInt)
  {
    AccessibilityNodeInfoCompat localAccessibilityNodeInfoCompat;
    switch (paramInt)
    {
    default: 
      localAccessibilityNodeInfoCompat = AccessibilityNodeInfoCompat.obtain();
      localAccessibilityNodeInfoCompat.setEnabled(true);
      localAccessibilityNodeInfoCompat.setClassName(DEFAULT_CLASS_NAME);
      if ((localAccessibilityNodeInfoCompat.getText() == null) && (localAccessibilityNodeInfoCompat.getContentDescription() == null)) {
        throw new RuntimeException("Callbacks must add text or a content description in populateNodeForVirtualViewId()");
      }
      break;
    case -1: 
      localAccessibilityNodeInfoCompat = AccessibilityNodeInfoCompat.obtain(mView);
      ViewCompat.onInitializeAccessibilityNodeInfo(mView, localAccessibilityNodeInfoCompat);
      localObject = new LinkedList().iterator();
      while (((Iterator)localObject).hasNext())
      {
        Integer localInteger = (Integer)((Iterator)localObject).next();
        View localView = mView;
        paramInt = localInteger.intValue();
        AccessibilityNodeInfoCompat.IMPL.addChild(mInfo, localView, paramInt);
      }
      return localAccessibilityNodeInfoCompat;
    }
    localAccessibilityNodeInfoCompat.getBoundsInParent(mTempParentRect);
    if (mTempParentRect.isEmpty()) {
      throw new RuntimeException("Callbacks must set parent bounds in populateNodeForVirtualViewId()");
    }
    int i = localAccessibilityNodeInfoCompat.getActions();
    if ((i & 0x40) != 0) {
      throw new RuntimeException("Callbacks must not add ACTION_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()");
    }
    if ((i & 0x80) != 0) {
      throw new RuntimeException("Callbacks must not add ACTION_CLEAR_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()");
    }
    localAccessibilityNodeInfoCompat.setPackageName(mView.getContext().getPackageName());
    Object localObject = mView;
    AccessibilityNodeInfoCompat.IMPL.setSource(mInfo, (View)localObject, paramInt);
    localAccessibilityNodeInfoCompat.setParent(mView);
    if (mFocusedVirtualViewId == paramInt)
    {
      localAccessibilityNodeInfoCompat.setAccessibilityFocused(true);
      localAccessibilityNodeInfoCompat.addAction(128);
    }
    for (;;)
    {
      if (intersectVisibleToUser(mTempParentRect))
      {
        localAccessibilityNodeInfoCompat.setVisibleToUser(true);
        localAccessibilityNodeInfoCompat.setBoundsInParent(mTempParentRect);
      }
      mView.getLocationOnScreen(mTempGlobalRect);
      paramInt = mTempGlobalRect[0];
      i = mTempGlobalRect[1];
      mTempScreenRect.set(mTempParentRect);
      mTempScreenRect.offset(paramInt, i);
      localAccessibilityNodeInfoCompat.setBoundsInScreen(mTempScreenRect);
      return localAccessibilityNodeInfoCompat;
      localAccessibilityNodeInfoCompat.setAccessibilityFocused(false);
      localAccessibilityNodeInfoCompat.addAction(64);
    }
  }
  
  private AccessibilityNodeInfoCompat createNodeForChild(int paramInt)
  {
    AccessibilityNodeInfoCompat localAccessibilityNodeInfoCompat = AccessibilityNodeInfoCompat.obtain();
    localAccessibilityNodeInfoCompat.setEnabled(true);
    localAccessibilityNodeInfoCompat.setClassName(DEFAULT_CLASS_NAME);
    if ((localAccessibilityNodeInfoCompat.getText() == null) && (localAccessibilityNodeInfoCompat.getContentDescription() == null)) {
      throw new RuntimeException("Callbacks must add text or a content description in populateNodeForVirtualViewId()");
    }
    localAccessibilityNodeInfoCompat.getBoundsInParent(mTempParentRect);
    if (mTempParentRect.isEmpty()) {
      throw new RuntimeException("Callbacks must set parent bounds in populateNodeForVirtualViewId()");
    }
    int i = localAccessibilityNodeInfoCompat.getActions();
    if ((i & 0x40) != 0) {
      throw new RuntimeException("Callbacks must not add ACTION_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()");
    }
    if ((i & 0x80) != 0) {
      throw new RuntimeException("Callbacks must not add ACTION_CLEAR_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()");
    }
    localAccessibilityNodeInfoCompat.setPackageName(mView.getContext().getPackageName());
    View localView = mView;
    AccessibilityNodeInfoCompat.IMPL.setSource(mInfo, localView, paramInt);
    localAccessibilityNodeInfoCompat.setParent(mView);
    if (mFocusedVirtualViewId == paramInt)
    {
      localAccessibilityNodeInfoCompat.setAccessibilityFocused(true);
      localAccessibilityNodeInfoCompat.addAction(128);
    }
    for (;;)
    {
      if (intersectVisibleToUser(mTempParentRect))
      {
        localAccessibilityNodeInfoCompat.setVisibleToUser(true);
        localAccessibilityNodeInfoCompat.setBoundsInParent(mTempParentRect);
      }
      mView.getLocationOnScreen(mTempGlobalRect);
      paramInt = mTempGlobalRect[0];
      i = mTempGlobalRect[1];
      mTempScreenRect.set(mTempParentRect);
      mTempScreenRect.offset(paramInt, i);
      localAccessibilityNodeInfoCompat.setBoundsInScreen(mTempScreenRect);
      return localAccessibilityNodeInfoCompat;
      localAccessibilityNodeInfoCompat.setAccessibilityFocused(false);
      localAccessibilityNodeInfoCompat.addAction(64);
    }
  }
  
  private AccessibilityNodeInfoCompat createNodeForHost()
  {
    AccessibilityNodeInfoCompat localAccessibilityNodeInfoCompat = AccessibilityNodeInfoCompat.obtain(mView);
    ViewCompat.onInitializeAccessibilityNodeInfo(mView, localAccessibilityNodeInfoCompat);
    Iterator localIterator = new LinkedList().iterator();
    while (localIterator.hasNext())
    {
      Integer localInteger = (Integer)localIterator.next();
      View localView = mView;
      int i = localInteger.intValue();
      AccessibilityNodeInfoCompat.IMPL.addChild(mInfo, localView, i);
    }
    return localAccessibilityNodeInfoCompat;
  }
  
  private boolean dispatchHoverEvent(MotionEvent paramMotionEvent)
  {
    boolean bool = true;
    if ((!mManager.isEnabled()) || (!AccessibilityManagerCompat.isTouchExplorationEnabled(mManager))) {
      bool = false;
    }
    int i;
    do
    {
      return bool;
      switch (paramMotionEvent.getAction())
      {
      case 8: 
      default: 
        return false;
      case 7: 
      case 9: 
        paramMotionEvent.getX();
        paramMotionEvent.getY();
        i = getVirtualViewAt$2548a28();
        updateHoveredVirtualView(i);
      }
    } while (i != Integer.MIN_VALUE);
    return false;
    if (mFocusedVirtualViewId != Integer.MIN_VALUE)
    {
      updateHoveredVirtualView(Integer.MIN_VALUE);
      return true;
    }
    return false;
  }
  
  private int getFocusedVirtualView()
  {
    return mFocusedVirtualViewId;
  }
  
  private boolean intersectVisibleToUser(Rect paramRect)
  {
    if ((paramRect == null) || (paramRect.isEmpty())) {
      return false;
    }
    if (mView.getWindowVisibility() != 0) {
      return false;
    }
    for (Object localObject = mView.getParent(); (localObject instanceof View); localObject = ((View)localObject).getParent())
    {
      localObject = (View)localObject;
      if ((ViewCompat.getAlpha((View)localObject) <= 0.0F) || (((View)localObject).getVisibility() != 0)) {
        return false;
      }
    }
    if (localObject == null) {
      return false;
    }
    if (!mView.getLocalVisibleRect(mTempVisibleRect)) {
      return false;
    }
    return paramRect.intersect(mTempVisibleRect);
  }
  
  private void invalidateRoot()
  {
    sendEventForVirtualView(-1, 2048);
  }
  
  private void invalidateVirtualView$13462e()
  {
    sendEventForVirtualView(-1, 2048);
  }
  
  private boolean isAccessibilityFocused(int paramInt)
  {
    return mFocusedVirtualViewId == paramInt;
  }
  
  private boolean manageFocusForChild$5985f823(int paramInt1, int paramInt2)
  {
    switch (paramInt2)
    {
    default: 
      return false;
    case 64: 
      if ((!mManager.isEnabled()) || (!AccessibilityManagerCompat.isTouchExplorationEnabled(mManager))) {
        return false;
      }
      if (!isAccessibilityFocused(paramInt1))
      {
        mFocusedVirtualViewId = paramInt1;
        mView.invalidate();
        sendEventForVirtualView(paramInt1, 32768);
        return true;
      }
      return false;
    }
    if (isAccessibilityFocused(paramInt1))
    {
      mFocusedVirtualViewId = Integer.MIN_VALUE;
      mView.invalidate();
      sendEventForVirtualView(paramInt1, 65536);
      return true;
    }
    return false;
  }
  
  private boolean performAction(int paramInt1, int paramInt2, Bundle paramBundle)
  {
    switch (paramInt1)
    {
    default: 
      switch (paramInt2)
      {
      default: 
        return onPerformActionForVirtualView$5985f823();
      }
      break;
    }
    return ViewCompat.performAccessibilityAction(mView, paramInt2, paramBundle);
    switch (paramInt2)
    {
    default: 
      return false;
    case 64: 
      if ((!mManager.isEnabled()) || (!AccessibilityManagerCompat.isTouchExplorationEnabled(mManager))) {
        return false;
      }
      if (!isAccessibilityFocused(paramInt1))
      {
        mFocusedVirtualViewId = paramInt1;
        mView.invalidate();
        sendEventForVirtualView(paramInt1, 32768);
        return true;
      }
      return false;
    }
    if (isAccessibilityFocused(paramInt1))
    {
      mFocusedVirtualViewId = Integer.MIN_VALUE;
      mView.invalidate();
      sendEventForVirtualView(paramInt1, 65536);
      return true;
    }
    return false;
  }
  
  private boolean performActionForChild$5985f823(int paramInt1, int paramInt2)
  {
    switch (paramInt2)
    {
    default: 
      return onPerformActionForVirtualView$5985f823();
    }
    switch (paramInt2)
    {
    default: 
      return false;
    case 64: 
      if ((!mManager.isEnabled()) || (!AccessibilityManagerCompat.isTouchExplorationEnabled(mManager))) {
        return false;
      }
      if (!isAccessibilityFocused(paramInt1))
      {
        mFocusedVirtualViewId = paramInt1;
        mView.invalidate();
        sendEventForVirtualView(paramInt1, 32768);
        return true;
      }
      return false;
    }
    if (isAccessibilityFocused(paramInt1))
    {
      mFocusedVirtualViewId = Integer.MIN_VALUE;
      mView.invalidate();
      sendEventForVirtualView(paramInt1, 65536);
      return true;
    }
    return false;
  }
  
  private boolean performActionForHost(int paramInt, Bundle paramBundle)
  {
    return ViewCompat.performAccessibilityAction(mView, paramInt, paramBundle);
  }
  
  private boolean requestAccessibilityFocus(int paramInt)
  {
    if ((!mManager.isEnabled()) || (!AccessibilityManagerCompat.isTouchExplorationEnabled(mManager))) {}
    while (isAccessibilityFocused(paramInt)) {
      return false;
    }
    mFocusedVirtualViewId = paramInt;
    mView.invalidate();
    sendEventForVirtualView(paramInt, 32768);
    return true;
  }
  
  private boolean sendEventForVirtualView(int paramInt1, int paramInt2)
  {
    if ((paramInt1 == Integer.MIN_VALUE) || (!mManager.isEnabled())) {}
    ViewParent localViewParent;
    do
    {
      return false;
      localViewParent = mView.getParent();
    } while (localViewParent == null);
    AccessibilityEvent localAccessibilityEvent;
    switch (paramInt1)
    {
    default: 
      localAccessibilityEvent = AccessibilityEvent.obtain(paramInt2);
      localAccessibilityEvent.setEnabled(true);
      localAccessibilityEvent.setClassName(DEFAULT_CLASS_NAME);
      if ((localAccessibilityEvent.getText().isEmpty()) && (localAccessibilityEvent.getContentDescription() == null)) {
        throw new RuntimeException("Callbacks must add text or a content description in populateEventForVirtualViewId()");
      }
      break;
    case -1: 
      localAccessibilityEvent = AccessibilityEvent.obtain(paramInt2);
      ViewCompat.onInitializeAccessibilityEvent(mView, localAccessibilityEvent);
    }
    for (;;)
    {
      return ViewParentCompat.requestSendAccessibilityEvent(localViewParent, mView, localAccessibilityEvent);
      localAccessibilityEvent.setPackageName(mView.getContext().getPackageName());
      AccessibilityRecordCompat localAccessibilityRecordCompat = AccessibilityEventCompat.asRecord(localAccessibilityEvent);
      View localView = mView;
      AccessibilityRecordCompat.IMPL.setSource(mRecord, localView, paramInt1);
    }
  }
  
  private void updateHoveredVirtualView(int paramInt)
  {
    if (mHoveredVirtualViewId == paramInt) {
      return;
    }
    int i = mHoveredVirtualViewId;
    mHoveredVirtualViewId = paramInt;
    sendEventForVirtualView(paramInt, 128);
    sendEventForVirtualView(i, 256);
  }
  
  public AccessibilityNodeProviderCompat getAccessibilityNodeProvider(View paramView)
  {
    if (mNodeProvider == null) {
      mNodeProvider = new ExploreByTouchNodeProvider((byte)0);
    }
    return mNodeProvider;
  }
  
  protected abstract int getVirtualViewAt$2548a28();
  
  protected abstract void getVisibleVirtualViews$61fb9e66();
  
  protected abstract boolean onPerformActionForVirtualView$5985f823();
  
  protected abstract void onPopulateEventForVirtualView$39677644();
  
  protected abstract void onPopulateNodeForVirtualView$5e449913();
  
  final class ExploreByTouchNodeProvider
    extends AccessibilityNodeProviderCompat
  {
    private ExploreByTouchNodeProvider() {}
    
    public final AccessibilityNodeInfoCompat createAccessibilityNodeInfo(int paramInt)
    {
      return ExploreByTouchHelper.access$100(ExploreByTouchHelper.this, paramInt);
    }
    
    public final boolean performAction(int paramInt1, int paramInt2, Bundle paramBundle)
    {
      return ExploreByTouchHelper.access$200(ExploreByTouchHelper.this, paramInt1, paramInt2, paramBundle);
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v4.widget.ExploreByTouchHelper
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */