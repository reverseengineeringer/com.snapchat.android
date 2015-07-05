package com.google.android.gms.maps.model;

import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.maps.model.internal.zzj;
import com.google.android.gms.maps.model.internal.zzk.zza;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class IndoorBuilding
{
  private final zzj zzarm;
  
  public IndoorBuilding(zzj paramzzj)
  {
    zzarm = ((zzj)zzx.zzl(paramzzj));
  }
  
  public final boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof IndoorBuilding)) {
      return false;
    }
    try
    {
      boolean bool = zzarm.zzb(zzarm);
      return bool;
    }
    catch (RemoteException paramObject)
    {
      throw new RuntimeRemoteException((RemoteException)paramObject);
    }
  }
  
  public final int getActiveLevelIndex()
  {
    try
    {
      int i = zzarm.getActiveLevelIndex();
      return i;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public final int getDefaultLevelIndex()
  {
    try
    {
      int i = zzarm.getActiveLevelIndex();
      return i;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public final List<IndoorLevel> getLevels()
  {
    try
    {
      Object localObject = zzarm.getLevels();
      ArrayList localArrayList = new ArrayList(((List)localObject).size());
      localObject = ((List)localObject).iterator();
      while (((Iterator)localObject).hasNext()) {
        localArrayList.add(new IndoorLevel(zzk.zza.zzca((IBinder)((Iterator)localObject).next())));
      }
      return localRemoteException;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public final int hashCode()
  {
    try
    {
      int i = zzarm.hashCodeRemote();
      return i;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public final boolean isUnderground()
  {
    try
    {
      boolean bool = zzarm.isUnderground();
      return bool;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.IndoorBuilding
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */