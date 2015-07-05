package com.google.android.gms.analytics;

@Deprecated
public class HitBuilders$TransactionBuilder
  extends HitBuilders.HitBuilder<TransactionBuilder>
{
  public HitBuilders$TransactionBuilder()
  {
    zzy.zzfV().zza(zzy.zza.zzDB);
    set("&t", "transaction");
  }
  
  public TransactionBuilder setAffiliation(String paramString)
  {
    set("&ta", paramString);
    return this;
  }
  
  public TransactionBuilder setCurrencyCode(String paramString)
  {
    set("&cu", paramString);
    return this;
  }
  
  public TransactionBuilder setRevenue(double paramDouble)
  {
    set("&tr", Double.toString(paramDouble));
    return this;
  }
  
  public TransactionBuilder setShipping(double paramDouble)
  {
    set("&ts", Double.toString(paramDouble));
    return this;
  }
  
  public TransactionBuilder setTax(double paramDouble)
  {
    set("&tt", Double.toString(paramDouble));
    return this;
  }
  
  public TransactionBuilder setTransactionId(String paramString)
  {
    set("&ti", paramString);
    return this;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.HitBuilders.TransactionBuilder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */