package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.RemoteException;
import cb;
import com.google.android.gms.ads.mediation.MediationAdapter;
import com.google.android.gms.ads.mediation.MediationBannerAdapter;
import com.google.android.gms.ads.mediation.MediationInterstitialAdapter;
import com.google.android.gms.dynamic.zzd;
import com.google.android.gms.dynamic.zze;
import java.util.Iterator;
import org.json.JSONObject;

@zzgi
public final class zzdv
  extends zzds.zza
{
  private final MediationAdapter zzsR;
  
  public zzdv(MediationAdapter paramMediationAdapter)
  {
    zzsR = paramMediationAdapter;
  }
  
  private Bundle zza(String paramString1, int paramInt, String paramString2)
  {
    zzhx.zzac("Server parameters: " + paramString1);
    Bundle localBundle;
    try
    {
      localBundle = new Bundle();
      if (paramString1 != null)
      {
        paramString1 = new JSONObject(paramString1);
        localBundle = new Bundle();
        Iterator localIterator = paramString1.keys();
        while (localIterator.hasNext())
        {
          String str = (String)localIterator.next();
          localBundle.putString(str, paramString1.getString(str));
        }
      }
      if (!(zzsR instanceof cb)) {
        break label135;
      }
    }
    catch (Throwable paramString1)
    {
      zzhx.zzd("Could not get Server Parameters Bundle.", paramString1);
      throw new RemoteException();
    }
    localBundle.putString("adJson", paramString2);
    localBundle.putInt("tagForChildDirectedTreatment", paramInt);
    label135:
    return localBundle;
  }
  
  public final void destroy()
  {
    try
    {
      zzsR.onDestroy();
      return;
    }
    catch (Throwable localThrowable)
    {
      zzhx.zzd("Could not destroy adapter.", localThrowable);
      throw new RemoteException();
    }
  }
  
  public final zzd getView()
  {
    if (!(zzsR instanceof MediationBannerAdapter))
    {
      zzhx.zzac("MediationAdapter is not a MediationBannerAdapter: " + zzsR.getClass().getCanonicalName());
      throw new RemoteException();
    }
    try
    {
      zzd localzzd = zze.zzn(((MediationBannerAdapter)zzsR).getBannerView());
      return localzzd;
    }
    catch (Throwable localThrowable)
    {
      zzhx.zzd("Could not get banner view from adapter.", localThrowable);
      throw new RemoteException();
    }
  }
  
  public final void pause()
  {
    try
    {
      zzsR.onPause();
      return;
    }
    catch (Throwable localThrowable)
    {
      zzhx.zzd("Could not pause adapter.", localThrowable);
      throw new RemoteException();
    }
  }
  
  public final void resume()
  {
    try
    {
      zzsR.onResume();
      return;
    }
    catch (Throwable localThrowable)
    {
      zzhx.zzd("Could not resume adapter.", localThrowable);
      throw new RemoteException();
    }
  }
  
  public final void showInterstitial()
  {
    if (!(zzsR instanceof MediationInterstitialAdapter))
    {
      zzhx.zzac("MediationAdapter is not a MediationInterstitialAdapter: " + zzsR.getClass().getCanonicalName());
      throw new RemoteException();
    }
    zzhx.zzY("Showing interstitial from adapter.");
    try
    {
      ((MediationInterstitialAdapter)zzsR).showInterstitial();
      return;
    }
    catch (Throwable localThrowable)
    {
      zzhx.zzd("Could not show interstitial from adapter.", localThrowable);
      throw new RemoteException();
    }
  }
  
  public final void zza(zzd paramzzd, zzax paramzzax, String paramString, zzdt paramzzdt)
  {
    zza(paramzzd, paramzzax, paramString, null, paramzzdt);
  }
  
  /* Error */
  public final void zza(zzd paramzzd, zzax paramzzax, String paramString1, String paramString2, zzdt paramzzdt)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 14	com/google/android/gms/internal/zzdv:zzsR	Lcom/google/android/gms/ads/mediation/MediationAdapter;
    //   4: instanceof 140
    //   7: ifne +39 -> 46
    //   10: new 21	java/lang/StringBuilder
    //   13: dup
    //   14: ldc -114
    //   16: invokespecial 26	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   19: aload_0
    //   20: getfield 14	com/google/android/gms/internal/zzdv:zzsR	Lcom/google/android/gms/ads/mediation/MediationAdapter;
    //   23: invokevirtual 108	java/lang/Object:getClass	()Ljava/lang/Class;
    //   26: invokevirtual 113	java/lang/Class:getCanonicalName	()Ljava/lang/String;
    //   29: invokevirtual 30	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   32: invokevirtual 34	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   35: invokestatic 39	com/google/android/gms/internal/zzhx:zzac	(Ljava/lang/String;)V
    //   38: new 77	android/os/RemoteException
    //   41: dup
    //   42: invokespecial 78	android/os/RemoteException:<init>	()V
    //   45: athrow
    //   46: ldc -99
    //   48: invokestatic 147	com/google/android/gms/internal/zzhx:zzY	(Ljava/lang/String;)V
    //   51: aload_0
    //   52: getfield 14	com/google/android/gms/internal/zzdv:zzsR	Lcom/google/android/gms/ads/mediation/MediationAdapter;
    //   55: checkcast 140	com/google/android/gms/ads/mediation/MediationInterstitialAdapter
    //   58: astore 7
    //   60: aload_2
    //   61: getfield 163	com/google/android/gms/internal/zzax:zzoN	Ljava/util/List;
    //   64: ifnull +117 -> 181
    //   67: new 165	java/util/HashSet
    //   70: dup
    //   71: aload_2
    //   72: getfield 163	com/google/android/gms/internal/zzax:zzoN	Ljava/util/List;
    //   75: invokespecial 168	java/util/HashSet:<init>	(Ljava/util/Collection;)V
    //   78: astore 6
    //   80: new 170	com/google/android/gms/internal/zzdu
    //   83: dup
    //   84: new 172	java/util/Date
    //   87: dup
    //   88: aload_2
    //   89: getfield 176	com/google/android/gms/internal/zzax:zzoL	J
    //   92: invokespecial 179	java/util/Date:<init>	(J)V
    //   95: aload_2
    //   96: getfield 183	com/google/android/gms/internal/zzax:zzoM	I
    //   99: aload 6
    //   101: aload_2
    //   102: getfield 187	com/google/android/gms/internal/zzax:zzoT	Landroid/location/Location;
    //   105: aload_2
    //   106: getfield 191	com/google/android/gms/internal/zzax:zzoO	Z
    //   109: aload_2
    //   110: getfield 194	com/google/android/gms/internal/zzax:zzoP	I
    //   113: invokespecial 197	com/google/android/gms/internal/zzdu:<init>	(Ljava/util/Date;ILjava/util/Set;Landroid/location/Location;ZI)V
    //   116: astore 8
    //   118: aload_2
    //   119: getfield 201	com/google/android/gms/internal/zzax:zzoV	Landroid/os/Bundle;
    //   122: ifnull +65 -> 187
    //   125: aload_2
    //   126: getfield 201	com/google/android/gms/internal/zzax:zzoV	Landroid/os/Bundle;
    //   129: aload 7
    //   131: invokevirtual 108	java/lang/Object:getClass	()Ljava/lang/Class;
    //   134: invokevirtual 204	java/lang/Class:getName	()Ljava/lang/String;
    //   137: invokevirtual 208	android/os/Bundle:getBundle	(Ljava/lang/String;)Landroid/os/Bundle;
    //   140: astore 6
    //   142: aload 7
    //   144: aload_1
    //   145: invokestatic 212	com/google/android/gms/dynamic/zze:zzf	(Lcom/google/android/gms/dynamic/zzd;)Ljava/lang/Object;
    //   148: checkcast 214	android/content/Context
    //   151: new 216	com/google/android/gms/internal/zzdw
    //   154: dup
    //   155: aload 5
    //   157: invokespecial 219	com/google/android/gms/internal/zzdw:<init>	(Lcom/google/android/gms/internal/zzdt;)V
    //   160: aload_0
    //   161: aload_3
    //   162: aload_2
    //   163: getfield 194	com/google/android/gms/internal/zzax:zzoP	I
    //   166: aload 4
    //   168: invokespecial 221	com/google/android/gms/internal/zzdv:zza	(Ljava/lang/String;ILjava/lang/String;)Landroid/os/Bundle;
    //   171: aload 8
    //   173: aload 6
    //   175: invokeinterface 225 6 0
    //   180: return
    //   181: aconst_null
    //   182: astore 6
    //   184: goto -104 -> 80
    //   187: aconst_null
    //   188: astore 6
    //   190: goto -48 -> 142
    //   193: astore_1
    //   194: ldc -29
    //   196: aload_1
    //   197: invokestatic 75	com/google/android/gms/internal/zzhx:zzd	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   200: new 77	android/os/RemoteException
    //   203: dup
    //   204: invokespecial 78	android/os/RemoteException:<init>	()V
    //   207: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	208	0	this	zzdv
    //   0	208	1	paramzzd	zzd
    //   0	208	2	paramzzax	zzax
    //   0	208	3	paramString1	String
    //   0	208	4	paramString2	String
    //   0	208	5	paramzzdt	zzdt
    //   78	111	6	localObject	Object
    //   58	85	7	localMediationInterstitialAdapter	MediationInterstitialAdapter
    //   116	56	8	localzzdu	zzdu
    // Exception table:
    //   from	to	target	type
    //   51	80	193	java/lang/Throwable
    //   80	142	193	java/lang/Throwable
    //   142	180	193	java/lang/Throwable
  }
  
  public final void zza(zzd paramzzd, zzba paramzzba, zzax paramzzax, String paramString, zzdt paramzzdt)
  {
    zza(paramzzd, paramzzba, paramzzax, paramString, null, paramzzdt);
  }
  
  /* Error */
  public final void zza(zzd paramzzd, zzba paramzzba, zzax paramzzax, String paramString1, String paramString2, zzdt paramzzdt)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 8
    //   3: aload_0
    //   4: getfield 14	com/google/android/gms/internal/zzdv:zzsR	Lcom/google/android/gms/ads/mediation/MediationAdapter;
    //   7: instanceof 100
    //   10: ifne +39 -> 49
    //   13: new 21	java/lang/StringBuilder
    //   16: dup
    //   17: ldc 102
    //   19: invokespecial 26	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   22: aload_0
    //   23: getfield 14	com/google/android/gms/internal/zzdv:zzsR	Lcom/google/android/gms/ads/mediation/MediationAdapter;
    //   26: invokevirtual 108	java/lang/Object:getClass	()Ljava/lang/Class;
    //   29: invokevirtual 113	java/lang/Class:getCanonicalName	()Ljava/lang/String;
    //   32: invokevirtual 30	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   35: invokevirtual 34	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   38: invokestatic 39	com/google/android/gms/internal/zzhx:zzac	(Ljava/lang/String;)V
    //   41: new 77	android/os/RemoteException
    //   44: dup
    //   45: invokespecial 78	android/os/RemoteException:<init>	()V
    //   48: athrow
    //   49: ldc -23
    //   51: invokestatic 147	com/google/android/gms/internal/zzhx:zzY	(Ljava/lang/String;)V
    //   54: aload_0
    //   55: getfield 14	com/google/android/gms/internal/zzdv:zzsR	Lcom/google/android/gms/ads/mediation/MediationAdapter;
    //   58: checkcast 100	com/google/android/gms/ads/mediation/MediationBannerAdapter
    //   61: astore 9
    //   63: aload_3
    //   64: getfield 163	com/google/android/gms/internal/zzax:zzoN	Ljava/util/List;
    //   67: ifnull +137 -> 204
    //   70: new 165	java/util/HashSet
    //   73: dup
    //   74: aload_3
    //   75: getfield 163	com/google/android/gms/internal/zzax:zzoN	Ljava/util/List;
    //   78: invokespecial 168	java/util/HashSet:<init>	(Ljava/util/Collection;)V
    //   81: astore 7
    //   83: new 170	com/google/android/gms/internal/zzdu
    //   86: dup
    //   87: new 172	java/util/Date
    //   90: dup
    //   91: aload_3
    //   92: getfield 176	com/google/android/gms/internal/zzax:zzoL	J
    //   95: invokespecial 179	java/util/Date:<init>	(J)V
    //   98: aload_3
    //   99: getfield 183	com/google/android/gms/internal/zzax:zzoM	I
    //   102: aload 7
    //   104: aload_3
    //   105: getfield 187	com/google/android/gms/internal/zzax:zzoT	Landroid/location/Location;
    //   108: aload_3
    //   109: getfield 191	com/google/android/gms/internal/zzax:zzoO	Z
    //   112: aload_3
    //   113: getfield 194	com/google/android/gms/internal/zzax:zzoP	I
    //   116: invokespecial 197	com/google/android/gms/internal/zzdu:<init>	(Ljava/util/Date;ILjava/util/Set;Landroid/location/Location;ZI)V
    //   119: astore 10
    //   121: aload 8
    //   123: astore 7
    //   125: aload_3
    //   126: getfield 201	com/google/android/gms/internal/zzax:zzoV	Landroid/os/Bundle;
    //   129: ifnull +20 -> 149
    //   132: aload_3
    //   133: getfield 201	com/google/android/gms/internal/zzax:zzoV	Landroid/os/Bundle;
    //   136: aload 9
    //   138: invokevirtual 108	java/lang/Object:getClass	()Ljava/lang/Class;
    //   141: invokevirtual 204	java/lang/Class:getName	()Ljava/lang/String;
    //   144: invokevirtual 208	android/os/Bundle:getBundle	(Ljava/lang/String;)Landroid/os/Bundle;
    //   147: astore 7
    //   149: aload 9
    //   151: aload_1
    //   152: invokestatic 212	com/google/android/gms/dynamic/zze:zzf	(Lcom/google/android/gms/dynamic/zzd;)Ljava/lang/Object;
    //   155: checkcast 214	android/content/Context
    //   158: new 216	com/google/android/gms/internal/zzdw
    //   161: dup
    //   162: aload 6
    //   164: invokespecial 219	com/google/android/gms/internal/zzdw:<init>	(Lcom/google/android/gms/internal/zzdt;)V
    //   167: aload_0
    //   168: aload 4
    //   170: aload_3
    //   171: getfield 194	com/google/android/gms/internal/zzax:zzoP	I
    //   174: aload 5
    //   176: invokespecial 221	com/google/android/gms/internal/zzdv:zza	(Ljava/lang/String;ILjava/lang/String;)Landroid/os/Bundle;
    //   179: aload_2
    //   180: getfield 238	com/google/android/gms/internal/zzba:width	I
    //   183: aload_2
    //   184: getfield 241	com/google/android/gms/internal/zzba:height	I
    //   187: aload_2
    //   188: getfield 245	com/google/android/gms/internal/zzba:zzpa	Ljava/lang/String;
    //   191: invokestatic 250	com/google/android/gms/ads/zza:zza	(IILjava/lang/String;)Lcom/google/android/gms/ads/AdSize;
    //   194: aload 10
    //   196: aload 7
    //   198: invokeinterface 254 7 0
    //   203: return
    //   204: aconst_null
    //   205: astore 7
    //   207: goto -124 -> 83
    //   210: astore_1
    //   211: ldc_w 256
    //   214: aload_1
    //   215: invokestatic 75	com/google/android/gms/internal/zzhx:zzd	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   218: new 77	android/os/RemoteException
    //   221: dup
    //   222: invokespecial 78	android/os/RemoteException:<init>	()V
    //   225: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	226	0	this	zzdv
    //   0	226	1	paramzzd	zzd
    //   0	226	2	paramzzba	zzba
    //   0	226	3	paramzzax	zzax
    //   0	226	4	paramString1	String
    //   0	226	5	paramString2	String
    //   0	226	6	paramzzdt	zzdt
    //   81	125	7	localObject1	Object
    //   1	121	8	localObject2	Object
    //   61	89	9	localMediationBannerAdapter	MediationBannerAdapter
    //   119	76	10	localzzdu	zzdu
    // Exception table:
    //   from	to	target	type
    //   54	83	210	java/lang/Throwable
    //   83	121	210	java/lang/Throwable
    //   125	149	210	java/lang/Throwable
    //   149	203	210	java/lang/Throwable
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzdv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */