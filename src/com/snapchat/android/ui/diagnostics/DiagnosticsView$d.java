package com.snapchat.android.ui.diagnostics;

import ala;
import alb.c;
import alc;
import bgp;
import cgb;
import uc;

final class DiagnosticsView$d
  implements alb.c
{
  final alb.c[] a;
  
  public DiagnosticsView$d(@cgb alb.c... paramVarArgs)
  {
    a = paramVarArgs;
  }
  
  public final void a(@cgb final ala paramala)
  {
    bgp.a(new Runnable()
    {
      public final void run()
      {
        alb.c[] arrayOfc = a;
        int j = arrayOfc.length;
        int i = 0;
        while (i < j)
        {
          arrayOfc[i].a(paramala);
          i += 1;
        }
      }
    });
  }
  
  public final void a(final alc paramalc)
  {
    bgp.a(new Runnable()
    {
      public final void run()
      {
        alb.c[] arrayOfc = a;
        int j = arrayOfc.length;
        int i = 0;
        while (i < j)
        {
          arrayOfc[i].a(paramalc);
          i += 1;
        }
      }
    });
  }
  
  public final void a(final alc paramalc, final uc paramuc)
  {
    bgp.a(new Runnable()
    {
      public final void run()
      {
        alb.c[] arrayOfc = a;
        int j = arrayOfc.length;
        int i = 0;
        while (i < j)
        {
          arrayOfc[i].a(paramalc, paramuc);
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