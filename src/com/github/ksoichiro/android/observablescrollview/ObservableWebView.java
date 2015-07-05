package com.github.ksoichiro.android.observablescrollview;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.BaseSavedState;
import android.view.ViewGroup;
import android.webkit.WebView;
import br;
import bs;

public class ObservableWebView
  extends WebView
{
  private int a;
  private int b;
  private br c;
  private int d;
  private boolean e;
  private boolean f;
  private boolean g;
  private MotionEvent h;
  private ViewGroup i;
  
  public ObservableWebView(Context paramContext)
  {
    super(paramContext);
  }
  
  public ObservableWebView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public ObservableWebView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  public int getCurrentScrollY()
  {
    return b;
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    if (c != null) {
      switch (paramMotionEvent.getActionMasked())
      {
      }
    }
    for (;;)
    {
      return super.onInterceptTouchEvent(paramMotionEvent);
      f = true;
      e = true;
    }
  }
  
  public void onRestoreInstanceState(Parcelable paramParcelable)
  {
    paramParcelable = (SavedState)paramParcelable;
    a = a;
    b = b;
    super.onRestoreInstanceState(paramParcelable.getSuperState());
  }
  
  public Parcelable onSaveInstanceState()
  {
    SavedState localSavedState = new SavedState(super.onSaveInstanceState(), (byte)0);
    a = a;
    b = b;
    return localSavedState;
  }
  
  protected void onScrollChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onScrollChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    if (c != null)
    {
      b = paramInt2;
      c.a(paramInt2, e, f);
      if (e) {
        e = false;
      }
      if (a >= paramInt2) {
        break label72;
      }
      d = bs.b;
    }
    for (;;)
    {
      a = paramInt2;
      return;
      label72:
      if (paramInt2 < a) {
        d = bs.c;
      } else {
        d = bs.a;
      }
    }
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    float f1 = 0.0F;
    if (c != null) {
      switch (paramMotionEvent.getActionMasked())
      {
      }
    }
    float f2;
    float f3;
    do
    {
      for (;;)
      {
        return super.onTouchEvent(paramMotionEvent);
        g = false;
        f = false;
        c.a(d);
      }
      if (h == null) {
        h = paramMotionEvent;
      }
      f2 = paramMotionEvent.getY();
      f3 = h.getY();
      h = MotionEvent.obtainNoHistory(paramMotionEvent);
    } while (getCurrentScrollY() - (f2 - f3) > 0.0F);
    if (g) {
      return false;
    }
    if (i == null) {}
    for (final ViewGroup localViewGroup = (ViewGroup)getParent();; localViewGroup = i)
    {
      localObject = this;
      f2 = 0.0F;
      while ((localObject != null) && (localObject != localViewGroup))
      {
        f2 += ((View)localObject).getLeft() - ((View)localObject).getScrollX();
        f1 += ((View)localObject).getTop() - ((View)localObject).getScrollY();
        localObject = (View)((View)localObject).getParent();
      }
    }
    final Object localObject = MotionEvent.obtainNoHistory(paramMotionEvent);
    ((MotionEvent)localObject).offsetLocation(f2, f1);
    if (localViewGroup.onInterceptTouchEvent((MotionEvent)localObject))
    {
      g = true;
      ((MotionEvent)localObject).setAction(0);
      post(new Runnable()
      {
        public final void run()
        {
          localViewGroup.dispatchTouchEvent(localObject);
        }
      });
      return false;
    }
    return super.onTouchEvent(paramMotionEvent);
  }
  
  public void setScrollViewCallbacks(br parambr)
  {
    c = parambr;
  }
  
  public void setTouchInterceptionViewGroup(ViewGroup paramViewGroup)
  {
    i = paramViewGroup;
  }
  
  static class SavedState
    extends View.BaseSavedState
  {
    public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator() {};
    int a;
    int b;
    
    private SavedState(Parcel paramParcel)
    {
      super();
      a = paramParcel.readInt();
      b = paramParcel.readInt();
    }
    
    private SavedState(Parcelable paramParcelable)
    {
      super();
    }
    
    public void writeToParcel(Parcel paramParcel, int paramInt)
    {
      super.writeToParcel(paramParcel, paramInt);
      paramParcel.writeInt(a);
      paramParcel.writeInt(b);
    }
  }
}

/* Location:
 * Qualified Name:     com.github.ksoichiro.android.observablescrollview.ObservableWebView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */