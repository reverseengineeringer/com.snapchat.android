package com.flurry.sdk;

import android.content.Context;
import java.io.File;
import java.util.List;
import java.util.Map;

public class cy
{
  private static final String b = cy.class.getSimpleName();
  boolean a;
  private final cz c = new cz();
  private final File d;
  private String e;
  
  public cy()
  {
    this(do.a().b());
  }
  
  public cy(Context paramContext)
  {
    d = paramContext.getFileStreamPath(".flurryinstallreceiver.");
    el.a(3, b, "Referrer file name if it exists:  " + d);
  }
  
  private void b()
  {
    if (a) {
      return;
    }
    a = true;
    el.a(4, b, "Loading referrer info from file: " + d.getAbsolutePath());
    String str = fa.c(d);
    el.a(b, "Referrer file contents: " + str);
    b(str);
  }
  
  private void b(String paramString)
  {
    if (paramString == null) {
      return;
    }
    e = paramString;
  }
  
  private void c()
  {
    fa.a(d, e);
  }
  
  public Map<String, List<String>> a(boolean paramBoolean)
  {
    try
    {
      b();
      Map localMap = c.a(e);
      if (paramBoolean) {
        a();
      }
      return localMap;
    }
    finally {}
  }
  
  public void a()
  {
    try
    {
      d.delete();
      e = null;
      a = true;
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public void a(String paramString)
  {
    try
    {
      a = true;
      b(paramString);
      c();
      return;
    }
    finally
    {
      paramString = finally;
      throw paramString;
    }
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.cy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */