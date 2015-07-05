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
import android.widget.ListView;
import br;

public class ObservableListView
  extends ListView
{
  private int a;
  private int b;
  private SparseIntArray c;
  private br d;
  private int e;
  private boolean f;
  private boolean g;
  private boolean h;
  private MotionEvent i;
  private ViewGroup j;
  private AbsListView.OnScrollListener k;
  private AbsListView.OnScrollListener l = new AbsListView.OnScrollListener()
  {
    public final void onScroll(AbsListView paramAnonymousAbsListView, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3)
    {
      if (ObservableListView.a(ObservableListView.this) != null) {
        ObservableListView.a(ObservableListView.this).onScroll(paramAnonymousAbsListView, paramAnonymousInt1, paramAnonymousInt2, paramAnonymousInt3);
      }
      ObservableListView.b(ObservableListView.this);
    }
    
    public final void onScrollStateChanged(AbsListView paramAnonymousAbsListView, int paramAnonymousInt)
    {
      if (ObservableListView.a(ObservableListView.this) != null) {
        ObservableListView.a(ObservableListView.this).onScrollStateChanged(paramAnonymousAbsListView, paramAnonymousInt);
      }
    }
  };
  
  public ObservableListView(Context paramContext)
  {
    super(paramContext);
    a();
  }
  
  public ObservableListView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a();
  }
  
  public ObservableListView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a();
  }
  
  private void a()
  {
    c = new SparseIntArray();
    super.setOnScrollListener(l);
  }
  
  public int getCurrentScrollY()
  {
    return b;
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    if (d != null) {
      switch (paramMotionEvent.getActionMasked())
      {
      }
    }
    for (;;)
    {
      return super.onInterceptTouchEvent(paramMotionEvent);
      g = true;
      f = true;
    }
  }
  
  public void onRestoreInstanceState(Parcelable paramParcelable)
  {
    paramParcelable = (SavedState)paramParcelable;
    a = d;
    b = e;
    c = f;
    super.onRestoreInstanceState(paramParcelable.getSuperState());
  }
  
  public Parcelable onSaveInstanceState()
  {
    SavedState localSavedState = new SavedState(super.onSaveInstanceState(), (byte)0);
    d = a;
    e = b;
    f = c;
    return localSavedState;
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    float f1 = 0.0F;
    if (d != null) {
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
        h = false;
        g = false;
        d.a(e);
      }
      if (i == null) {
        i = paramMotionEvent;
      }
      f2 = paramMotionEvent.getY();
      f3 = i.getY();
      i = MotionEvent.obtainNoHistory(paramMotionEvent);
    } while (getCurrentScrollY() - (f2 - f3) > 0.0F);
    if (h) {
      return false;
    }
    if (j == null) {}
    for (final ViewGroup localViewGroup = (ViewGroup)getParent();; localViewGroup = j)
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
      h = true;
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
    k = paramOnScrollListener;
  }
  
  public void setScrollViewCallbacks(br parambr)
  {
    d = parambr;
  }
  
  public void setTouchInterceptionViewGroup(ViewGroup paramViewGroup)
  {
    j = paramViewGroup;
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
 * Qualified Name:     com.github.ksoichiro.android.observablescrollview.ObservableListView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */