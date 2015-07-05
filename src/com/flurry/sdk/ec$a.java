package com.flurry.sdk;

final class ec$a
  implements Thread.UncaughtExceptionHandler
{
  private ec$a(ec paramec) {}
  
  public final void uncaughtException(Thread paramThread, Throwable paramThrowable)
  {
    ec.a(a, paramThread, paramThrowable);
    ec.b(a, paramThread, paramThrowable);
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.ec.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */