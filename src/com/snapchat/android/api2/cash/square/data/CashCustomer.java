package com.snapchat.android.api2.cash.square.data;

import chc;
import chd;
import com.google.gson.annotations.SerializedName;

public final class CashCustomer
{
  @SerializedName("email")
  @chd
  private final String mEmail;
  @SerializedName("id")
  @chc
  private final String mId;
  @SerializedName("phone_number")
  @chd
  private final String mPhoneNumber;
  
  public CashCustomer(@chc String paramString)
  {
    mId = paramString;
    mEmail = null;
    mPhoneNumber = null;
  }
  
  public static enum Role
  {
    RECIPIENT,  SENDER;
    
    private Role() {}
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.api2.cash.square.data.CashCustomer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */