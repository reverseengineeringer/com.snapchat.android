package com.snapchat.android.analytics.framework;

import ajv;
import ajx;
import bfs;
import javax.inject.Provider;

public class UserPropertiesProvider
  implements ScAnalyticsEventEngine.UserPropertiesInterface
{
  private static final UserPropertiesProvider a = new UserPropertiesProvider();
  private final Provider<ajv> b = ajv.UNSAFE_USER_PROVIDER;
  
  public static UserPropertiesProvider d()
  {
    return a;
  }
  
  public final String a()
  {
    if (ajx.m()) {
      return ajx.l();
    }
    return null;
  }
  
  public final String b()
  {
    return bfs.a();
  }
  
  public final Long c()
  {
    ajv localajv = (ajv)b.get();
    if ((localajv == null) || (!ajx.m())) {
      return null;
    }
    return Long.valueOf(localajv.p());
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.analytics.framework.UserPropertiesProvider
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */