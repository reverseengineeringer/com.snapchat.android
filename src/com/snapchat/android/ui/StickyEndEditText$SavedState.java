package com.snapchat.android.ui;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.view.View.BaseSavedState;
import chc;

class StickyEndEditText$SavedState
  extends View.BaseSavedState
{
  public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator() {};
  String a;
  
  private StickyEndEditText$SavedState(Parcel paramParcel)
  {
    super(paramParcel);
    a = paramParcel.readString();
  }
  
  StickyEndEditText$SavedState(Parcelable paramParcelable)
  {
    super(paramParcelable);
  }
  
  public void writeToParcel(@chc Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeString(a);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.StickyEndEditText.SavedState
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */