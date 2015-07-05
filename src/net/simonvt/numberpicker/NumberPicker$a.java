package net.simonvt.numberpicker;

import android.content.Context;
import android.graphics.Rect;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeProvider;
import android.widget.Button;
import android.widget.EditText;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

final class NumberPicker$a
  extends AccessibilityNodeProvider
{
  private final Rect b = new Rect();
  private final int[] c = new int[2];
  private int d = Integer.MIN_VALUE;
  
  NumberPicker$a(NumberPicker paramNumberPicker) {}
  
  private AccessibilityNodeInfo a(int paramInt1, String paramString, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
  {
    AccessibilityNodeInfo localAccessibilityNodeInfo = AccessibilityNodeInfo.obtain();
    localAccessibilityNodeInfo.setClassName(Button.class.getName());
    localAccessibilityNodeInfo.setPackageName(a.getContext().getPackageName());
    localAccessibilityNodeInfo.setSource(a, paramInt1);
    localAccessibilityNodeInfo.setParent(a);
    localAccessibilityNodeInfo.setText(paramString);
    localAccessibilityNodeInfo.setClickable(true);
    localAccessibilityNodeInfo.setLongClickable(true);
    localAccessibilityNodeInfo.setEnabled(a.isEnabled());
    paramString = b;
    paramString.set(paramInt2, paramInt3, paramInt4, paramInt5);
    localAccessibilityNodeInfo.setBoundsInParent(paramString);
    int[] arrayOfInt = c;
    a.getLocationOnScreen(arrayOfInt);
    paramString.offset(arrayOfInt[0], arrayOfInt[1]);
    localAccessibilityNodeInfo.setBoundsInScreen(paramString);
    if (d != paramInt1) {
      localAccessibilityNodeInfo.addAction(64);
    }
    if (d == paramInt1) {
      localAccessibilityNodeInfo.addAction(128);
    }
    if (a.isEnabled()) {
      localAccessibilityNodeInfo.addAction(16);
    }
    return localAccessibilityNodeInfo;
  }
  
  private void a(int paramInt1, int paramInt2, String paramString)
  {
    if (((AccessibilityManager)a.getContext().getSystemService("accessibility")).isEnabled())
    {
      AccessibilityEvent localAccessibilityEvent = AccessibilityEvent.obtain(paramInt2);
      localAccessibilityEvent.setClassName(Button.class.getName());
      localAccessibilityEvent.setPackageName(a.getContext().getPackageName());
      localAccessibilityEvent.getText().add(paramString);
      localAccessibilityEvent.setEnabled(a.isEnabled());
      localAccessibilityEvent.setSource(a, paramInt1);
      a.requestSendAccessibilityEvent(a, localAccessibilityEvent);
    }
  }
  
  private void a(String paramString, int paramInt, List<AccessibilityNodeInfo> paramList)
  {
    switch (paramInt)
    {
    }
    Object localObject;
    do
    {
      do
      {
        do
        {
          return;
          localObject = c();
        } while ((TextUtils.isEmpty((CharSequence)localObject)) || (!((String)localObject).toString().toLowerCase().contains(paramString)));
        paramList.add(createAccessibilityNodeInfo(3));
        return;
        localObject = NumberPicker.b(a).getText();
        if ((!TextUtils.isEmpty((CharSequence)localObject)) && (((CharSequence)localObject).toString().toLowerCase().contains(paramString)))
        {
          paramList.add(createAccessibilityNodeInfo(2));
          return;
        }
        localObject = NumberPicker.b(a).getText();
      } while ((TextUtils.isEmpty((CharSequence)localObject)) || (!((CharSequence)localObject).toString().toLowerCase().contains(paramString)));
      paramList.add(createAccessibilityNodeInfo(2));
      return;
      localObject = d();
    } while ((TextUtils.isEmpty((CharSequence)localObject)) || (!((String)localObject).toString().toLowerCase().contains(paramString)));
    paramList.add(createAccessibilityNodeInfo(1));
  }
  
  private boolean a()
  {
    return (a.getWrapSelectorWheel()) || (a.getValue() > a.getMinValue());
  }
  
  private boolean b()
  {
    return (a.getWrapSelectorWheel()) || (a.getValue() < a.getMaxValue());
  }
  
  private String c()
  {
    int j = NumberPicker.o(a) - 1;
    int i = j;
    if (NumberPicker.p(a)) {
      i = NumberPicker.a(a, j);
    }
    if (i >= NumberPicker.q(a))
    {
      if (NumberPicker.c(a) == null) {
        return NumberPicker.b(a, i);
      }
      return NumberPicker.c(a)[(i - NumberPicker.q(a))];
    }
    return null;
  }
  
  private String d()
  {
    int j = NumberPicker.o(a) + 1;
    int i = j;
    if (NumberPicker.p(a)) {
      i = NumberPicker.a(a, j);
    }
    if (i <= NumberPicker.d(a))
    {
      if (NumberPicker.c(a) == null) {
        return NumberPicker.b(a, i);
      }
      return NumberPicker.c(a)[(i - NumberPicker.q(a))];
    }
    return null;
  }
  
  public final void a(int paramInt1, int paramInt2)
  {
    switch (paramInt1)
    {
    }
    do
    {
      do
      {
        do
        {
          return;
        } while (!a());
        a(paramInt1, paramInt2, c());
        return;
      } while (!((AccessibilityManager)a.getContext().getSystemService("accessibility")).isEnabled());
      AccessibilityEvent localAccessibilityEvent = AccessibilityEvent.obtain(paramInt2);
      NumberPicker.b(a).onInitializeAccessibilityEvent(localAccessibilityEvent);
      NumberPicker.b(a).onPopulateAccessibilityEvent(localAccessibilityEvent);
      localAccessibilityEvent.setSource(a, 2);
      a.requestSendAccessibilityEvent(a, localAccessibilityEvent);
      return;
    } while (!b());
    a(paramInt1, paramInt2, d());
  }
  
  public final AccessibilityNodeInfo createAccessibilityNodeInfo(int paramInt)
  {
    Object localObject;
    switch (paramInt)
    {
    case 0: 
    default: 
      localObject = super.createAccessibilityNodeInfo(paramInt);
    case -1: 
    case 3: 
    case 2: 
      AccessibilityNodeInfo localAccessibilityNodeInfo;
      do
      {
        return (AccessibilityNodeInfo)localObject;
        a.getScrollX();
        a.getScrollY();
        a.getScrollX();
        a.getRight();
        a.getLeft();
        a.getScrollY();
        a.getBottom();
        a.getTop();
        localObject = AccessibilityNodeInfo.obtain();
        ((AccessibilityNodeInfo)localObject).setClassName(NumberPicker.class.getName());
        ((AccessibilityNodeInfo)localObject).setPackageName(a.getContext().getPackageName());
        ((AccessibilityNodeInfo)localObject).setSource(a);
        if (a()) {
          ((AccessibilityNodeInfo)localObject).addChild(a, 3);
        }
        ((AccessibilityNodeInfo)localObject).addChild(a, 2);
        if (b()) {
          ((AccessibilityNodeInfo)localObject).addChild(a, 1);
        }
        ((AccessibilityNodeInfo)localObject).setParent((View)a.getParentForAccessibility());
        ((AccessibilityNodeInfo)localObject).setEnabled(a.isEnabled());
        ((AccessibilityNodeInfo)localObject).setScrollable(true);
        if (d != -1) {
          ((AccessibilityNodeInfo)localObject).addAction(64);
        }
        if (d == -1) {
          ((AccessibilityNodeInfo)localObject).addAction(128);
        }
        if (a.isEnabled())
        {
          if ((a.getWrapSelectorWheel()) || (a.getValue() < a.getMaxValue())) {
            ((AccessibilityNodeInfo)localObject).addAction(4096);
          }
          if ((a.getWrapSelectorWheel()) || (a.getValue() > a.getMinValue())) {
            ((AccessibilityNodeInfo)localObject).addAction(8192);
          }
        }
        return (AccessibilityNodeInfo)localObject;
        localObject = c();
        paramInt = a.getScrollX();
        int i = a.getScrollY();
        int j = a.getScrollX();
        int k = a.getRight();
        int m = a.getLeft();
        int n = NumberPicker.h(a);
        return a(3, (String)localObject, paramInt, i, k - m + j, NumberPicker.n(a) + n);
        localAccessibilityNodeInfo = NumberPicker.b(a).createAccessibilityNodeInfo();
        localAccessibilityNodeInfo.setSource(a, 2);
        if (d != 2) {
          localAccessibilityNodeInfo.addAction(64);
        }
        localObject = localAccessibilityNodeInfo;
      } while (d != 2);
      localAccessibilityNodeInfo.addAction(128);
      return localAccessibilityNodeInfo;
    }
    return a(1, d(), a.getScrollX(), NumberPicker.f(a) - NumberPicker.n(a), a.getScrollX() + (a.getRight() - a.getLeft()), a.getScrollY() + (a.getBottom() - a.getTop()));
  }
  
  public final List<AccessibilityNodeInfo> findAccessibilityNodeInfosByText(String paramString, int paramInt)
  {
    if (TextUtils.isEmpty(paramString)) {
      return Collections.emptyList();
    }
    String str = paramString.toLowerCase();
    ArrayList localArrayList = new ArrayList();
    switch (paramInt)
    {
    case 0: 
    default: 
      return super.findAccessibilityNodeInfosByText(paramString, paramInt);
    case -1: 
      a(str, 3, localArrayList);
      a(str, 2, localArrayList);
      a(str, 1, localArrayList);
      return localArrayList;
    }
    a(str, paramInt, localArrayList);
    return localArrayList;
  }
  
  public final boolean performAction(int paramInt1, int paramInt2, Bundle paramBundle)
  {
    boolean bool3 = false;
    boolean bool2 = false;
    boolean bool1;
    switch (paramInt1)
    {
    case 0: 
    default: 
      bool1 = super.performAction(paramInt1, paramInt2, paramBundle);
    }
    label206:
    label261:
    do
    {
      do
      {
        do
        {
          do
          {
            do
            {
              do
              {
                do
                {
                  do
                  {
                    do
                    {
                      do
                      {
                        do
                        {
                          do
                          {
                            do
                            {
                              do
                              {
                                do
                                {
                                  do
                                  {
                                    do
                                    {
                                      do
                                      {
                                        do
                                        {
                                          return bool1;
                                          switch (paramInt2)
                                          {
                                          default: 
                                            break;
                                          case 64: 
                                            bool1 = bool2;
                                          }
                                        } while (d == paramInt1);
                                        d = paramInt1;
                                        a.performAccessibilityAction(64, null);
                                        return true;
                                        bool1 = bool2;
                                      } while (d != paramInt1);
                                      d = Integer.MIN_VALUE;
                                      a.performAccessibilityAction(128, null);
                                      return true;
                                      bool1 = bool2;
                                    } while (!a.isEnabled());
                                    if (a.getWrapSelectorWheel()) {
                                      break label206;
                                    }
                                    bool1 = bool2;
                                  } while (a.getValue() >= a.getMaxValue());
                                  NumberPicker.a(a, true);
                                  return true;
                                  bool1 = bool2;
                                } while (!a.isEnabled());
                                if (a.getWrapSelectorWheel()) {
                                  break label261;
                                }
                                bool1 = bool2;
                              } while (a.getValue() <= a.getMinValue());
                              NumberPicker.a(a, false);
                              return true;
                              switch (paramInt2)
                              {
                              default: 
                                return NumberPicker.b(a).performAccessibilityAction(paramInt2, paramBundle);
                              case 1: 
                                bool1 = bool2;
                              }
                            } while (!a.isEnabled());
                            bool1 = bool2;
                          } while (NumberPicker.b(a).isFocused());
                          return NumberPicker.b(a).requestFocus();
                          bool1 = bool2;
                        } while (!a.isEnabled());
                        bool1 = bool2;
                      } while (!NumberPicker.b(a).isFocused());
                      NumberPicker.b(a).clearFocus();
                      return true;
                      bool1 = bool2;
                    } while (!a.isEnabled());
                    NumberPicker.l(a);
                    return true;
                    bool1 = bool2;
                  } while (d == paramInt1);
                  d = paramInt1;
                  a(paramInt1, 32768);
                  NumberPicker.b(a).invalidate();
                  return true;
                  bool1 = bool2;
                } while (d != paramInt1);
                d = Integer.MIN_VALUE;
                a(paramInt1, 65536);
                NumberPicker.b(a).invalidate();
                return true;
                switch (paramInt2)
                {
                default: 
                  return false;
                case 16: 
                  bool1 = bool2;
                }
              } while (!a.isEnabled());
              NumberPicker.a(a, true);
              a(paramInt1, 1);
              return true;
              bool1 = bool2;
            } while (d == paramInt1);
            d = paramInt1;
            a(paramInt1, 32768);
            a.invalidate(0, NumberPicker.f(a), a.getRight(), a.getBottom());
            return true;
            bool1 = bool2;
          } while (d != paramInt1);
          d = Integer.MIN_VALUE;
          a(paramInt1, 65536);
          a.invalidate(0, NumberPicker.f(a), a.getRight(), a.getBottom());
          return true;
          switch (paramInt2)
          {
          default: 
            return false;
          case 16: 
            bool1 = bool2;
          }
        } while (!a.isEnabled());
        bool1 = bool3;
        if (paramInt1 == 1) {
          bool1 = true;
        }
        NumberPicker.a(a, bool1);
        a(paramInt1, 1);
        return true;
        bool1 = bool2;
      } while (d == paramInt1);
      d = paramInt1;
      a(paramInt1, 32768);
      a.invalidate(0, 0, a.getRight(), NumberPicker.h(a));
      return true;
      bool1 = bool2;
    } while (d != paramInt1);
    d = Integer.MIN_VALUE;
    a(paramInt1, 65536);
    a.invalidate(0, 0, a.getRight(), NumberPicker.h(a));
    return true;
  }
}

/* Location:
 * Qualified Name:     net.simonvt.numberpicker.NumberPicker.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */