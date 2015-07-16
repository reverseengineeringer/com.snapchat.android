package com.google.android.gms.internal;

import android.content.Context;
import android.content.res.Resources;
import android.os.Handler;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import org.json.JSONException;
import org.json.JSONObject;

@zzgi
public class zzgk
  extends zzhl
  implements zzgl.zza
{
  private final Context mContext;
  Object zznh = new Object();
  zzdk zzsf;
  private final Object zzvM = new Object();
  zzgq zzvO;
  private final zzgj.zza zzwe;
  private final zzgo.zza zzwf;
  private final zzk zzwg;
  zzhl zzwh;
  
  public zzgk(Context paramContext, zzgo.zza paramzza, zzk paramzzk, zzgj.zza paramzza1)
  {
    zzwe = paramzza1;
    mContext = paramContext;
    zzwf = paramzza;
    zzwg = paramzzk;
  }
  
  public void onStop()
  {
    synchronized (zzvM)
    {
      if (zzwh != null) {
        zzwh.cancel();
      }
      return;
    }
  }
  
  zzhl zza(zzgo paramzzgo)
  {
    return zzgl.zza(mContext, paramzzgo, this);
  }
  
  protected zzba zzb(zzgo paramzzgo)
  {
    if (zzvO.zzwL == null) {
      throw new zza("The ad response must specify one of the supported ad sizes.", 0);
    }
    Object localObject = zzvO.zzwL.split("x");
    if (localObject.length != 2) {
      throw new zza("Invalid ad size format from the ad response: " + zzvO.zzwL, 0);
    }
    for (;;)
    {
      int i;
      zzba localzzba;
      try
      {
        int m = Integer.parseInt(localObject[0]);
        int n = Integer.parseInt(localObject[1]);
        localObject = zzlV.zzpc;
        int i1 = localObject.length;
        i = 0;
        if (i >= i1) {
          break;
        }
        localzzba = localObject[i];
        float f = mContext.getResources().getDisplayMetrics().density;
        if (width == -1)
        {
          j = (int)(widthPixels / f);
          if (height != -2) {
            break label247;
          }
          k = (int)(heightPixels / f);
          if ((m != j) || (n != k)) {
            break label257;
          }
          return new zzba(localzzba, zzlV.zzpc);
        }
      }
      catch (NumberFormatException paramzzgo)
      {
        throw new zza("Invalid ad size number from the ad response: " + zzvO.zzwL, 0);
      }
      int j = width;
      continue;
      label247:
      int k = height;
      continue;
      label257:
      i += 1;
    }
    throw new zza("The ad size from the ad response was not one of the requested sizes: " + zzvO.zzwL, 0);
  }
  
  public void zzb(zzgq paramzzgq)
  {
    synchronized (zznh)
    {
      zzhx.zzY("Received ad response.");
      zzvO = paramzzgq;
      return;
    }
  }
  
  protected boolean zzd(long paramLong)
  {
    return 60000L - (zzab.zzaQ().elapsedRealtime() - paramLong) > 0L;
  }
  
  protected void zzdI()
  {
    if (zzvO.errorCode == -3) {}
    do
    {
      return;
      if (TextUtils.isEmpty(zzvO.zzwG)) {
        throw new zza("No fill from ad server.", 3);
      }
      zzab.zzaP().zza(mContext, zzvO.zzwv);
    } while (!zzvO.zzwI);
    try
    {
      zzsf = new zzdk(zzvO.zzwG);
      return;
    }
    catch (JSONException localJSONException)
    {
      throw new zza("Could not parse mediation config: " + zzvO.zzwG, 0);
    }
  }
  
  public void zzdw()
  {
    for (;;)
    {
      int i;
      long l2;
      long l1;
      synchronized (zznh)
      {
        zzhx.zzY("AdLoaderBackgroundTask started.");
        final Object localObject1 = zzwg.zzC().zza(mContext);
        Object localObject4 = zzz.zzj(mContext).getClientId();
        zzgo localzzgo = new zzgo(zzwf, (String)localObject1, (String)localObject4);
        i = -2;
        l2 = -1L;
        l1 = l2;
        long l3;
        try
        {
          l3 = zzab.zzaQ().elapsedRealtime();
          l1 = l2;
          localObject4 = zza(localzzgo);
          l1 = l2;
          localObject1 = zzvM;
          l1 = l2;
          try
          {
            zzwh = ((zzhl)localObject4);
            if (zzwh != null) {
              continue;
            }
            throw new zza("Could not start the ad request service.", 0);
          }
          finally
          {
            l1 = l2;
          }
          i = localzza1.getErrorCode();
        }
        catch (zza localzza1)
        {
          localObject1 = null;
        }
        if ((i == 3) || (i == -1))
        {
          zzhx.zzaa(localzza1.getMessage());
          if (zzvO != null) {
            break label386;
          }
          zzvO = new zzgq(i);
          zzhw.zzzG.post(new Runnable()
          {
            public void run()
            {
              onStop();
            }
          });
          boolean bool = TextUtils.isEmpty(zzvO.zzwQ);
          if (bool) {
            break label418;
          }
        }
        try
        {
          localJSONObject = new JSONObject(zzvO.zzwQ);
          localObject1 = new zzhe.zza(localzzgo, zzvO, zzsf, (zzba)localObject1, i, l1, zzvO.zzwM, localJSONObject);
          zzhw.zzzG.post(new Runnable()
          {
            public void run()
            {
              synchronized (zznh)
              {
                zzgk.zza(zzgk.this).zza(localObject1);
                return;
              }
            }
          });
          return;
        }
        catch (Exception localException)
        {
          JSONObject localJSONObject;
          zzhx.zzb("Error parsing the JSON for Active View.", localException);
        }
        l1 = l2;
        zzh(l3);
        l1 = l2;
        l2 = zzab.zzaQ().elapsedRealtime();
        l1 = l2;
        zzdI();
        l1 = l2;
        if (zzlV.zzpc == null) {
          break label432;
        }
        l1 = l2;
        localObject1 = zzb(localzzgo);
        try
        {
          zzv(zzvO.zzwT);
          l1 = l2;
        }
        catch (zza localzza2)
        {
          Object localObject6;
          l1 = l2;
        }
        zzhx.zzac(localJSONObject.getMessage());
      }
      label386:
      zzvO = new zzgq(i, zzvO.zzsx);
      continue;
      label418:
      localObject6 = null;
      continue;
      continue;
      label432:
      Object localObject3 = null;
    }
  }
  
  protected void zzh(long paramLong)
  {
    do
    {
      if (!zzd(paramLong)) {
        throw new zza("Timed out waiting for ad response.", 2);
      }
    } while (zzvO == null);
    synchronized (zzvM)
    {
      zzwh = null;
      if ((zzvO.errorCode != -2) && (zzvO.errorCode != -3)) {
        throw new zza("There was a problem getting an ad response. ErrorCode: " + zzvO.errorCode, zzvO.errorCode);
      }
    }
  }
  
  protected void zzv(boolean paramBoolean)
  {
    zzab.zzaP().zzz(paramBoolean);
    zzan localzzan = zzab.zzaP().zzo(mContext);
    if ((localzzan != null) && (!localzzan.isAlive()))
    {
      zzhx.zzY("start fetching content...");
      localzzan.zzbt();
    }
  }
  
  @zzgi
  static final class zza
    extends Exception
  {
    private final int zzvR;
    
    public zza(String paramString, int paramInt)
    {
      super();
      zzvR = paramInt;
    }
    
    public final int getErrorCode()
    {
      return zzvR;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzgk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */