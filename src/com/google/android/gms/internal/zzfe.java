package com.google.android.gms.internal;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.SystemClock;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Set;

@zzgi
public class zzfe
  extends zzfn.zza
{
  private Context mContext;
  private String zznf;
  private String zzvf;
  private ArrayList<String> zzvg;
  
  public zzfe(String paramString1, ArrayList<String> paramArrayList, Context paramContext, String paramString2)
  {
    zzvf = paramString1;
    zzvg = paramArrayList;
    zznf = paramString2;
    mContext = paramContext;
  }
  
  public String getProductId()
  {
    return zzvf;
  }
  
  public void recordPlayBillingResolution(int paramInt)
  {
    if (paramInt == 0) {
      zzdy();
    }
    HashMap localHashMap = new HashMap();
    localHashMap.put("google_play_status", String.valueOf(paramInt));
    localHashMap.put("sku", zzvf);
    localHashMap.put("status", String.valueOf(zzs(paramInt)));
    LinkedList localLinkedList = new LinkedList();
    Iterator localIterator = zzvg.iterator();
    while (localIterator.hasNext()) {
      localLinkedList.add(zza((String)localIterator.next(), localHashMap));
    }
    zzab.zzaM().zza(mContext, zznf, localLinkedList);
  }
  
  public void recordResolution(int paramInt)
  {
    if (paramInt == 1) {
      zzdy();
    }
    HashMap localHashMap = new HashMap();
    localHashMap.put("status", String.valueOf(paramInt));
    localHashMap.put("sku", zzvf);
    LinkedList localLinkedList = new LinkedList();
    Iterator localIterator = zzvg.iterator();
    while (localIterator.hasNext()) {
      localLinkedList.add(zza((String)localIterator.next(), localHashMap));
    }
    zzab.zzaM().zza(mContext, zznf, localLinkedList);
  }
  
  protected String zza(String paramString, HashMap<String, String> paramHashMap)
  {
    String str3 = mContext.getPackageName();
    long l1;
    long l2;
    String str2;
    try
    {
      String str1 = mContext.getPackageManager().getPackageInfo(str3, 0).versionName;
      l1 = zzab.zzaP().zzef().zzeo();
      l2 = SystemClock.elapsedRealtime();
      Iterator localIterator = paramHashMap.keySet().iterator();
      while (localIterator.hasNext())
      {
        String str4 = (String)localIterator.next();
        paramString = paramString.replaceAll(String.format("(?<!@)((?:@@)*)@%s(?<!@)((?:@@)*)@", new Object[] { str4 }), String.format("$1%s$2", new Object[] { paramHashMap.get(str4) }));
      }
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      for (;;)
      {
        zzhx.zzd("Error to retrieve app version", localNameNotFoundException);
        str2 = "";
      }
    }
    return paramString.replaceAll(String.format("(?<!@)((?:@@)*)@%s(?<!@)((?:@@)*)@", tmp138_135), String.format("$1%s$2", tmp152_149)).replaceAll(String.format("(?<!@)((?:@@)*)@%s(?<!@)((?:@@)*)@", tmp173_170), String.format("$1%s$2", tmp187_184)).replaceAll(String.format("(?<!@)((?:@@)*)@%s(?<!@)((?:@@)*)@", tmp204_201), String.format("$1%s$2", tmp218_215)).replaceAll(String.format("(?<!@)((?:@@)*)@%s(?<!@)((?:@@)*)@", tmp239_236), String.format("$1%s$2", tmp253_250)).replaceAll(String.format("(?<!@)((?:@@)*)@%s(?<!@)((?:@@)*)@", tmp272_269), String.format("$1%s$2", tmp286_283)).replaceAll(String.format("(?<!@)((?:@@)*)@%s(?<!@)((?:@@)*)@", tmp303_300), String.format("$1%s$2", tmp317_314)).replaceAll(String.format("(?<!@)((?:@@)*)@%s(?<!@)((?:@@)*)@", tmp339_336), String.format("$1%s$2", tmp353_350)).replaceAll("@@", "@");
  }
  
  void zzdy()
  {
    try
    {
      mContext.getClassLoader().loadClass("com.google.ads.conversiontracking.IAPConversionReporter").getDeclaredMethod("reportWithProductId", new Class[] { Context.class, String.class, String.class, Boolean.TYPE }).invoke(null, new Object[] { mContext, zzvf, "", Boolean.valueOf(true) });
      return;
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
      zzhx.zzac("Google Conversion Tracking SDK 1.2.0 or above is required to report a conversion.");
      return;
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      zzhx.zzac("Google Conversion Tracking SDK 1.2.0 or above is required to report a conversion.");
      return;
    }
    catch (Exception localException)
    {
      zzhx.zzd("Fail to report a conversion.", localException);
    }
  }
  
  protected int zzs(int paramInt)
  {
    if (paramInt == 0) {
      return 1;
    }
    if (paramInt == 1) {
      return 2;
    }
    if (paramInt == 4) {
      return 3;
    }
    return 0;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzfe
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */