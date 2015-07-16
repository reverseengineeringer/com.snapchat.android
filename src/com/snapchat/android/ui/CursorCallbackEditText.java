package com.snapchat.android.ui;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.util.AttributeSet;
import android.view.View.BaseSavedState;
import android.widget.EditText;
import chc;
import java.util.Iterator;
import java.util.List;

public class CursorCallbackEditText
  extends EditText
{
  public List<a> a;
  
  public CursorCallbackEditText(Context paramContext)
  {
    super(paramContext);
  }
  
  public CursorCallbackEditText(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public CursorCallbackEditText(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
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
  
  protected void onSelectionChanged(int paramInt1, int paramInt2)
  {
    super.onSelectionChanged(paramInt1, paramInt2);
    if (a != null)
    {
      Iterator localIterator = a.iterator();
      while (localIterator.hasNext()) {
        ((a)localIterator.next()).a();
      }
    }
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
  
  public static abstract interface a
  {
    public abstract void a();
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.CursorCallbackEditText
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */