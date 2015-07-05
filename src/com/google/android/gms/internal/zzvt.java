package com.google.android.gms.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.tagmanager.zzbf;
import java.util.List;

public abstract class zzvt
{
  private zzvj zzaCG;
  private zzvh zzaCH;
  private zzlv zzmW;
  
  public zzvt(zzvj paramzzvj, zzvh paramzzvh)
  {
    this(paramzzvj, paramzzvh, zzlx.zzkc());
  }
  
  public zzvt(zzvj paramzzvj, zzvh paramzzvh, zzlv paramzzlv)
  {
    if (paramzzvj.zzun().size() == 1) {}
    for (;;)
    {
      zzx.zzO(bool);
      zzaCG = paramzzvj;
      zzaCH = paramzzvh;
      zzmW = paramzzlv;
      return;
      bool = false;
    }
  }
  
  protected abstract zzb zza(zzve paramzzve);
  
  protected abstract void zza(zzvk paramzzvk);
  
  public void zza(zza paramzza)
  {
    zzbf.zzZ("ResourceManager: Failed to download a resource: " + paramzza.name());
    paramzza = (zzve)zzaCG.zzun().get(0);
    zzb localzzb = zza(paramzza);
    if ((localzzb != null) && ((localzzb.zzuP() instanceof zzvl.zzc))) {}
    for (paramzza = new zzvk.zza(Status.zzNo, paramzza, null, (zzvl.zzc)localzzb.zzuP(), localzzb.zzup(), localzzb.zzut());; paramzza = new zzvk.zza(Status.zzNq, paramzza, zzvk.zza.zza.zzaCf))
    {
      zza(new zzvk(paramzza));
      return;
    }
  }
  
  public void zzo(byte[] paramArrayOfByte)
  {
    zzbf.zzab("ResourceManager: Resource downloaded from Network: " + zzaCG.getId());
    localzzve = (zzve)zzaCG.zzun().get(0);
    zzvk.zza.zza localzza2 = zzvk.zza.zza.zzaCf;
    localObject1 = null;
    long l2 = 0L;
    long l1 = l2;
    localzza1 = localzza2;
    try
    {
      Object localObject2 = zzaCH.zzn(paramArrayOfByte);
      l1 = l2;
      localObject1 = localObject2;
      localzza1 = localzza2;
      l2 = zzmW.currentTimeMillis();
      l1 = l2;
      localObject1 = localObject2;
      localzza1 = localzza2;
      if (localObject2 == null)
      {
        l1 = l2;
        localObject1 = localObject2;
        localzza1 = localzza2;
        zzbf.zzaa("Parsed resource from network is null");
        l1 = l2;
        localObject1 = localObject2;
        localzza1 = localzza2;
        zzb localzzb2 = zza(localzzve);
        l1 = l2;
        localObject1 = localObject2;
        localzza1 = localzza2;
        if (localzzb2 != null)
        {
          l1 = l2;
          localObject1 = localObject2;
          localzza1 = localzza2;
          localObject2 = localzzb2.zzuP();
          l1 = l2;
          localObject1 = localObject2;
          localzza1 = localzza2;
          localzza2 = localzzb2.zzup();
          l1 = l2;
          localObject1 = localObject2;
          localzza1 = localzza2;
          l2 = localzzb2.zzut();
          l1 = l2;
          localzza1 = localzza2;
          localObject1 = localObject2;
        }
      }
    }
    catch (zzvl.zzg localzzg)
    {
      for (;;)
      {
        zzbf.zzaa("Resource from network is corrupted");
        zzb localzzb1 = zza(localzzve);
        if (localzzb1 != null)
        {
          localObject1 = localzzb1.zzuP();
          localzza1 = localzzb1.zzup();
          continue;
          paramArrayOfByte = new zzvk.zza(Status.zzNq, localzzve, zzvk.zza.zza.zzaCf);
        }
      }
    }
    if (localObject1 != null)
    {
      paramArrayOfByte = new zzvk.zza(Status.zzNo, localzzve, paramArrayOfByte, (zzvl.zzc)localObject1, localzza1, l1);
      zza(new zzvk(paramArrayOfByte));
      return;
    }
  }
  
  public static enum zza
  {
    private zza() {}
  }
  
  public class zzb
  {
    private final Object zzaCM;
    private final zzvk.zza.zza zzaCa;
    private final long zzaCc;
    
    public Object zzuP()
    {
      return zzaCM;
    }
    
    public zzvk.zza.zza zzup()
    {
      return zzaCa;
    }
    
    public long zzut()
    {
      return zzaCc;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzvt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */