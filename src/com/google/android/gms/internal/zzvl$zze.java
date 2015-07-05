package com.google.android.gms.internal;

import java.util.Collections;
import java.util.List;

public class zzvl$zze
{
  private final List<zzvl.zza> zzaCn;
  private final List<zzvl.zza> zzaCo;
  private final List<zzvl.zza> zzaCp;
  private final List<zzvl.zza> zzaCq;
  private final List<zzvl.zza> zzaCr;
  private final List<zzvl.zza> zzaCs;
  private final List<String> zzaCt;
  private final List<String> zzaCu;
  private final List<String> zzaCv;
  private final List<String> zzaCw;
  
  private zzvl$zze(List<zzvl.zza> paramList1, List<zzvl.zza> paramList2, List<zzvl.zza> paramList3, List<zzvl.zza> paramList4, List<zzvl.zza> paramList5, List<zzvl.zza> paramList6, List<String> paramList7, List<String> paramList8, List<String> paramList9, List<String> paramList10)
  {
    zzaCn = Collections.unmodifiableList(paramList1);
    zzaCo = Collections.unmodifiableList(paramList2);
    zzaCp = Collections.unmodifiableList(paramList3);
    zzaCq = Collections.unmodifiableList(paramList4);
    zzaCr = Collections.unmodifiableList(paramList5);
    zzaCs = Collections.unmodifiableList(paramList6);
    zzaCt = Collections.unmodifiableList(paramList7);
    zzaCu = Collections.unmodifiableList(paramList8);
    zzaCv = Collections.unmodifiableList(paramList9);
    zzaCw = Collections.unmodifiableList(paramList10);
  }
  
  public static zzvl.zzf zzuB()
  {
    return new zzvl.zzf(null);
  }
  
  public String toString()
  {
    return "Positive predicates: " + zzuC() + "  Negative predicates: " + zzuD() + "  Add tags: " + zzuE() + "  Remove tags: " + zzuF() + "  Add macros: " + zzuG() + "  Remove macros: " + zzuL();
  }
  
  public List<zzvl.zza> zzuC()
  {
    return zzaCn;
  }
  
  public List<zzvl.zza> zzuD()
  {
    return zzaCo;
  }
  
  public List<zzvl.zza> zzuE()
  {
    return zzaCp;
  }
  
  public List<zzvl.zza> zzuF()
  {
    return zzaCq;
  }
  
  public List<zzvl.zza> zzuG()
  {
    return zzaCr;
  }
  
  public List<String> zzuH()
  {
    return zzaCt;
  }
  
  public List<String> zzuI()
  {
    return zzaCu;
  }
  
  public List<String> zzuJ()
  {
    return zzaCv;
  }
  
  public List<String> zzuK()
  {
    return zzaCw;
  }
  
  public List<zzvl.zza> zzuL()
  {
    return zzaCs;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzvl.zze
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */