package com.google.android.gms.common.api;

class Batch$1
  implements PendingResult.BatchCallback
{
  Batch$1(Batch paramBatch) {}
  
  public void zzl(Status paramStatus)
  {
    for (;;)
    {
      synchronized (Batch.zza(zzMa))
      {
        if (zzMa.isCanceled()) {
          return;
        }
        if (paramStatus.isCanceled())
        {
          Batch.zza(zzMa, true);
          Batch.zzb(zzMa);
          if (Batch.zzc(zzMa) == 0)
          {
            if (!Batch.zzd(zzMa)) {
              break;
            }
            Batch.zze(zzMa);
          }
          return;
        }
      }
      if (!paramStatus.isSuccess()) {
        Batch.zzb(zzMa, true);
      }
    }
    if (Batch.zzf(zzMa)) {}
    for (paramStatus = new Status(13);; paramStatus = Status.zzNo)
    {
      zzMa.setResult(new BatchResult(paramStatus, Batch.zzg(zzMa)));
      break;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.api.Batch.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */