package com.google.android.gms.tagmanager;

import android.content.Context;
import com.google.android.gms.analytics.HitBuilders.ScreenViewBuilder;
import com.google.android.gms.analytics.Tracker;
import com.google.android.gms.analytics.ecommerce.Product;
import com.google.android.gms.analytics.ecommerce.ProductAction;
import com.google.android.gms.analytics.ecommerce.Promotion;
import com.google.android.gms.internal.zza;
import com.google.android.gms.internal.zzb;
import com.google.android.gms.internal.zzd.zza;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class zzdf
  extends zzdc
{
  private static final String ID = zza.zzaO.toString();
  private static final String zzaBA = zzb.zzeN.toString();
  private static final String zzaBB = zzb.zzeQ.toString();
  private static final String zzaBC = zzb.zzeS.toString();
  private static final List<String> zzaBD = Arrays.asList(new String[] { "detail", "checkout", "checkout_option", "click", "add", "remove", "purchase", "refund" });
  private static final Pattern zzaBE = Pattern.compile("dimension(\\d+)");
  private static final Pattern zzaBF = Pattern.compile("metric(\\d+)");
  private static Map<String, String> zzaBG;
  private static Map<String, String> zzaBH;
  private static final String zzaBu = zzb.zzbj.toString();
  private static final String zzaBv = zzb.zzbs.toString();
  private static final String zzaBw = zzb.zzcE.toString();
  private static final String zzaBx = zzb.zzcz.toString();
  private static final String zzaBy = zzb.zzcy.toString();
  private static final String zzaBz = zzb.zzbr.toString();
  private final Set<String> zzaBI;
  private final zzdb zzaBJ;
  private final DataLayer zzaxx;
  
  public zzdf(Context paramContext, DataLayer paramDataLayer)
  {
    this(paramContext, paramDataLayer, new zzdb(paramContext));
  }
  
  zzdf(Context paramContext, DataLayer paramDataLayer, zzdb paramzzdb)
  {
    super(ID, new String[0]);
    zzaxx = paramDataLayer;
    zzaBJ = paramzzdb;
    zzaBI = new HashSet();
    zzaBI.add("");
    zzaBI.add("0");
    zzaBI.add("false");
  }
  
  private Double zzB(Object paramObject)
  {
    if ((paramObject instanceof String)) {
      try
      {
        paramObject = Double.valueOf((String)paramObject);
        return (Double)paramObject;
      }
      catch (NumberFormatException paramObject)
      {
        throw new RuntimeException("Cannot convert the object to Double: " + ((NumberFormatException)paramObject).getMessage());
      }
    }
    if ((paramObject instanceof Integer)) {
      return Double.valueOf(((Integer)paramObject).doubleValue());
    }
    if ((paramObject instanceof Double)) {
      return (Double)paramObject;
    }
    throw new RuntimeException("Cannot convert the object to Double: " + paramObject.toString());
  }
  
  private Integer zzC(Object paramObject)
  {
    if ((paramObject instanceof String)) {
      try
      {
        paramObject = Integer.valueOf((String)paramObject);
        return (Integer)paramObject;
      }
      catch (NumberFormatException paramObject)
      {
        throw new RuntimeException("Cannot convert the object to Integer: " + ((NumberFormatException)paramObject).getMessage());
      }
    }
    if ((paramObject instanceof Double)) {
      return Integer.valueOf(((Double)paramObject).intValue());
    }
    if ((paramObject instanceof Integer)) {
      return (Integer)paramObject;
    }
    throw new RuntimeException("Cannot convert the object to Integer: " + paramObject.toString());
  }
  
  private Promotion zzR(Map<String, String> paramMap)
  {
    Promotion localPromotion = new Promotion();
    String str = (String)paramMap.get("id");
    if (str != null) {
      localPromotion.setId(String.valueOf(str));
    }
    str = (String)paramMap.get("name");
    if (str != null) {
      localPromotion.setName(String.valueOf(str));
    }
    str = (String)paramMap.get("creative");
    if (str != null) {
      localPromotion.setCreative(String.valueOf(str));
    }
    paramMap = (String)paramMap.get("position");
    if (paramMap != null) {
      localPromotion.setPosition(String.valueOf(paramMap));
    }
    return localPromotion;
  }
  
  private Product zzS(Map<String, Object> paramMap)
  {
    Product localProduct = new Product();
    Object localObject = paramMap.get("id");
    if (localObject != null) {
      localProduct.setId(String.valueOf(localObject));
    }
    localObject = paramMap.get("name");
    if (localObject != null) {
      localProduct.setName(String.valueOf(localObject));
    }
    localObject = paramMap.get("brand");
    if (localObject != null) {
      localProduct.setBrand(String.valueOf(localObject));
    }
    localObject = paramMap.get("category");
    if (localObject != null) {
      localProduct.setCategory(String.valueOf(localObject));
    }
    localObject = paramMap.get("variant");
    if (localObject != null) {
      localProduct.setVariant(String.valueOf(localObject));
    }
    localObject = paramMap.get("coupon");
    if (localObject != null) {
      localProduct.setCouponCode(String.valueOf(localObject));
    }
    localObject = paramMap.get("position");
    if (localObject != null) {
      localProduct.setPosition(zzC(localObject).intValue());
    }
    localObject = paramMap.get("price");
    if (localObject != null) {
      localProduct.setPrice(zzB(localObject).doubleValue());
    }
    localObject = paramMap.get("quantity");
    if (localObject != null) {
      localProduct.setQuantity(zzC(localObject).intValue());
    }
    localObject = paramMap.keySet().iterator();
    while (((Iterator)localObject).hasNext())
    {
      String str = (String)((Iterator)localObject).next();
      Matcher localMatcher1 = zzaBE.matcher(str);
      int i;
      if (localMatcher1.matches())
      {
        try
        {
          i = Integer.parseInt(localMatcher1.group(1));
          localProduct.setCustomDimension(i, String.valueOf(paramMap.get(str)));
        }
        catch (NumberFormatException localNumberFormatException1)
        {
          zzbf.zzac("illegal number in custom dimension value: " + str);
        }
      }
      else
      {
        Matcher localMatcher2 = zzaBF.matcher(str);
        if (localMatcher2.matches()) {
          try
          {
            i = Integer.parseInt(localMatcher2.group(1));
            localProduct.setCustomMetric(i, zzC(paramMap.get(str)).intValue());
          }
          catch (NumberFormatException localNumberFormatException2)
          {
            zzbf.zzac("illegal number in custom metric value: " + str);
          }
        }
      }
    }
    return localProduct;
  }
  
  private Map<String, String> zzT(Map<String, zzd.zza> paramMap)
  {
    paramMap = (zzd.zza)paramMap.get(zzaBB);
    if (paramMap != null) {
      return zzc(paramMap);
    }
    if (zzaBG == null)
    {
      paramMap = new HashMap();
      paramMap.put("transactionId", "&ti");
      paramMap.put("transactionAffiliation", "&ta");
      paramMap.put("transactionTax", "&tt");
      paramMap.put("transactionShipping", "&ts");
      paramMap.put("transactionTotal", "&tr");
      paramMap.put("transactionCurrency", "&cu");
      zzaBG = paramMap;
    }
    return zzaBG;
  }
  
  private Map<String, String> zzU(Map<String, zzd.zza> paramMap)
  {
    paramMap = (zzd.zza)paramMap.get(zzaBC);
    if (paramMap != null) {
      return zzc(paramMap);
    }
    if (zzaBH == null)
    {
      paramMap = new HashMap();
      paramMap.put("name", "&in");
      paramMap.put("sku", "&ic");
      paramMap.put("category", "&iv");
      paramMap.put("price", "&ip");
      paramMap.put("quantity", "&iq");
      paramMap.put("currency", "&cu");
      zzaBH = paramMap;
    }
    return zzaBH;
  }
  
  private void zza(Tracker paramTracker, Map<String, zzd.zza> paramMap)
  {
    String str = zzdt("transactionId");
    if (str == null) {
      zzbf.zzZ("Cannot find transactionId in data layer.");
    }
    for (;;)
    {
      return;
      LinkedList localLinkedList = new LinkedList();
      Object localObject2;
      Object localObject3;
      try
      {
        localObject1 = zzm((zzd.zza)paramMap.get(zzaBz));
        ((Map)localObject1).put("&t", "transaction");
        localObject2 = zzT(paramMap).entrySet().iterator();
        while (((Iterator)localObject2).hasNext())
        {
          localObject3 = (Map.Entry)((Iterator)localObject2).next();
          zzb((Map)localObject1, (String)((Map.Entry)localObject3).getValue(), zzdt((String)((Map.Entry)localObject3).getKey()));
        }
        localLinkedList.add(localObject1);
      }
      catch (IllegalArgumentException paramTracker)
      {
        zzbf.zzb("Unable to send transaction", paramTracker);
        return;
      }
      Object localObject1 = zzdu("transactionProducts");
      if (localObject1 != null)
      {
        localObject1 = ((List)localObject1).iterator();
        while (((Iterator)localObject1).hasNext())
        {
          localObject2 = (Map)((Iterator)localObject1).next();
          if (((Map)localObject2).get("name") == null)
          {
            zzbf.zzZ("Unable to send transaction item hit due to missing 'name' field.");
            return;
          }
          localObject3 = zzm((zzd.zza)paramMap.get(zzaBz));
          ((Map)localObject3).put("&t", "item");
          ((Map)localObject3).put("&ti", str);
          Iterator localIterator = zzU(paramMap).entrySet().iterator();
          while (localIterator.hasNext())
          {
            Map.Entry localEntry = (Map.Entry)localIterator.next();
            zzb((Map)localObject3, (String)localEntry.getValue(), (String)((Map)localObject2).get(localEntry.getKey()));
          }
          localLinkedList.add(localObject3);
        }
      }
      paramMap = localLinkedList.iterator();
      while (paramMap.hasNext()) {
        paramTracker.send((Map)paramMap.next());
      }
    }
  }
  
  private void zzb(Tracker paramTracker, Map<String, zzd.zza> paramMap)
  {
    HitBuilders.ScreenViewBuilder localScreenViewBuilder = new HitBuilders.ScreenViewBuilder();
    Object localObject1 = zzm((zzd.zza)paramMap.get(zzaBz));
    localScreenViewBuilder.setAll((Map)localObject1);
    if (zzf(paramMap, zzaBx))
    {
      paramMap = zzaxx.get("ecommerce");
      if (!(paramMap instanceof Map)) {
        break label719;
      }
      paramMap = (Map)paramMap;
    }
    for (;;)
    {
      if (paramMap != null)
      {
        Object localObject2 = (String)((Map)localObject1).get("&cu");
        localObject1 = localObject2;
        if (localObject2 == null) {
          localObject1 = (String)paramMap.get("currencyCode");
        }
        if (localObject1 != null) {
          localScreenViewBuilder.set("&cu", (String)localObject1);
        }
        localObject1 = paramMap.get("impressions");
        if ((localObject1 instanceof List))
        {
          localObject1 = ((List)localObject1).iterator();
          for (;;)
          {
            if (((Iterator)localObject1).hasNext())
            {
              localObject2 = (Map)((Iterator)localObject1).next();
              try
              {
                localScreenViewBuilder.addImpression(zzS((Map)localObject2), (String)((Map)localObject2).get("list"));
              }
              catch (RuntimeException localRuntimeException1)
              {
                zzbf.zzZ("Failed to extract a product from DataLayer. " + localRuntimeException1.getMessage());
              }
              continue;
              paramMap = zzde.zzl((zzd.zza)paramMap.get(zzaBy));
              if (!(paramMap instanceof Map)) {
                break label714;
              }
              paramMap = (Map)paramMap;
              break;
            }
          }
        }
        if (paramMap.containsKey("promoClick")) {
          localObject1 = (List)((Map)paramMap.get("promoClick")).get("promotions");
        }
      }
      for (;;)
      {
        if (localObject1 != null)
        {
          localObject1 = ((List)localObject1).iterator();
          for (;;)
          {
            if (((Iterator)localObject1).hasNext())
            {
              Map localMap1 = (Map)((Iterator)localObject1).next();
              try
              {
                localScreenViewBuilder.addPromotion(zzR(localMap1));
              }
              catch (RuntimeException localRuntimeException2)
              {
                zzbf.zzZ("Failed to extract a promotion from DataLayer. " + localRuntimeException2.getMessage());
              }
              continue;
              if (!paramMap.containsKey("promoView")) {
                break label708;
              }
              localObject1 = (List)((Map)paramMap.get("promoView")).get("promotions");
              break;
            }
          }
          if (paramMap.containsKey("promoClick")) {
            localScreenViewBuilder.set("&promoa", "click");
          }
        }
        for (int i = 0;; i = 1)
        {
          if (i == 0) {
            break label658;
          }
          Object localObject3 = zzaBD.iterator();
          do
          {
            if (!((Iterator)localObject3).hasNext()) {
              break;
            }
            localObject1 = (String)((Iterator)localObject3).next();
          } while (!paramMap.containsKey(localObject1));
          paramMap = (Map)paramMap.get(localObject1);
          localObject3 = (List)paramMap.get("products");
          if (localObject3 == null) {
            break;
          }
          localObject3 = ((List)localObject3).iterator();
          while (((Iterator)localObject3).hasNext())
          {
            Map localMap2 = (Map)((Iterator)localObject3).next();
            try
            {
              localScreenViewBuilder.addProduct(zzS(localMap2));
            }
            catch (RuntimeException localRuntimeException3)
            {
              zzbf.zzZ("Failed to extract a product from DataLayer. " + localRuntimeException3.getMessage());
            }
          }
          localScreenViewBuilder.set("&promoa", "view");
        }
        for (;;)
        {
          try
          {
            if (!paramMap.containsKey("actionField")) {
              continue;
            }
            paramMap = zzd((String)localObject1, (Map)paramMap.get("actionField"));
            localScreenViewBuilder.setProductAction(paramMap);
          }
          catch (RuntimeException paramMap)
          {
            label658:
            zzbf.zzZ("Failed to extract a product action from DataLayer. " + paramMap.getMessage());
            continue;
          }
          paramTracker.send(localScreenViewBuilder.build());
          return;
          paramMap = new ProductAction((String)localObject1);
        }
        label708:
        localObject1 = null;
      }
      label714:
      paramMap = null;
      continue;
      label719:
      paramMap = null;
    }
  }
  
  private void zzb(Map<String, String> paramMap, String paramString1, String paramString2)
  {
    if (paramString2 != null) {
      paramMap.put(paramString1, paramString2);
    }
  }
  
  private Map<String, String> zzc(zzd.zza paramzza)
  {
    paramzza = zzde.zzl(paramzza);
    if (!(paramzza instanceof Map)) {
      return null;
    }
    Object localObject = (Map)paramzza;
    paramzza = new LinkedHashMap();
    localObject = ((Map)localObject).entrySet().iterator();
    while (((Iterator)localObject).hasNext())
    {
      Map.Entry localEntry = (Map.Entry)((Iterator)localObject).next();
      paramzza.put(localEntry.getKey().toString(), localEntry.getValue().toString());
    }
    return paramzza;
  }
  
  private ProductAction zzd(String paramString, Map<String, Object> paramMap)
  {
    paramString = new ProductAction(paramString);
    Object localObject = paramMap.get("id");
    if (localObject != null) {
      paramString.setTransactionId(String.valueOf(localObject));
    }
    localObject = paramMap.get("affiliation");
    if (localObject != null) {
      paramString.setTransactionAffiliation(String.valueOf(localObject));
    }
    localObject = paramMap.get("coupon");
    if (localObject != null) {
      paramString.setTransactionCouponCode(String.valueOf(localObject));
    }
    localObject = paramMap.get("list");
    if (localObject != null) {
      paramString.setProductActionList(String.valueOf(localObject));
    }
    localObject = paramMap.get("option");
    if (localObject != null) {
      paramString.setCheckoutOptions(String.valueOf(localObject));
    }
    localObject = paramMap.get("revenue");
    if (localObject != null) {
      paramString.setTransactionRevenue(zzB(localObject).doubleValue());
    }
    localObject = paramMap.get("tax");
    if (localObject != null) {
      paramString.setTransactionTax(zzB(localObject).doubleValue());
    }
    localObject = paramMap.get("shipping");
    if (localObject != null) {
      paramString.setTransactionShipping(zzB(localObject).doubleValue());
    }
    paramMap = paramMap.get("step");
    if (paramMap != null) {
      paramString.setCheckoutStep(zzC(paramMap).intValue());
    }
    return paramString;
  }
  
  private String zzdt(String paramString)
  {
    paramString = zzaxx.get(paramString);
    if (paramString == null) {
      return null;
    }
    return paramString.toString();
  }
  
  private List<Map<String, String>> zzdu(String paramString)
  {
    paramString = zzaxx.get(paramString);
    if (paramString == null) {
      return null;
    }
    if (!(paramString instanceof List)) {
      throw new IllegalArgumentException("transactionProducts should be of type List.");
    }
    Iterator localIterator = ((List)paramString).iterator();
    while (localIterator.hasNext()) {
      if (!(localIterator.next() instanceof Map)) {
        throw new IllegalArgumentException("Each element of transactionProducts should be of type Map.");
      }
    }
    return (List)paramString;
  }
  
  private boolean zzf(Map<String, zzd.zza> paramMap, String paramString)
  {
    paramMap = (zzd.zza)paramMap.get(paramString);
    if (paramMap == null) {
      return false;
    }
    return zzde.zzk(paramMap).booleanValue();
  }
  
  private Map<String, String> zzm(zzd.zza paramzza)
  {
    if (paramzza == null) {
      return new HashMap();
    }
    paramzza = zzc(paramzza);
    if (paramzza == null) {
      return new HashMap();
    }
    String str = (String)paramzza.get("&aip");
    if ((str != null) && (zzaBI.contains(str.toLowerCase()))) {
      paramzza.remove("&aip");
    }
    return paramzza;
  }
  
  public void zzJ(Map<String, zzd.zza> paramMap)
  {
    Tracker localTracker = zzaBJ.zzdl("_GTM_DEFAULT_TRACKER_");
    localTracker.enableAdvertisingIdCollection(zzf(paramMap, "collect_adid"));
    if (zzf(paramMap, zzaBw))
    {
      zzb(localTracker, paramMap);
      return;
    }
    if (zzf(paramMap, zzaBv))
    {
      localTracker.send(zzm((zzd.zza)paramMap.get(zzaBz)));
      return;
    }
    if (zzf(paramMap, zzaBA))
    {
      zza(localTracker, paramMap);
      return;
    }
    zzbf.zzac("Ignoring unknown tag.");
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.zzdf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */