package com.github.ksoichiro.android.observablescrollview;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.util.AttributeSet;
import android.util.SparseIntArray;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.BaseSavedState;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import android.widget.GridView;
import br;

public class ObservableGridView
  extends GridView
{
  private int a;
  private int b = -1;
  private int c;
  private int d;
  private int e;
  private SparseIntArray f;
  private br g;
  private int h;
  private boolean i;
  private boolean j;
  private boolean k;
  private MotionEvent l;
  private ViewGroup m;
  private AbsListView.OnScrollListener n;
  private AbsListView.OnScrollListener o = new AbsListView.OnScrollListener()
  {
    public final void onScroll(AbsListView paramAnonymousAbsListView, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3)
    {
      if (ObservableGridView.a(ObservableGridView.this) != null) {
        ObservableGridView.a(ObservableGridView.this).onScroll(paramAnonymousAbsListView, paramAnonymousInt1, paramAnonymousInt2, paramAnonymousInt3);
      }
      ObservableGridView.b(ObservableGridView.this);
    }
    
    public final void onScrollStateChanged(AbsListView paramAnonymousAbsListView, int paramAnonymousInt)
    {
      if (ObservableGridView.a(ObservableGridView.this) != null) {
        ObservableGridView.a(ObservableGridView.this).onScrollStateChanged(paramAnonymousAbsListView, paramAnonymousInt);
      }
    }
  };
  
  public ObservableGridView(Context paramContext)
  {
    super(paramContext);
    a();
  }
  
  public ObservableGridView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a();
  }
  
  public ObservableGridView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a();
  }
  
  private void a()
  {
    f = new SparseIntArray();
    super.setOnScrollListener(o);
  }
  
  public int getCurrentScrollY()
  {
    return e;
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    if (g != null) {
      switch (paramMotionEvent.getActionMasked())
      {
      }
    }
    for (;;)
    {
      return super.onInterceptTouchEvent(paramMotionEvent);
      j = true;
      i = true;
    }
  }
  
  public void onRestoreInstanceState(Parcelable paramParcelable)
  {
    paramParcelable = (SavedState)paramParcelable;
    a = a;
    b = b;
    c = c;
    d = d;
    e = e;
    f = f;
    super.onRestoreInstanceState(paramParcelable.getSuperState());
  }
  
  public Parcelable onSaveInstanceState()
  {
    SavedState localSavedState = new SavedState(super.onSaveInstanceState(), (byte)0);
    a = a;
    b = b;
    c = c;
    d = d;
    e = e;
    f = f;
    return localSavedState;
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    float f1 = 0.0F;
    if (g != null) {
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
        k = false;
        j = false;
        g.a(h);
      }
      if (l == null) {
        l = paramMotionEvent;
      }
      f2 = paramMotionEvent.getY();
      f3 = l.getY();
      l = MotionEvent.obtainNoHistory(paramMotionEvent);
    } while (getCurrentScrollY() - (f2 - f3) > 0.0F);
    if (k) {
      return false;
    }
    if (m == null) {}
    for (final ViewGroup localViewGroup = (ViewGroup)getParent();; localViewGroup = m)
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
      k = true;
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
  
  public void setOnScrollListener(AbsListView.OnScrollListener paramOnScrollListener)
  {
    n = paramOnScrollListener;
  }
  
  public void setScrollViewCallbacks(br parambr)
  {
    g = parambr;
  }
  
  public void setTouchInterceptionViewGroup(ViewGroup paramViewGroup)
  {
    m = paramViewGroup;
  }
  
  static class SavedState
    extends View.BaseSavedState
  {
    public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator() {};
    int a;
    int b = -1;
    int c;
    int d;
    int e;
    SparseIntArray f;
    
    private SavedState(Parcel paramParcel)
    {
      super();
      a = paramParcel.readInt();
      b = paramParcel.readInt();
      c = paramParcel.readInt();
      d = paramParcel.readInt();
      e = paramParcel.readInt();
      f = new SparseIntArray();
      int j = paramParcel.readInt();
      if (j > 0)
      {
        int i = 0;
        while (i < j)
        {
          int k = paramParcel.readInt();
          int m = paramParcel.readInt();
          f.put(k, m);
          i += 1;
        }
      }
    }
    
    private SavedState(Parcelable paramParcelable)
    {
      super();
    }
    
    public void writeToParcel(Parcel paramParcel, int paramInt)
    {
      int i = 0;
      super.writeToParcel(paramParcel, paramInt);
      paramParcel.writeInt(a);
      paramParcel.writeInt(b);
      paramParcel.writeInt(c);
      paramParcel.writeInt(d);
      paramParcel.writeInt(e);
      if (f == null) {}
      for (paramInt = 0;; paramInt = f.size())
      {
        paramParcel.writeInt(paramInt);
        if (paramInt <= 0) {
          break;
        }
        while (i < paramInt)
        {
          paramParcel.writeInt(f.keyAt(i));
          paramParcel.writeInt(f.valueAt(i));
          i += 1;
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.github.ksoichiro.android.observablescrollview.ObservableGridView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */