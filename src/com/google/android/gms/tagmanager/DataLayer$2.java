package com.google.android.gms.tagmanager;

import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CountDownLatch;

class DataLayer$2
  implements DataLayer.zzc.zza
{
  DataLayer$2(DataLayer paramDataLayer) {}
  
  public void zzq(List<DataLayer.zza> paramList)
  {
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      DataLayer.zza localzza = (DataLayer.zza)paramList.next();
      DataLayer.zza(zzayl, zzayl.zzc(zzqd, zzzt));
    }
    DataLayer.zza(zzayl).countDown();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.DataLayer.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */