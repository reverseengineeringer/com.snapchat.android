package com.snapchat.android.ui.diagnostics;

import alv;
import alw.c;
import aly;
import bhp;
import chc;
import us;

final class DiagnosticsView$d
  implements alw.c
{
  final alw.c[] a;
  
  public DiagnosticsView$d(@chc alw.c... paramVarArgs)
  {
    a = paramVarArgs;
  }
  
  public final void a(@chc final alv paramalv)
  {
    bhp.a(new Runnable()
    {
      public final void run()
      {
        alw.c[] arrayOfc = a;
        int j = arrayOfc.length;
        int i = 0;
        while (i < j)
        {
          arrayOfc[i].a(paramalv);
          i += 1;
        }
      }
    });
  }
  
  public final void a(final aly paramaly)
  {
    bhp.a(new Runnable()
    {
      public final void run()
      {
        alw.c[] arrayOfc = a;
        int j = arrayOfc.length;
        int i = 0;
        while (i < j)
        {
          arrayOfc[i].a(paramaly);
          i += 1;
        }
      }
    });
  }
  
  public final void a(final aly paramaly, final us paramus)
  {
    bhp.a(new Runnable()
    {
      public final void run()
      {
        alw.c[] arrayOfc = a;
        int j = arrayOfc.length;
        int i = 0;
        while (i < j)
        {
          arrayOfc[i].a(paramaly, paramus);
          i += 1;
        }
      }
    });
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.diagnostics.DiagnosticsView.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */