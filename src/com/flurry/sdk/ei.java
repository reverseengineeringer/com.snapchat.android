package com.flurry.sdk;

import java.io.InputStream;
import java.io.OutputStream;

public class ei<RequestObjectType, ResponseObjectType>
  extends ek
{
  private a<RequestObjectType, ResponseObjectType> a;
  private RequestObjectType b;
  private ResponseObjectType c;
  private eu<RequestObjectType> d;
  private eu<ResponseObjectType> e;
  
  private void m()
  {
    a(new ek.c()
    {
      public void a(ek paramAnonymousek)
      {
        ei.d(ei.this);
      }
      
      public void a(ek paramAnonymousek, InputStream paramAnonymousInputStream)
      {
        if (!paramAnonymousek.d()) {}
        while (ei.c(ei.this) == null) {
          return;
        }
        ei.a(ei.this, ei.c(ei.this).a(paramAnonymousInputStream));
      }
      
      public void a(ek paramAnonymousek, OutputStream paramAnonymousOutputStream)
      {
        if ((ei.a(ei.this) != null) && (ei.b(ei.this) != null)) {
          ei.b(ei.this).a(paramAnonymousOutputStream, ei.a(ei.this));
        }
      }
    });
  }
  
  private void n()
  {
    if (a == null) {}
    while (b()) {
      return;
    }
    a.a(this, c);
  }
  
  public void a()
  {
    m();
    super.a();
  }
  
  public void a(a<RequestObjectType, ResponseObjectType> parama)
  {
    a = parama;
  }
  
  public void a(eu<RequestObjectType> parameu)
  {
    d = parameu;
  }
  
  public void a(RequestObjectType paramRequestObjectType)
  {
    b = paramRequestObjectType;
  }
  
  public void b(eu<ResponseObjectType> parameu)
  {
    e = parameu;
  }
  
  public static abstract interface a<RequestObjectType, ResponseObjectType>
  {
    public abstract void a(ei<RequestObjectType, ResponseObjectType> paramei, ResponseObjectType paramResponseObjectType);
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.ei
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */