package com.google.android.gms.maps.internal;

import android.content.Context;
import android.os.Build.VERSION;
import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.dynamic.zze;
import com.google.android.gms.maps.model.RuntimeRemoteException;

public class zzx
{
  private static Context zzaqM;
  private static zzc zzaqN;
  
  private static Context getRemoteContext(Context paramContext)
  {
    if (zzaqM == null) {
      if (!zzqC()) {
        break label23;
      }
    }
    label23:
    for (zzaqM = paramContext.getApplicationContext();; zzaqM = GooglePlayServicesUtil.getRemoteContext(paramContext)) {
      return zzaqM;
    }
  }
  
  private static <T> T zza(ClassLoader paramClassLoader, String paramString)
  {
    try
    {
      paramClassLoader = zzc(((ClassLoader)com.google.android.gms.common.internal.zzx.zzl(paramClassLoader)).loadClass(paramString));
      return paramClassLoader;
    }
    catch (ClassNotFoundException paramClassLoader)
    {
      throw new IllegalStateException("Unable to find dynamic class " + paramString);
    }
  }
  
  public static zzc zzac(Context paramContext)
  {
    com.google.android.gms.common.internal.zzx.zzl(paramContext);
    if (zzaqN != null) {
      return zzaqN;
    }
    zzad(paramContext);
    zzaqN = zzae(paramContext);
    try
    {
      zzaqN.zzb(zze.zzn(getRemoteContext(paramContext).getResources()), 7095000);
      return zzaqN;
    }
    catch (RemoteException paramContext)
    {
      throw new RuntimeRemoteException(paramContext);
    }
  }
  
  private static void zzad(Context paramContext)
  {
    int i = GooglePlayServicesUtil.isGooglePlayServicesAvailable(paramContext);
    switch (i)
    {
    default: 
      throw new GooglePlayServicesNotAvailableException(i);
    }
  }
  
  private static zzc zzae(Context paramContext)
  {
    if (zzqC())
    {
      zzx.class.getSimpleName();
      return (zzc)zzc(zzqD());
    }
    zzx.class.getSimpleName();
    return zzc.zza.zzbt((IBinder)zza(getRemoteContext(paramContext).getClassLoader(), "com.google.android.gms.maps.internal.CreatorImpl"));
  }
  
  private static <T> T zzc(Class<?> paramClass)
  {
    try
    {
      Object localObject = paramClass.newInstance();
      return (T)localObject;
    }
    catch (InstantiationException localInstantiationException)
    {
      throw new IllegalStateException("Unable to instantiate the dynamic class " + paramClass.getName());
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      throw new IllegalStateException("Unable to call the default constructor of " + paramClass.getName());
    }
  }
  
  public static boolean zzqC()
  {
    return false;
  }
  
  private static Class<?> zzqD()
  {
    try
    {
      if (Build.VERSION.SDK_INT < 15) {
        return Class.forName("com.google.android.gms.maps.internal.CreatorImplGmm6");
      }
      Class localClass = Class.forName("com.google.android.gms.maps.internal.CreatorImpl");
      return localClass;
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
      throw new RuntimeException(localClassNotFoundException);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.internal.zzx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */