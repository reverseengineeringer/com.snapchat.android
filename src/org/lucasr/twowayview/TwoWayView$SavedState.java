package org.lucasr.twowayview;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.support.v4.util.LongSparseArray;
import android.util.SparseBooleanArray;
import android.view.View.BaseSavedState;

class TwoWayView$SavedState
  extends View.BaseSavedState
{
  public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator()
  {
    public final TwoWayView.SavedState createFromParcel(Parcel paramAnonymousParcel)
    {
      return new TwoWayView.SavedState(paramAnonymousParcel, null);
    }
    
    public final TwoWayView.SavedState[] newArray(int paramAnonymousInt)
    {
      return new TwoWayView.SavedState[paramAnonymousInt];
    }
  };
  LongSparseArray<Integer> checkIdState;
  SparseBooleanArray checkState;
  int checkedItemCount;
  long firstId;
  int position;
  long selectedId;
  int size;
  int viewStart;
  
  private TwoWayView$SavedState(Parcel paramParcel)
  {
    super(paramParcel);
    selectedId = paramParcel.readLong();
    firstId = paramParcel.readLong();
    viewStart = paramParcel.readInt();
    position = paramParcel.readInt();
    size = paramParcel.readInt();
    checkedItemCount = paramParcel.readInt();
    checkState = paramParcel.readSparseBooleanArray();
    int j = paramParcel.readInt();
    if (j > 0)
    {
      checkIdState = new LongSparseArray();
      int i = 0;
      while (i < j)
      {
        long l = paramParcel.readLong();
        int k = paramParcel.readInt();
        checkIdState.put(l, Integer.valueOf(k));
        i += 1;
      }
    }
  }
  
  TwoWayView$SavedState(Parcelable paramParcelable)
  {
    super(paramParcelable);
  }
  
  public String toString()
  {
    return "TwoWayView.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " selectedId=" + selectedId + " firstId=" + firstId + " viewStart=" + viewStart + " size=" + size + " position=" + position + " checkState=" + checkState + "}";
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    int i = 0;
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeLong(selectedId);
    paramParcel.writeLong(firstId);
    paramParcel.writeInt(viewStart);
    paramParcel.writeInt(position);
    paramParcel.writeInt(size);
    paramParcel.writeInt(checkedItemCount);
    paramParcel.writeSparseBooleanArray(checkState);
    if (checkIdState != null) {}
    for (paramInt = checkIdState.size();; paramInt = 0)
    {
      paramParcel.writeInt(paramInt);
      while (i < paramInt)
      {
        paramParcel.writeLong(checkIdState.keyAt(i));
        paramParcel.writeInt(((Integer)checkIdState.valueAt(i)).intValue());
        i += 1;
      }
    }
  }
}

/* Location:
 * Qualified Name:     org.lucasr.twowayview.TwoWayView.SavedState
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */