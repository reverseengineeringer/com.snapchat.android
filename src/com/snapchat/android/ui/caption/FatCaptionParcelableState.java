package com.snapchat.android.ui.caption;

import android.os.Parcel;
import android.os.Parcelable;

public class FatCaptionParcelableState
  implements Parcelable
{
  protected float a;
  protected float b;
  protected float[] c;
  protected float d;
  protected float e;
  protected int f;
  protected int g;
  protected double h;
  protected double i;
  
  public FatCaptionParcelableState(FatCaptionEditText paramFatCaptionEditText)
  {
    a = s;
    b = t;
    c = paramFatCaptionEditText.getLastSelectedCenterPoint();
    d = paramFatCaptionEditText.getLastSelectedPositionX();
    e = paramFatCaptionEditText.getLastSelectedPositionY();
    f = paramFatCaptionEditText.getWidth();
    g = paramFatCaptionEditText.getHeight();
    h = v;
    i = u;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeFloat(a);
    paramParcel.writeFloat(b);
    paramParcel.writeFloatArray(c);
    paramParcel.writeFloat(d);
    paramParcel.writeFloat(e);
    paramParcel.writeInt(f);
    paramParcel.writeInt(g);
    paramParcel.writeDouble(h);
    paramParcel.writeDouble(i);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.caption.FatCaptionParcelableState
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */