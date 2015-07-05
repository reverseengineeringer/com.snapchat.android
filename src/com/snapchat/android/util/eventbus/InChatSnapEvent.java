package com.snapchat.android.util.eventbus;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class InChatSnapEvent
  implements Parcelable
{
  public static final Parcelable.Creator<InChatSnapEvent> CREATOR = new Parcelable.Creator() {};
  public String mCaption;
  public int mOriginatingFragment;
  public String mRecipients;
  
  public InChatSnapEvent(Parcel paramParcel)
  {
    mRecipients = paramParcel.readString();
    mCaption = paramParcel.readString();
    mOriginatingFragment = paramParcel.readInt();
  }
  
  public InChatSnapEvent(String paramString1, String paramString2)
  {
    mRecipients = paramString1;
    mCaption = paramString2;
    mOriginatingFragment = 0;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(mRecipients);
    paramParcel.writeString(mCaption);
    paramParcel.writeInt(mOriginatingFragment);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.util.eventbus.InChatSnapEvent
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */