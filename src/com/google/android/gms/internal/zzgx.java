package com.google.android.gms.internal;

import android.content.Context;
import android.graphics.Color;
import android.location.Location;
import android.os.Bundle;
import android.text.TextUtils;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@zzgi
public final class zzgx
{
  private static final SimpleDateFormat zzxu = new SimpleDateFormat("yyyyMMdd");
  
  public static zzgq zza(Context paramContext, zzgo paramzzgo, String paramString)
  {
    JSONObject localJSONObject;
    String str1;
    String str3;
    String str2;
    long l2;
    String str4;
    long l1;
    Object localObject1;
    int i;
    label211:
    Object localObject2;
    label249:
    int j;
    for (;;)
    {
      try
      {
        localJSONObject = new JSONObject(paramString);
        str1 = localJSONObject.optString("ad_base_url", null);
        paramString = localJSONObject.optString("ad_url", null);
        str3 = localJSONObject.optString("ad_size", null);
        str2 = localJSONObject.optString("ad_html", null);
        l2 = -1L;
        str4 = localJSONObject.optString("debug_dialog", null);
        if (!localJSONObject.has("interstitial_timeout")) {
          break label731;
        }
        l1 = (localJSONObject.getDouble("interstitial_timeout") * 1000.0D);
        localObject1 = localJSONObject.optString("orientation", null);
        i = -1;
        if ("portrait".equals(localObject1))
        {
          i = zzab.zzaO().zzey();
          if (!TextUtils.isEmpty(str2))
          {
            if (!TextUtils.isEmpty(str1)) {
              break label725;
            }
            zzhx.zzac("Could not parse the mediation config: Missing required ad_base_url field");
            return new zzgq(0);
          }
        }
        else
        {
          if (!"landscape".equals(localObject1)) {
            continue;
          }
          i = zzab.zzaO().zzex();
          continue;
        }
        if (!TextUtils.isEmpty(paramString))
        {
          localObject1 = zzgw.zza(paramContext, zzlP.zzzH, paramString, null, null);
          str1 = zzus;
          str2 = zzwG;
          l2 = zzwM;
          localObject2 = localJSONObject.optJSONArray("click_urls");
          if (localObject1 == null)
          {
            paramContext = null;
            if (localObject2 == null) {
              break;
            }
            paramString = paramContext;
            if (paramContext != null) {
              break label739;
            }
            paramString = new LinkedList();
            break label739;
            if (j >= ((JSONArray)localObject2).length()) {
              break label745;
            }
            paramString.add(((JSONArray)localObject2).getString(j));
            j += 1;
            continue;
          }
        }
        else
        {
          zzhx.zzac("Could not parse the mediation config: Missing required ad_html or ad_url field.");
          paramContext = new zzgq(0);
          return paramContext;
        }
      }
      catch (JSONException paramContext)
      {
        zzhx.zzac("Could not parse the mediation config: " + paramContext.getMessage());
        return new zzgq(0);
      }
      paramContext = zzst;
    }
    label339:
    Object localObject3 = localJSONObject.optJSONArray("impression_urls");
    if (localObject1 == null) {
      paramContext = null;
    }
    while (localObject3 != null)
    {
      paramString = paramContext;
      if (paramContext != null) {
        break label751;
      }
      paramString = new LinkedList();
      break label751;
      label377:
      while (j < ((JSONArray)localObject3).length())
      {
        paramString.add(((JSONArray)localObject3).getString(j));
        j += 1;
      }
      paramContext = zzsu;
      continue;
      label419:
      JSONArray localJSONArray = localJSONObject.optJSONArray("manual_impression_urls");
      if (localObject1 == null) {}
      for (paramContext = null; localJSONArray != null; paramContext = zzwK)
      {
        paramString = paramContext;
        if (paramContext != null) {
          break label763;
        }
        paramString = new LinkedList();
        break label763;
        label457:
        while (j < localJSONArray.length())
        {
          paramString.add(localJSONArray.getString(j));
          j += 1;
        }
      }
    }
    for (;;)
    {
      long l3 = l1;
      j = i;
      if (localObject1 != null)
      {
        if (orientation != -1) {
          i = orientation;
        }
        l3 = l1;
        j = i;
        if (zzwH > 0L)
        {
          l3 = zzwH;
          j = i;
        }
      }
      localObject1 = localJSONObject.optString("active_view");
      paramString = null;
      boolean bool1 = localJSONObject.optBoolean("ad_is_javascript", false);
      if (bool1) {
        paramString = localJSONObject.optString("ad_passback_url", null);
      }
      boolean bool2 = localJSONObject.optBoolean("mediation", false);
      boolean bool3 = localJSONObject.optBoolean("custom_render_allowed", false);
      boolean bool4 = localJSONObject.optBoolean("native", false);
      boolean bool5 = localJSONObject.optBoolean("content_url_opted_out", false);
      boolean bool6 = localJSONObject.optBoolean("prefetch", false);
      l1 = localJSONObject.optLong("refresh_interval_milliseconds", -1L);
      paramContext = new zzgq(str1, str2, (List)localObject2, (List)localObject3, l3, bool2, localJSONObject.optLong("mediation_config_cache_time_milliseconds", -1L), paramContext, l1, j, str3, l2, str4, bool1, paramString, (String)localObject1, bool3, bool4, zzwv, bool5, bool6);
      return paramContext;
      continue;
      localObject3 = paramContext;
      break label419;
      localObject2 = paramContext;
      break label339;
      label725:
      localObject1 = null;
      break label211;
      label731:
      l1 = -1L;
      break;
      label739:
      j = 0;
      break label249;
      label745:
      localObject2 = paramString;
      break label339;
      label751:
      j = 0;
      break label377;
      localObject3 = paramString;
      break label419;
      label763:
      j = 0;
      break label457;
      paramContext = paramString;
    }
  }
  
  /* Error */
  public static JSONObject zza(zzgo paramzzgo, zzhb paramzzhb, Location paramLocation, zzbv paramzzbv)
  {
    // Byte code:
    //   0: new 230	java/util/HashMap
    //   3: dup
    //   4: invokespecial 231	java/util/HashMap:<init>	()V
    //   7: astore_2
    //   8: aload_3
    //   9: invokevirtual 237	com/google/android/gms/internal/zzbv:zzbW	()Ljava/util/List;
    //   12: astore 8
    //   14: aload 8
    //   16: invokeinterface 240 1 0
    //   21: ifle +17 -> 38
    //   24: aload_2
    //   25: ldc -14
    //   27: ldc -12
    //   29: aload 8
    //   31: invokestatic 248	android/text/TextUtils:join	(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;
    //   34: invokevirtual 252	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   37: pop
    //   38: aload_0
    //   39: getfield 256	com/google/android/gms/internal/zzgo:zzwm	Landroid/os/Bundle;
    //   42: ifnull +15 -> 57
    //   45: aload_2
    //   46: ldc_w 258
    //   49: aload_0
    //   50: getfield 256	com/google/android/gms/internal/zzgo:zzwm	Landroid/os/Bundle;
    //   53: invokevirtual 252	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   56: pop
    //   57: aload_2
    //   58: aload_0
    //   59: getfield 262	com/google/android/gms/internal/zzgo:zzwn	Lcom/google/android/gms/internal/zzax;
    //   62: invokestatic 265	com/google/android/gms/internal/zzgx:zza	(Ljava/util/HashMap;Lcom/google/android/gms/internal/zzax;)V
    //   65: aload_2
    //   66: ldc_w 267
    //   69: aload_0
    //   70: getfield 271	com/google/android/gms/internal/zzgo:zzlV	Lcom/google/android/gms/internal/zzba;
    //   73: getfield 276	com/google/android/gms/internal/zzba:zzpa	Ljava/lang/String;
    //   76: invokevirtual 252	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   79: pop
    //   80: aload_0
    //   81: getfield 271	com/google/android/gms/internal/zzgo:zzlV	Lcom/google/android/gms/internal/zzba;
    //   84: getfield 279	com/google/android/gms/internal/zzba:width	I
    //   87: iconst_m1
    //   88: if_icmpne +14 -> 102
    //   91: aload_2
    //   92: ldc_w 281
    //   95: ldc_w 283
    //   98: invokevirtual 252	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   101: pop
    //   102: aload_0
    //   103: getfield 271	com/google/android/gms/internal/zzgo:zzlV	Lcom/google/android/gms/internal/zzba;
    //   106: getfield 286	com/google/android/gms/internal/zzba:height	I
    //   109: bipush -2
    //   111: if_icmpne +14 -> 125
    //   114: aload_2
    //   115: ldc_w 288
    //   118: ldc_w 290
    //   121: invokevirtual 252	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   124: pop
    //   125: aload_0
    //   126: getfield 271	com/google/android/gms/internal/zzgo:zzlV	Lcom/google/android/gms/internal/zzba;
    //   129: getfield 294	com/google/android/gms/internal/zzba:zzpc	[Lcom/google/android/gms/internal/zzba;
    //   132: ifnull +171 -> 303
    //   135: new 155	java/lang/StringBuilder
    //   138: dup
    //   139: invokespecial 295	java/lang/StringBuilder:<init>	()V
    //   142: astore 8
    //   144: aload_0
    //   145: getfield 271	com/google/android/gms/internal/zzgo:zzlV	Lcom/google/android/gms/internal/zzba;
    //   148: getfield 294	com/google/android/gms/internal/zzba:zzpc	[Lcom/google/android/gms/internal/zzba;
    //   151: astore 9
    //   153: aload 9
    //   155: arraylength
    //   156: istore 6
    //   158: iconst_0
    //   159: istore 4
    //   161: iload 4
    //   163: iload 6
    //   165: if_icmpge +128 -> 293
    //   168: aload 9
    //   170: iload 4
    //   172: aaload
    //   173: astore 10
    //   175: aload 8
    //   177: invokevirtual 296	java/lang/StringBuilder:length	()I
    //   180: ifeq +12 -> 192
    //   183: aload 8
    //   185: ldc_w 298
    //   188: invokevirtual 166	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   191: pop
    //   192: aload 10
    //   194: getfield 279	com/google/android/gms/internal/zzba:width	I
    //   197: iconst_m1
    //   198: if_icmpne +75 -> 273
    //   201: aload 10
    //   203: getfield 301	com/google/android/gms/internal/zzba:widthPixels	I
    //   206: i2f
    //   207: aload_1
    //   208: getfield 307	com/google/android/gms/internal/zzhb:zzwz	F
    //   211: fdiv
    //   212: f2i
    //   213: istore 5
    //   215: aload 8
    //   217: iload 5
    //   219: invokevirtual 310	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   222: pop
    //   223: aload 8
    //   225: ldc_w 312
    //   228: invokevirtual 166	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   231: pop
    //   232: aload 10
    //   234: getfield 286	com/google/android/gms/internal/zzba:height	I
    //   237: bipush -2
    //   239: if_icmpne +44 -> 283
    //   242: aload 10
    //   244: getfield 315	com/google/android/gms/internal/zzba:heightPixels	I
    //   247: i2f
    //   248: aload_1
    //   249: getfield 307	com/google/android/gms/internal/zzhb:zzwz	F
    //   252: fdiv
    //   253: f2i
    //   254: istore 5
    //   256: aload 8
    //   258: iload 5
    //   260: invokevirtual 310	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   263: pop
    //   264: iload 4
    //   266: iconst_1
    //   267: iadd
    //   268: istore 4
    //   270: goto -109 -> 161
    //   273: aload 10
    //   275: getfield 279	com/google/android/gms/internal/zzba:width	I
    //   278: istore 5
    //   280: goto -65 -> 215
    //   283: aload 10
    //   285: getfield 286	com/google/android/gms/internal/zzba:height	I
    //   288: istore 5
    //   290: goto -34 -> 256
    //   293: aload_2
    //   294: ldc_w 317
    //   297: aload 8
    //   299: invokevirtual 252	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   302: pop
    //   303: aload_0
    //   304: getfield 320	com/google/android/gms/internal/zzgo:zzwt	I
    //   307: ifeq +30 -> 337
    //   310: aload_2
    //   311: ldc_w 322
    //   314: aload_0
    //   315: getfield 320	com/google/android/gms/internal/zzgo:zzwt	I
    //   318: invokestatic 328	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   321: invokevirtual 252	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   324: pop
    //   325: aload_2
    //   326: ldc_w 330
    //   329: aload_0
    //   330: getfield 333	com/google/android/gms/internal/zzgo:zzmf	Ljava/util/List;
    //   333: invokevirtual 252	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   336: pop
    //   337: aload_2
    //   338: ldc_w 335
    //   341: aload_0
    //   342: getfield 338	com/google/android/gms/internal/zzgo:zzlM	Ljava/lang/String;
    //   345: invokevirtual 252	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   348: pop
    //   349: aload_2
    //   350: ldc_w 340
    //   353: aload_0
    //   354: getfield 344	com/google/android/gms/internal/zzgo:applicationInfo	Landroid/content/pm/ApplicationInfo;
    //   357: getfield 349	android/content/pm/ApplicationInfo:packageName	Ljava/lang/String;
    //   360: invokevirtual 252	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   363: pop
    //   364: aload_0
    //   365: getfield 353	com/google/android/gms/internal/zzgo:zzwo	Landroid/content/pm/PackageInfo;
    //   368: ifnull +21 -> 389
    //   371: aload_2
    //   372: ldc_w 355
    //   375: aload_0
    //   376: getfield 353	com/google/android/gms/internal/zzgo:zzwo	Landroid/content/pm/PackageInfo;
    //   379: getfield 360	android/content/pm/PackageInfo:versionCode	I
    //   382: invokestatic 328	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   385: invokevirtual 252	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   388: pop
    //   389: aload_2
    //   390: ldc_w 362
    //   393: aload_0
    //   394: getfield 365	com/google/android/gms/internal/zzgo:zzwp	Ljava/lang/String;
    //   397: invokevirtual 252	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   400: pop
    //   401: aload_2
    //   402: ldc_w 367
    //   405: aload_0
    //   406: getfield 370	com/google/android/gms/internal/zzgo:zzwq	Ljava/lang/String;
    //   409: invokevirtual 252	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   412: pop
    //   413: aload_2
    //   414: ldc_w 372
    //   417: aload_0
    //   418: getfield 375	com/google/android/gms/internal/zzgo:zzwr	Ljava/lang/String;
    //   421: invokevirtual 252	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   424: pop
    //   425: aload_2
    //   426: ldc_w 377
    //   429: aload_0
    //   430: getfield 106	com/google/android/gms/internal/zzgo:zzlP	Lcom/google/android/gms/internal/zzhy;
    //   433: getfield 112	com/google/android/gms/internal/zzhy:zzzH	Ljava/lang/String;
    //   436: invokevirtual 252	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   439: pop
    //   440: aload_2
    //   441: aload_1
    //   442: invokestatic 380	com/google/android/gms/internal/zzgx:zza	(Ljava/util/HashMap;Lcom/google/android/gms/internal/zzhb;)V
    //   445: aload_2
    //   446: ldc_w 382
    //   449: new 324	java/lang/Integer
    //   452: dup
    //   453: aload_3
    //   454: invokevirtual 385	com/google/android/gms/internal/zzbv:zzbX	()I
    //   457: invokespecial 386	java/lang/Integer:<init>	(I)V
    //   460: invokevirtual 252	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   463: pop
    //   464: aload_0
    //   465: getfield 262	com/google/android/gms/internal/zzgo:zzwn	Lcom/google/android/gms/internal/zzax;
    //   468: getfield 389	com/google/android/gms/internal/zzax:versionCode	I
    //   471: iconst_2
    //   472: if_icmplt +24 -> 496
    //   475: aload_0
    //   476: getfield 262	com/google/android/gms/internal/zzgo:zzwn	Lcom/google/android/gms/internal/zzax;
    //   479: getfield 393	com/google/android/gms/internal/zzax:zzoT	Landroid/location/Location;
    //   482: ifnull +14 -> 496
    //   485: aload_2
    //   486: aload_0
    //   487: getfield 262	com/google/android/gms/internal/zzgo:zzwn	Lcom/google/android/gms/internal/zzax;
    //   490: getfield 393	com/google/android/gms/internal/zzax:zzoT	Landroid/location/Location;
    //   493: invokestatic 396	com/google/android/gms/internal/zzgx:zza	(Ljava/util/HashMap;Landroid/location/Location;)V
    //   496: aload_0
    //   497: getfield 397	com/google/android/gms/internal/zzgo:versionCode	I
    //   500: iconst_2
    //   501: if_icmplt +15 -> 516
    //   504: aload_2
    //   505: ldc_w 399
    //   508: aload_0
    //   509: getfield 402	com/google/android/gms/internal/zzgo:zzws	Landroid/os/Bundle;
    //   512: invokevirtual 252	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   515: pop
    //   516: aload_0
    //   517: getfield 397	com/google/android/gms/internal/zzgo:versionCode	I
    //   520: iconst_4
    //   521: if_icmplt +25 -> 546
    //   524: aload_0
    //   525: getfield 224	com/google/android/gms/internal/zzgo:zzwv	Z
    //   528: ifeq +18 -> 546
    //   531: aload_2
    //   532: ldc_w 404
    //   535: aload_0
    //   536: getfield 224	com/google/android/gms/internal/zzgo:zzwv	Z
    //   539: invokestatic 409	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   542: invokevirtual 252	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   545: pop
    //   546: aload_0
    //   547: getfield 397	com/google/android/gms/internal/zzgo:versionCode	I
    //   550: iconst_4
    //   551: if_icmplt +22 -> 573
    //   554: aload_0
    //   555: getfield 412	com/google/android/gms/internal/zzgo:zzwu	Landroid/os/Bundle;
    //   558: ifnull +15 -> 573
    //   561: aload_2
    //   562: ldc_w 414
    //   565: aload_0
    //   566: getfield 412	com/google/android/gms/internal/zzgo:zzwu	Landroid/os/Bundle;
    //   569: invokevirtual 252	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   572: pop
    //   573: aload_0
    //   574: getfield 397	com/google/android/gms/internal/zzgo:versionCode	I
    //   577: iconst_5
    //   578: if_icmplt +222 -> 800
    //   581: aload_2
    //   582: ldc_w 416
    //   585: aload_0
    //   586: getfield 417	com/google/android/gms/internal/zzgo:zzwz	F
    //   589: invokestatic 422	java/lang/Float:valueOf	(F)Ljava/lang/Float;
    //   592: invokevirtual 252	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   595: pop
    //   596: aload_2
    //   597: ldc_w 424
    //   600: aload_0
    //   601: getfield 427	com/google/android/gms/internal/zzgo:zzwy	I
    //   604: invokestatic 328	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   607: invokevirtual 252	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   610: pop
    //   611: aload_2
    //   612: ldc_w 429
    //   615: aload_0
    //   616: getfield 432	com/google/android/gms/internal/zzgo:zzwx	I
    //   619: invokestatic 328	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   622: invokevirtual 252	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   625: pop
    //   626: aload_0
    //   627: getfield 397	com/google/android/gms/internal/zzgo:versionCode	I
    //   630: bipush 6
    //   632: if_icmplt +100 -> 732
    //   635: aload_0
    //   636: getfield 435	com/google/android/gms/internal/zzgo:zzwA	Ljava/lang/String;
    //   639: invokestatic 83	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   642: istore 7
    //   644: iload 7
    //   646: ifne +22 -> 668
    //   649: aload_2
    //   650: ldc_w 437
    //   653: new 26	org/json/JSONObject
    //   656: dup
    //   657: aload_0
    //   658: getfield 435	com/google/android/gms/internal/zzgo:zzwA	Ljava/lang/String;
    //   661: invokespecial 27	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   664: invokevirtual 252	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   667: pop
    //   668: getstatic 443	com/google/android/gms/internal/zzca:zzqL	Lcom/google/android/gms/internal/zzbx;
    //   671: invokevirtual 449	com/google/android/gms/internal/zzbx:get	()Ljava/lang/Object;
    //   674: checkcast 406	java/lang/Boolean
    //   677: invokevirtual 453	java/lang/Boolean:booleanValue	()Z
    //   680: ifeq +37 -> 717
    //   683: aload_0
    //   684: getfield 456	com/google/android/gms/internal/zzgo:zzwB	Z
    //   687: ifeq +30 -> 717
    //   690: aload_2
    //   691: ldc_w 458
    //   694: aload_0
    //   695: getfield 461	com/google/android/gms/internal/zzgo:zzwC	I
    //   698: invokestatic 328	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   701: invokevirtual 252	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   704: pop
    //   705: aload_2
    //   706: ldc_w 463
    //   709: aload_0
    //   710: getfield 466	com/google/android/gms/internal/zzgo:zzwD	Ljava/lang/String;
    //   713: invokevirtual 252	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   716: pop
    //   717: aload_2
    //   718: ldc_w 468
    //   721: aload_0
    //   722: getfield 471	com/google/android/gms/internal/zzgo:zzwE	J
    //   725: invokestatic 476	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   728: invokevirtual 252	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   731: pop
    //   732: aload_0
    //   733: getfield 397	com/google/android/gms/internal/zzgo:versionCode	I
    //   736: bipush 7
    //   738: if_icmplt +15 -> 753
    //   741: aload_2
    //   742: ldc_w 478
    //   745: aload_0
    //   746: getfield 481	com/google/android/gms/internal/zzgo:zzwF	Ljava/lang/String;
    //   749: invokevirtual 252	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   752: pop
    //   753: iconst_2
    //   754: invokestatic 485	com/google/android/gms/internal/zzhx:zzA	(I)Z
    //   757: ifeq +35 -> 792
    //   760: invokestatic 489	com/google/android/gms/internal/zzab:zzaM	()Lcom/google/android/gms/internal/zzho;
    //   763: aload_2
    //   764: invokevirtual 495	com/google/android/gms/internal/zzho:zzw	(Ljava/util/Map;)Lorg/json/JSONObject;
    //   767: iconst_2
    //   768: invokevirtual 497	org/json/JSONObject:toString	(I)Ljava/lang/String;
    //   771: astore_0
    //   772: new 155	java/lang/StringBuilder
    //   775: dup
    //   776: ldc_w 499
    //   779: invokespecial 158	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   782: aload_0
    //   783: invokevirtual 166	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   786: invokevirtual 169	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   789: invokestatic 502	com/google/android/gms/internal/zzhx:zzab	(Ljava/lang/String;)V
    //   792: invokestatic 489	com/google/android/gms/internal/zzab:zzaM	()Lcom/google/android/gms/internal/zzho;
    //   795: aload_2
    //   796: invokevirtual 495	com/google/android/gms/internal/zzho:zzw	(Ljava/util/Map;)Lorg/json/JSONObject;
    //   799: areturn
    //   800: aload_2
    //   801: ldc_w 416
    //   804: aload_1
    //   805: getfield 307	com/google/android/gms/internal/zzhb:zzwz	F
    //   808: invokestatic 422	java/lang/Float:valueOf	(F)Ljava/lang/Float;
    //   811: invokevirtual 252	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   814: pop
    //   815: aload_2
    //   816: ldc_w 424
    //   819: aload_1
    //   820: getfield 503	com/google/android/gms/internal/zzhb:zzwy	I
    //   823: invokestatic 328	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   826: invokevirtual 252	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   829: pop
    //   830: aload_2
    //   831: ldc_w 429
    //   834: aload_1
    //   835: getfield 504	com/google/android/gms/internal/zzhb:zzwx	I
    //   838: invokestatic 328	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   841: invokevirtual 252	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   844: pop
    //   845: goto -219 -> 626
    //   848: astore_0
    //   849: new 155	java/lang/StringBuilder
    //   852: dup
    //   853: ldc_w 506
    //   856: invokespecial 158	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   859: aload_0
    //   860: invokevirtual 162	org/json/JSONException:getMessage	()Ljava/lang/String;
    //   863: invokevirtual 166	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   866: invokevirtual 169	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   869: invokestatic 90	com/google/android/gms/internal/zzhx:zzac	(Ljava/lang/String;)V
    //   872: aconst_null
    //   873: areturn
    //   874: astore_1
    //   875: ldc_w 508
    //   878: aload_1
    //   879: invokestatic 512	com/google/android/gms/internal/zzhx:zzd	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   882: goto -214 -> 668
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	885	0	paramzzgo	zzgo
    //   0	885	1	paramzzhb	zzhb
    //   0	885	2	paramLocation	Location
    //   0	885	3	paramzzbv	zzbv
    //   159	110	4	i	int
    //   213	76	5	j	int
    //   156	10	6	k	int
    //   642	3	7	bool	boolean
    //   12	286	8	localObject	Object
    //   151	18	9	arrayOfzzba	zzba[]
    //   173	111	10	localzzba	zzba
    // Exception table:
    //   from	to	target	type
    //   0	38	848	org/json/JSONException
    //   38	57	848	org/json/JSONException
    //   57	102	848	org/json/JSONException
    //   102	125	848	org/json/JSONException
    //   125	158	848	org/json/JSONException
    //   175	192	848	org/json/JSONException
    //   192	215	848	org/json/JSONException
    //   215	256	848	org/json/JSONException
    //   256	264	848	org/json/JSONException
    //   273	280	848	org/json/JSONException
    //   283	290	848	org/json/JSONException
    //   293	303	848	org/json/JSONException
    //   303	337	848	org/json/JSONException
    //   337	389	848	org/json/JSONException
    //   389	496	848	org/json/JSONException
    //   496	516	848	org/json/JSONException
    //   516	546	848	org/json/JSONException
    //   546	573	848	org/json/JSONException
    //   573	626	848	org/json/JSONException
    //   626	644	848	org/json/JSONException
    //   668	717	848	org/json/JSONException
    //   717	732	848	org/json/JSONException
    //   732	753	848	org/json/JSONException
    //   753	792	848	org/json/JSONException
    //   792	800	848	org/json/JSONException
    //   800	845	848	org/json/JSONException
    //   875	882	848	org/json/JSONException
    //   649	668	874	org/json/JSONException
  }
  
  private static void zza(HashMap<String, Object> paramHashMap, Location paramLocation)
  {
    HashMap localHashMap = new HashMap();
    float f = paramLocation.getAccuracy();
    long l1 = paramLocation.getTime();
    long l2 = (paramLocation.getLatitude() * 1.0E7D);
    long l3 = (paramLocation.getLongitude() * 1.0E7D);
    localHashMap.put("radius", Float.valueOf(f * 1000.0F));
    localHashMap.put("lat", Long.valueOf(l2));
    localHashMap.put("long", Long.valueOf(l3));
    localHashMap.put("time", Long.valueOf(l1 * 1000L));
    paramHashMap.put("uule", localHashMap);
  }
  
  private static void zza(HashMap<String, Object> paramHashMap, zzax paramzzax)
  {
    String str = zzhk.zzep();
    if (str != null) {
      paramHashMap.put("abf", str);
    }
    if (zzoL != -1L) {
      paramHashMap.put("cust_age", zzxu.format(new Date(zzoL)));
    }
    if (extras != null) {
      paramHashMap.put("extras", extras);
    }
    if (zzoM != -1) {
      paramHashMap.put("cust_gender", Integer.valueOf(zzoM));
    }
    if (zzoN != null) {
      paramHashMap.put("kw", zzoN);
    }
    if (zzoP != -1) {
      paramHashMap.put("tag_for_child_directed_treatment", Integer.valueOf(zzoP));
    }
    if (zzoO) {
      paramHashMap.put("adtest", "on");
    }
    if (versionCode >= 2)
    {
      if (zzoQ) {
        paramHashMap.put("d_imp_hdr", Integer.valueOf(1));
      }
      if (!TextUtils.isEmpty(zzoR)) {
        paramHashMap.put("ppid", zzoR);
      }
      if (zzoS != null) {
        zza(paramHashMap, zzoS);
      }
    }
    if ((versionCode >= 3) && (zzoU != null)) {
      paramHashMap.put("url", zzoU);
    }
    if (versionCode >= 5)
    {
      if (zzoW != null) {
        paramHashMap.put("custom_targeting", zzoW);
      }
      if (zzoX != null) {
        paramHashMap.put("category_exclusions", zzoX);
      }
      if (zzoY != null) {
        paramHashMap.put("request_agent", zzoY);
      }
    }
  }
  
  private static void zza(HashMap<String, Object> paramHashMap, zzbs paramzzbs)
  {
    Object localObject2 = null;
    if (Color.alpha(zzpN) != 0) {
      paramHashMap.put("acolor", zzy(zzpN));
    }
    if (Color.alpha(backgroundColor) != 0) {
      paramHashMap.put("bgcolor", zzy(backgroundColor));
    }
    if ((Color.alpha(zzpO) != 0) && (Color.alpha(zzpP) != 0))
    {
      paramHashMap.put("gradientto", zzy(zzpO));
      paramHashMap.put("gradientfrom", zzy(zzpP));
    }
    if (Color.alpha(zzpQ) != 0) {
      paramHashMap.put("bcolor", zzy(zzpQ));
    }
    paramHashMap.put("bthick", Integer.toString(zzpR));
    Object localObject1;
    switch (zzpS)
    {
    default: 
      localObject1 = null;
      if (localObject1 != null) {
        paramHashMap.put("btype", localObject1);
      }
      switch (zzpT)
      {
      default: 
        localObject1 = localObject2;
      }
      break;
    }
    for (;;)
    {
      if (localObject1 != null) {
        paramHashMap.put("callbuttoncolor", localObject1);
      }
      if (zzpU != null) {
        paramHashMap.put("channel", zzpU);
      }
      if (Color.alpha(zzpV) != 0) {
        paramHashMap.put("dcolor", zzy(zzpV));
      }
      if (zzpW != null) {
        paramHashMap.put("font", zzpW);
      }
      if (Color.alpha(zzpX) != 0) {
        paramHashMap.put("hcolor", zzy(zzpX));
      }
      paramHashMap.put("headersize", Integer.toString(zzpY));
      if (zzpZ != null) {
        paramHashMap.put("q", zzpZ);
      }
      return;
      localObject1 = "none";
      break;
      localObject1 = "dashed";
      break;
      localObject1 = "dotted";
      break;
      localObject1 = "solid";
      break;
      localObject1 = "dark";
      continue;
      localObject1 = "light";
      continue;
      localObject1 = "medium";
    }
  }
  
  private static void zza(HashMap<String, Object> paramHashMap, zzhb paramzzhb)
  {
    paramHashMap.put("am", Integer.valueOf(zzxY));
    paramHashMap.put("cog", zzw(zzxZ));
    paramHashMap.put("coh", zzw(zzya));
    if (!TextUtils.isEmpty(zzyb)) {
      paramHashMap.put("carrier", zzyb);
    }
    paramHashMap.put("gl", zzyc);
    if (zzyd) {
      paramHashMap.put("simulator", Integer.valueOf(1));
    }
    paramHashMap.put("ma", zzw(zzye));
    paramHashMap.put("sp", zzw(zzyf));
    paramHashMap.put("hl", zzyg);
    if (!TextUtils.isEmpty(zzyh)) {
      paramHashMap.put("mv", zzyh);
    }
    paramHashMap.put("muv", Integer.valueOf(zzyi));
    if (zzyj != -2) {
      paramHashMap.put("cnt", Integer.valueOf(zzyj));
    }
    paramHashMap.put("gnt", Integer.valueOf(zzyk));
    paramHashMap.put("pt", Integer.valueOf(zzyl));
    paramHashMap.put("rm", Integer.valueOf(zzym));
    paramHashMap.put("riv", Integer.valueOf(zzyn));
    Bundle localBundle = new Bundle();
    localBundle.putInt("active_network_state", zzyr);
    localBundle.putBoolean("active_network_metered", zzyq);
    paramHashMap.put("connectivity", localBundle);
    localBundle = new Bundle();
    localBundle.putBoolean("is_charging", zzyp);
    localBundle.putDouble("battery_level", zzyo);
    paramHashMap.put("battery", localBundle);
  }
  
  private static Integer zzw(boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (int i = 1;; i = 0) {
      return Integer.valueOf(i);
    }
  }
  
  private static String zzy(int paramInt)
  {
    return String.format(Locale.US, "#%06x", new Object[] { Integer.valueOf(0xFFFFFF & paramInt) });
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzgx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */