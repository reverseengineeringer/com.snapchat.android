package com.snapchat.android.analytics.framework;

import android.content.Context;
import ls;
import lt;

public class ScAnalyticsEventEngine
{
  public static final ScAnalyticsEventEngine a = new ScAnalyticsEventEngine();
  
  public static ScAnalyticsEventEngine a()
  {
    return a;
  }
  
  public static void a(Context paramContext, UserPropertiesInterface paramUserPropertiesInterface)
  {
    ScAnalyticsEventEngineStatic.a(paramContext, paramUserPropertiesInterface);
  }
  
  public static void a(ls paramls)
  {
    ScAnalyticsEventEngineStatic.a(paramls);
  }
  
  public static void a(lt paramlt)
  {
    ScAnalyticsEventEngineStatic.a(paramlt);
  }
  
  public static void b() {}
  
  public static void c() {}
  
  public static abstract interface UserPropertiesInterface
  {
    public abstract String a();
    
    public abstract String b();
    
    public abstract Long c();
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.analytics.framework.ScAnalyticsEventEngine
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */