package com.google.android.gms.internal;

import android.accounts.Account;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.auth.AccountChangeEventsRequest;
import com.google.android.gms.auth.AccountChangeEventsRequestCreator;
import com.google.android.gms.auth.AccountChangeEventsResponse;
import com.google.android.gms.auth.AccountChangeEventsResponseCreator;

public abstract interface zzr
  extends IInterface
{
  public abstract Bundle zza(Account paramAccount, String paramString, Bundle paramBundle);
  
  public abstract Bundle zza(String paramString, Bundle paramBundle);
  
  public abstract Bundle zza(String paramString1, String paramString2, Bundle paramBundle);
  
  public abstract AccountChangeEventsResponse zza(AccountChangeEventsRequest paramAccountChangeEventsRequest);
  
  public static abstract class zza
    extends Binder
    implements zzr
  {
    public static zzr zza(IBinder paramIBinder)
    {
      if (paramIBinder == null) {
        return null;
      }
      IInterface localIInterface = paramIBinder.queryLocalInterface("com.google.android.auth.IAuthManagerService");
      if ((localIInterface != null) && ((localIInterface instanceof zzr))) {
        return (zzr)localIInterface;
      }
      return new zza(paramIBinder);
    }
    
    public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
    {
      Object localObject = null;
      String str;
      switch (paramInt1)
      {
      default: 
        return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
      case 1598968902: 
        paramParcel2.writeString("com.google.android.auth.IAuthManagerService");
        return true;
      case 1: 
        paramParcel1.enforceInterface("com.google.android.auth.IAuthManagerService");
        localObject = paramParcel1.readString();
        str = paramParcel1.readString();
        if (paramParcel1.readInt() != 0)
        {
          paramParcel1 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1);
          paramParcel1 = zza((String)localObject, str, paramParcel1);
          paramParcel2.writeNoException();
          if (paramParcel1 == null) {
            break label148;
          }
          paramParcel2.writeInt(1);
          paramParcel1.writeToParcel(paramParcel2, 1);
        }
        for (;;)
        {
          return true;
          paramParcel1 = null;
          break;
          paramParcel2.writeInt(0);
        }
      case 2: 
        paramParcel1.enforceInterface("com.google.android.auth.IAuthManagerService");
        localObject = paramParcel1.readString();
        if (paramParcel1.readInt() != 0)
        {
          paramParcel1 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1);
          paramParcel1 = zza((String)localObject, paramParcel1);
          paramParcel2.writeNoException();
          if (paramParcel1 == null) {
            break label222;
          }
          paramParcel2.writeInt(1);
          paramParcel1.writeToParcel(paramParcel2, 1);
        }
        for (;;)
        {
          return true;
          paramParcel1 = null;
          break;
          paramParcel2.writeInt(0);
        }
      case 3: 
        label148:
        label222:
        paramParcel1.enforceInterface("com.google.android.auth.IAuthManagerService");
        if (paramParcel1.readInt() != 0) {
          localObject = AccountChangeEventsRequest.CREATOR.createFromParcel(paramParcel1);
        }
        paramParcel1 = zza((AccountChangeEventsRequest)localObject);
        paramParcel2.writeNoException();
        if (paramParcel1 != null)
        {
          paramParcel2.writeInt(1);
          paramParcel1.writeToParcel(paramParcel2, 1);
        }
        for (;;)
        {
          return true;
          paramParcel2.writeInt(0);
        }
      }
      paramParcel1.enforceInterface("com.google.android.auth.IAuthManagerService");
      if (paramParcel1.readInt() != 0)
      {
        localObject = (Account)Account.CREATOR.createFromParcel(paramParcel1);
        str = paramParcel1.readString();
        if (paramParcel1.readInt() == 0) {
          break label378;
        }
        paramParcel1 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1);
        label341:
        paramParcel1 = zza((Account)localObject, str, paramParcel1);
        paramParcel2.writeNoException();
        if (paramParcel1 == null) {
          break label383;
        }
        paramParcel2.writeInt(1);
        paramParcel1.writeToParcel(paramParcel2, 1);
      }
      for (;;)
      {
        return true;
        localObject = null;
        break;
        label378:
        paramParcel1 = null;
        break label341;
        label383:
        paramParcel2.writeInt(0);
      }
    }
    
    static class zza
      implements zzr
    {
      private IBinder zzle;
      
      zza(IBinder paramIBinder)
      {
        zzle = paramIBinder;
      }
      
      public IBinder asBinder()
      {
        return zzle;
      }
      
      public Bundle zza(Account paramAccount, String paramString, Bundle paramBundle)
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        for (;;)
        {
          try
          {
            localParcel1.writeInterfaceToken("com.google.android.auth.IAuthManagerService");
            if (paramAccount != null)
            {
              localParcel1.writeInt(1);
              paramAccount.writeToParcel(localParcel1, 0);
              localParcel1.writeString(paramString);
              if (paramBundle != null)
              {
                localParcel1.writeInt(1);
                paramBundle.writeToParcel(localParcel1, 0);
                zzle.transact(5, localParcel1, localParcel2, 0);
                localParcel2.readException();
                if (localParcel2.readInt() == 0) {
                  break label143;
                }
                paramAccount = (Bundle)Bundle.CREATOR.createFromParcel(localParcel2);
                return paramAccount;
              }
            }
            else
            {
              localParcel1.writeInt(0);
              continue;
            }
            localParcel1.writeInt(0);
          }
          finally
          {
            localParcel2.recycle();
            localParcel1.recycle();
          }
          continue;
          label143:
          paramAccount = null;
        }
      }
      
      public Bundle zza(String paramString, Bundle paramBundle)
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        for (;;)
        {
          try
          {
            localParcel1.writeInterfaceToken("com.google.android.auth.IAuthManagerService");
            localParcel1.writeString(paramString);
            if (paramBundle != null)
            {
              localParcel1.writeInt(1);
              paramBundle.writeToParcel(localParcel1, 0);
              zzle.transact(2, localParcel1, localParcel2, 0);
              localParcel2.readException();
              if (localParcel2.readInt() != 0)
              {
                paramString = (Bundle)Bundle.CREATOR.createFromParcel(localParcel2);
                return paramString;
              }
            }
            else
            {
              localParcel1.writeInt(0);
              continue;
            }
            paramString = null;
          }
          finally
          {
            localParcel2.recycle();
            localParcel1.recycle();
          }
        }
      }
      
      public Bundle zza(String paramString1, String paramString2, Bundle paramBundle)
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        for (;;)
        {
          try
          {
            localParcel1.writeInterfaceToken("com.google.android.auth.IAuthManagerService");
            localParcel1.writeString(paramString1);
            localParcel1.writeString(paramString2);
            if (paramBundle != null)
            {
              localParcel1.writeInt(1);
              paramBundle.writeToParcel(localParcel1, 0);
              zzle.transact(1, localParcel1, localParcel2, 0);
              localParcel2.readException();
              if (localParcel2.readInt() != 0)
              {
                paramString1 = (Bundle)Bundle.CREATOR.createFromParcel(localParcel2);
                return paramString1;
              }
            }
            else
            {
              localParcel1.writeInt(0);
              continue;
            }
            paramString1 = null;
          }
          finally
          {
            localParcel2.recycle();
            localParcel1.recycle();
          }
        }
      }
      
      public AccountChangeEventsResponse zza(AccountChangeEventsRequest paramAccountChangeEventsRequest)
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        for (;;)
        {
          try
          {
            localParcel1.writeInterfaceToken("com.google.android.auth.IAuthManagerService");
            if (paramAccountChangeEventsRequest != null)
            {
              localParcel1.writeInt(1);
              paramAccountChangeEventsRequest.writeToParcel(localParcel1, 0);
              zzle.transact(3, localParcel1, localParcel2, 0);
              localParcel2.readException();
              if (localParcel2.readInt() != 0)
              {
                paramAccountChangeEventsRequest = AccountChangeEventsResponse.CREATOR.createFromParcel(localParcel2);
                return paramAccountChangeEventsRequest;
              }
            }
            else
            {
              localParcel1.writeInt(0);
              continue;
            }
            paramAccountChangeEventsRequest = null;
          }
          finally
          {
            localParcel2.recycle();
            localParcel1.recycle();
          }
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */