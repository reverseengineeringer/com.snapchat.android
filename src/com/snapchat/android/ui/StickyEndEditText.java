package com.snapchat.android.ui;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.text.Editable;
import android.util.AttributeSet;
import android.view.View.BaseSavedState;
import chc;

public class StickyEndEditText
  extends BackNavigationEditText
{
  public StickyEndEditText(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public void onRestoreInstanceState(Parcelable paramParcelable)
  {
    if (!(paramParcelable instanceof SavedState))
    {
      super.onRestoreInstanceState(paramParcelable);
      return;
    }
    paramParcelable = (SavedState)paramParcelable;
    super.onRestoreInstanceState(paramParcelable.getSuperState());
    setText(a);
  }
  
  public Parcelable onSaveInstanceState()
  {
    SavedState localSavedState = new SavedState(super.onSaveInstanceState());
    a = getText().toString();
    return localSavedState;
  }
  
  public void onSelectionChanged(int paramInt1, int paramInt2)
  {
    Editable localEditable = getText();
    if ((localEditable != null) && ((paramInt1 != localEditable.length()) || (paramInt2 != localEditable.length())))
    {
      setSelection(localEditable.length(), localEditable.length());
      return;
    }
    super.onSelectionChanged(paramInt1, paramInt2);
  }
  
  static class SavedState
    extends View.BaseSavedState
  {
    public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator() {};
    String a;
    
    private SavedState(Parcel paramParcel)
    {
      super();
      a = paramParcel.readString();
    }
    
    SavedState(Parcelable paramParcelable)
    {
      super();
    }
    
    public void writeToParcel(@chc Parcel paramParcel, int paramInt)
    {
      super.writeToParcel(paramParcel, paramInt);
      paramParcel.writeString(a);
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.StickyEndEditText
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */