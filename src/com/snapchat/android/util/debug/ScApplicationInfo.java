package com.snapchat.android.util.debug;

import akr;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Build.VERSION;
import android.text.TextUtils;
import bal;
import bgp;
import chc;
import chd;

public class ScApplicationInfo
  extends ApplicationInfo
{
  public static int DEFAULT_VERSION_CODE = Integer.MAX_VALUE;
  public static String DEFAULT_VERSION_NAME = "";
  
  @chd
  public static String a()
  {
    return "com.snapchat.android";
  }
  
  public static String a(Context paramContext)
  {
    Object localObject = akr.l();
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Snapchat Build : " + b(paramContext)).append("(").append(Build.DEVICE + ";").append(Build.MODEL + ";").append(Build.MANUFACTURER + ";").append("Version- " + Build.VERSION.SDK_INT + ") - " + (String)localObject + "\n").append("Connection type: " + bgp.b() + "\n").append("Using Square sandbox: " + bal.c() + "\n").append("Release delay time: " + akr.bs() + "\n");
    paramContext = bgp.a();
    if (paramContext != null)
    {
      localObject = bgp.a();
      if ((localObject == null) || (!((NetworkInfo)localObject).isConnected()) || (((NetworkInfo)localObject).getType() != 0)) {
        break label338;
      }
    }
    label338:
    for (int i = 1;; i = 0)
    {
      if (i != 0) {
        localStringBuilder.append("Mobile network subtype: " + paramContext.getSubtypeName()).append("\n");
      }
      if ((ReleaseManager.e()) && (!TextUtils.isEmpty(""))) {
        localStringBuilder.append("Git Branch: ");
      }
      if ((ReleaseManager.f()) && (!TextUtils.isEmpty(""))) {
        localStringBuilder.append("Dogfood build - git hash: ");
      }
      return localStringBuilder.toString();
    }
  }
  
  public static String b()
  {
    return "username: " + akr.l() + "\nemail: " + akr.G();
  }
  
  public static String b(@chc Context paramContext)
  {
    try
    {
      paramContext = d(paramContext);
      return versionName;
    }
    catch (PackageManager.NameNotFoundException paramContext) {}
    return DEFAULT_VERSION_NAME;
  }
  
  public static int c(@chc Context paramContext)
  {
    try
    {
      paramContext = d(paramContext);
      return versionCode;
    }
    catch (PackageManager.NameNotFoundException paramContext) {}
    return DEFAULT_VERSION_CODE;
  }
  
  public static PackageInfo d(@chc Context paramContext)
  {
    return paramContext.getPackageManager().getPackageInfo(paramContext.getPackageName(), 0);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.util.debug.ScApplicationInfo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */