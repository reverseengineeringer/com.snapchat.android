package com.github.ksoichiro.android.observablescrollview;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.view.View.BaseSavedState;

class ObservableWebView$SavedState
  extends View.BaseSavedState
{
  public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator() {};
  int a;
  int b;
  
  private ObservableWebView$SavedState(Parcel paramParcel)
  {
    super(paramParcel);
    a = paramParcel.readInt();
    b = paramParcel.readInt();
  }
  
  private ObservableWebView$SavedState(Parcelable paramParcelable)
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
 * Qualified Name:     com.github.ksoichiro.android.observablescrollview.ObservableWebView.SavedState
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */