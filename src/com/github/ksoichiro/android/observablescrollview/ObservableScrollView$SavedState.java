package com.github.ksoichiro.android.observablescrollview;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.view.View.BaseSavedState;

class ObservableScrollView$SavedState
  extends View.BaseSavedState
{
  public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator() {};
  int a;
  int b;
  
  private ObservableScrollView$SavedState(Parcel paramParcel)
  {
    super(paramParcel);
    a = paramParcel.readInt();
    b = paramParcel.readInt();
  }
  
  private ObservableScrollView$SavedState(Parcelable paramParcelable)
  {
    super(paramParcelable);
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeInt(a);
    paramParcel.writeInt(b);
  }
}

/* Location:
 * Qualified Name:     com.github.ksoichiro.android.observablescrollview.ObservableScrollView.SavedState
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */