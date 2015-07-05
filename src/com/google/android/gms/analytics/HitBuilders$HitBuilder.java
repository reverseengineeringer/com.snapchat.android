package com.google.android.gms.analytics;

import android.text.TextUtils;
import com.google.android.gms.analytics.ecommerce.Product;
import com.google.android.gms.analytics.ecommerce.ProductAction;
import com.google.android.gms.analytics.ecommerce.Promotion;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class HitBuilders$HitBuilder<T extends HitBuilder>
{
  private Map<String, String> zzED = new HashMap();
  ProductAction zzEE;
  Map<String, List<Product>> zzEF = new HashMap();
  List<Promotion> zzEG = new ArrayList();
  List<Product> zzEH = new ArrayList();
  
  public T addImpression(Product paramProduct, String paramString)
  {
    if (paramProduct == null)
    {
      zzae.zzac("product should be non-null");
      return this;
    }
    String str = paramString;
    if (paramString == null) {
      str = "";
    }
    if (!zzEF.containsKey(str)) {
      zzEF.put(str, new ArrayList());
    }
    ((List)zzEF.get(str)).add(paramProduct);
    return this;
  }
  
  public T addProduct(Product paramProduct)
  {
    if (paramProduct == null)
    {
      zzae.zzac("product should be non-null");
      return this;
    }
    zzEH.add(paramProduct);
    return this;
  }
  
  public T addPromotion(Promotion paramPromotion)
  {
    if (paramPromotion == null)
    {
      zzae.zzac("promotion should be non-null");
      return this;
    }
    zzEG.add(paramPromotion);
    return this;
  }
  
  public Map<String, String> build()
  {
    HashMap localHashMap = new HashMap(zzED);
    if (zzEE != null) {
      localHashMap.putAll(zzEE.build());
    }
    Iterator localIterator = zzEG.iterator();
    int i = 1;
    while (localIterator.hasNext())
    {
      localHashMap.putAll(((Promotion)localIterator.next()).zzaw(zzs.zzH(i)));
      i += 1;
    }
    localIterator = zzEH.iterator();
    i = 1;
    while (localIterator.hasNext())
    {
      localHashMap.putAll(((Product)localIterator.next()).zzaw(zzs.zzG(i)));
      i += 1;
    }
    localIterator = zzEF.entrySet().iterator();
    i = 1;
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      Object localObject = (List)localEntry.getValue();
      String str = zzs.zzJ(i);
      localObject = ((List)localObject).iterator();
      int j = 1;
      while (((Iterator)localObject).hasNext())
      {
        localHashMap.putAll(((Product)((Iterator)localObject).next()).zzaw(str + zzs.zzI(j)));
        j += 1;
      }
      if (!TextUtils.isEmpty((CharSequence)localEntry.getKey())) {
        localHashMap.put(str + "nm", localEntry.getKey());
      }
      i += 1;
    }
    return localHashMap;
  }
  
  protected String get(String paramString)
  {
    return (String)zzED.get(paramString);
  }
  
  public final T set(String paramString1, String paramString2)
  {
    zzy.zzfV().zza(zzy.zza.zzCV);
    if (paramString1 != null)
    {
      zzED.put(paramString1, paramString2);
      return this;
    }
    zzae.zzac(" HitBuilder.set() called with a null paramName.");
    return this;
  }
  
  public final T setAll(Map<String, String> paramMap)
  {
    zzy.zzfV().zza(zzy.zza.zzCW);
    if (paramMap == null) {
      return this;
    }
    zzED.putAll(new HashMap(paramMap));
    return this;
  }
  
  public T setCampaignParamsFromUrl(String paramString)
  {
    zzy.zzfV().zza(zzy.zza.zzCY);
    paramString = zzan.zzau(paramString);
    if (TextUtils.isEmpty(paramString)) {
      return this;
    }
    paramString = zzan.zzat(paramString);
    set("&cc", (String)paramString.get("utm_content"));
    set("&cm", (String)paramString.get("utm_medium"));
    set("&cn", (String)paramString.get("utm_campaign"));
    set("&cs", (String)paramString.get("utm_source"));
    set("&ck", (String)paramString.get("utm_term"));
    set("&ci", (String)paramString.get("utm_id"));
    set("&gclid", (String)paramString.get("gclid"));
    set("&dclid", (String)paramString.get("dclid"));
    set("&gmob_t", (String)paramString.get("gmob_t"));
    return this;
  }
  
  public T setCustomDimension(int paramInt, String paramString)
  {
    set(zzs.zzE(paramInt), paramString);
    return this;
  }
  
  public T setCustomMetric(int paramInt, float paramFloat)
  {
    set(zzs.zzF(paramInt), Float.toString(paramFloat));
    return this;
  }
  
  protected T setHitType(String paramString)
  {
    set("&t", paramString);
    return this;
  }
  
  public T setNewSession()
  {
    set("&sc", "start");
    return this;
  }
  
  public T setNonInteraction(boolean paramBoolean)
  {
    set("&ni", zzan.zzG(paramBoolean));
    return this;
  }
  
  public T setProductAction(ProductAction paramProductAction)
  {
    zzEE = paramProductAction;
    return this;
  }
  
  public T setPromotionAction(String paramString)
  {
    zzED.put("&promoa", paramString);
    return this;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.HitBuilders.HitBuilder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */