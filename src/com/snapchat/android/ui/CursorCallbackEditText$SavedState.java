package com.snapchat.android.ui;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.view.View.BaseSavedState;
import cgb;

class CursorCallbackEditText$SavedState
  extends View.BaseSavedState
{
  public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator() {};
  String a;
  
  private CursorCallbackEditText$SavedState(Parcel paramParcel)
  {
    super(paramParcel);
    a = paramParcel.readString();
  }
  
  CursorCallbackEditText$SavedState(Parcelable paramParcelable)
  {
    super(paramParcelable);
  }
  
  public void writeToParcel(@cgb Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeString(a);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.CursorCallbackEditText.SavedState
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */