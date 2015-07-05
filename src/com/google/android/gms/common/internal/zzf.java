package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.view.View;
import com.google.android.gms.internal.zzus;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;

public final class zzf
{
  private final Account zzFN;
  private final List<String> zzMM;
  private final int zzMf;
  private final View zzMg;
  private final String zzMh;
  private final String zzMi;
  private final zzus zzPr;
  private Integer zzPs;
  
  public zzf(Account paramAccount, Collection<String> paramCollection, int paramInt, View paramView, String paramString1, String paramString2, zzus paramzzus)
  {
    zzFN = paramAccount;
    if (paramCollection == null) {}
    for (paramAccount = Collections.EMPTY_LIST;; paramAccount = Collections.unmodifiableList(new ArrayList(paramCollection)))
    {
      zzMM = paramAccount;
      zzMg = paramView;
      zzMf = paramInt;
      zzMh = paramString1;
      zzMi = paramString2;
      zzPr = paramzzus;
      return;
    }
  }
  
  public final Account getAccount()
  {
    return zzFN;
  }
  
  @Deprecated
  public final String getAccountName()
  {
    if (zzFN != null) {
      return zzFN.name;
    }
    return null;
  }
  
  public final void zza(Integer paramInteger)
  {
    zzPs = paramInteger;
  }
  
  @Deprecated
  public final String zziM()
  {
    return zziNname;
  }
  
  public final Account zziN()
  {
    if (zzFN != null) {
      return zzFN;
    }
    return new Account("<<default account>>", "com.google");
  }
  
  public final int zziO()
  {
    return zzMf;
  }
  
  public final List<String> zziP()
  {
    return zzMM;
  }
  
  public final String[] zziQ()
  {
    return (String[])zzMM.toArray(new String[zzMM.size()]);
  }
  
  public final String zziR()
  {
    return zzMh;
  }
  
  public final String zziS()
  {
    return zzMi;
  }
  
  public final View zziT()
  {
    return zzMg;
  }
  
  public final zzus zziU()
  {
    return zzPr;
  }
  
  public final Integer zziV()
  {
    return zzPs;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.internal.zzf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */