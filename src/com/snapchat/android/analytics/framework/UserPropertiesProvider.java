package com.snapchat.android.analytics.framework;

import akp;
import akr;
import bgs;
import javax.inject.Provider;

public class UserPropertiesProvider
  implements ScAnalyticsEventEngine.UserPropertiesInterface
{
  private static final UserPropertiesProvider a = new UserPropertiesProvider();
  private final Provider<akp> b = akp.UNSAFE_USER_PROVIDER;
  
  public static UserPropertiesProvider d()
  {
    return a;
  }
  
  public final String a()
  {
    if (akr.m()) {
      return akr.l();
    }
    return null;
  }
  
  public final String b()
  {
    return bgs.a();
  }
  
  public final Long c()
  {
    akp localakp = (akp)b.get();
    if ((localakp == null) || (!akr.m())) {
      return null;
    }
    return Long.valueOf(localakp.p());
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.analytics.framework.UserPropertiesProvider
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */