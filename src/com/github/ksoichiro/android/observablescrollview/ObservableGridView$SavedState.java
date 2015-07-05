package com.github.ksoichiro.android.observablescrollview;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.util.SparseIntArray;
import android.view.View.BaseSavedState;

class ObservableGridView$SavedState
  extends View.BaseSavedState
{
  public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator() {};
  int a;
  int b = -1;
  int c;
  int d;
  int e;
  SparseIntArray f;
  
  private ObservableGridView$SavedState(Parcel paramParcel)
  {
    super(paramParcel);
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
  
  private ObservableGridView$SavedState(Parcelable paramParcelable)
  {
    super(paramParcelable);
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

/* Location:
 * Qualified Name:     com.github.ksoichiro.android.observablescrollview.ObservableGridView.SavedState
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */