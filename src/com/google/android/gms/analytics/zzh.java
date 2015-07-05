package com.google.android.gms.analytics;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Build.VERSION;
import android.text.TextUtils;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintStream;
import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import java.util.zip.GZIPOutputStream;
import org.apache.http.HttpEntity;
import org.apache.http.HttpEntityEnclosingRequest;
import org.apache.http.HttpHost;
import org.apache.http.HttpResponse;
import org.apache.http.RequestLine;
import org.apache.http.StatusLine;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.entity.ByteArrayEntity;
import org.apache.http.entity.StringEntity;
import org.apache.http.message.BasicHttpEntityEnclosingRequest;

public class zzh
  implements zzr
{
  private final Context mContext;
  private final HttpClient zzBe;
  private URL zzBf;
  private int zzBg;
  private int zzBh;
  private int zzBi;
  private String zzBj;
  private String zzBk;
  private zzi zzBl;
  private zzl zzBm;
  private Set<Integer> zzBn = new HashSet();
  private boolean zzBo = false;
  private long zzBp;
  private long zzBq;
  private zzo zzBr;
  private volatile boolean zzBs = false;
  private final String zzyW;
  
  zzh(HttpClient paramHttpClient, Context paramContext, zzo paramzzo)
  {
    mContext = paramContext.getApplicationContext();
    zzBr = paramzzo;
    zzyW = zza("GoogleAnalytics", "4.0.6", Build.VERSION.RELEASE, zzan.zza(Locale.getDefault()), Build.MODEL, Build.ID);
    zzBe = paramHttpClient;
  }
  
  private String zza(zzab paramzzab, List<String> paramList, zzi paramzzi)
  {
    if (paramzzi == zzi.zzBv)
    {
      if ((paramzzab.zzgr() == null) || (paramzzab.zzgr().length() == 0)) {}
      long l;
      for (paramList = "";; paramList = paramzzab.zzgr())
      {
        l = System.currentTimeMillis();
        if (!TextUtils.isEmpty(paramList)) {
          break;
        }
        return "";
      }
      return zzac.zza(paramzzab, l);
    }
    paramzzab = "";
    paramzzi = paramList.iterator();
    while (paramzzi.hasNext())
    {
      String str = (String)paramzzi.next();
      if (str.length() != 0)
      {
        paramList = paramzzab;
        if (paramzzab.length() != 0) {
          paramList = paramzzab + "\n";
        }
        paramzzab = paramList + str;
      }
    }
    return paramzzab;
  }
  
  private URL zza(zzab paramzzab)
  {
    if (zzBf != null) {
      return zzBf;
    }
    for (paramzzab = paramzzab.zzgu();; paramzzab = "https://ssl.google-analytics.com/collect") {
      try
      {
        if ("http:".equals(paramzzab))
        {
          paramzzab = "http://www.google-analytics.com/collect";
          paramzzab = new URL(paramzzab);
          return paramzzab;
        }
      }
      catch (MalformedURLException paramzzab)
      {
        zzae.zzZ("Error trying to parse the hardcoded host url. This really shouldn't happen.");
        return null;
      }
    }
  }
  
  private void zza(zzaf paramzzaf, HttpHost paramHttpHost, zzi paramzzi, zzl paramzzl)
  {
    paramzzaf.zzk("_bs", paramzzi.toString());
    paramzzaf.zzk("_cs", paramzzl.toString());
    paramzzi = paramzzaf.zzgx();
    if (TextUtils.isEmpty(paramzzi)) {
      return;
    }
    if (paramHttpHost == null) {}
    for (;;)
    {
      try
      {
        paramHttpHost = new URL("https://ssl.google-analytics.com");
        paramHttpHost = new HttpHost(paramHttpHost.getHost(), paramHttpHost.getPort(), paramHttpHost.getProtocol());
        zza(paramzzi, paramHttpHost, 1, paramzzaf, zzl.zzBF);
        return;
      }
      catch (MalformedURLException paramzzaf)
      {
        return;
      }
    }
  }
  
  private void zza(HttpEntityEnclosingRequest paramHttpEntityEnclosingRequest)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    Object localObject = paramHttpEntityEnclosingRequest.getAllHeaders();
    int j = localObject.length;
    int i = 0;
    while (i < j)
    {
      localStringBuffer.append(localObject[i].toString()).append("\n");
      i += 1;
    }
    localStringBuffer.append(paramHttpEntityEnclosingRequest.getRequestLine().toString()).append("\n");
    if (paramHttpEntityEnclosingRequest.getEntity() != null) {}
    try
    {
      paramHttpEntityEnclosingRequest = paramHttpEntityEnclosingRequest.getEntity().getContent();
      if (paramHttpEntityEnclosingRequest != null)
      {
        i = paramHttpEntityEnclosingRequest.available();
        if (i > 0)
        {
          localObject = new byte[i];
          paramHttpEntityEnclosingRequest.read((byte[])localObject);
          localStringBuffer.append("POST:\n");
          localStringBuffer.append(new String((byte[])localObject)).append("\n");
        }
      }
    }
    catch (IOException paramHttpEntityEnclosingRequest)
    {
      for (;;)
      {
        zzae.zzac("Error Writing hit to log...");
      }
    }
    zzae.zzaa(localStringBuffer.toString());
  }
  
  private boolean zza(String paramString, HttpHost paramHttpHost, int paramInt, zzaf paramzzaf, zzl paramzzl)
  {
    boolean bool;
    if (paramInt > 1)
    {
      bool = true;
      if ((paramString.getBytes().length <= zzBi) && (paramString.getBytes().length <= zzBh)) {
        break label76;
      }
      zzae.zzac("Request too long (> " + Math.min(zzBh, zzBi) + " bytes)--not sent");
    }
    label76:
    HttpEntityEnclosingRequest localHttpEntityEnclosingRequest;
    do
    {
      return true;
      bool = false;
      break;
      if (zzBs)
      {
        zzae.zzaa("Dry run enabled. Hit not actually sent.");
        return true;
      }
      localHttpEntityEnclosingRequest = zzc(paramString, bool);
    } while (localHttpEntityEnclosingRequest == null);
    int i;
    if (localHttpEntityEnclosingRequest.getRequestLine().getMethod().equals("GET"))
    {
      i = paramString.getBytes().length;
      paramInt = paramString.getBytes().length;
      localHttpEntityEnclosingRequest.addHeader("Host", paramHttpHost.toHostString());
      if (zzae.zzgw()) {
        zza(localHttpEntityEnclosingRequest);
      }
    }
    for (;;)
    {
      try
      {
        paramString = zzBe.execute(paramHttpHost, localHttpEntityEnclosingRequest);
        paramzzaf.zze("_td", i);
        paramzzaf.zze("_cd", paramInt);
        paramInt = paramString.getStatusLine().getStatusCode();
        paramHttpHost = paramString.getEntity();
        if (paramHttpHost != null) {
          paramHttpHost.consumeContent();
        }
        if (paramInt == 200) {
          break;
        }
        if ((bool) && (zzBn.contains(Integer.valueOf(paramInt))))
        {
          zzae.zzaa("Falling back to single hit per request mode.");
          zzBo = true;
          zzBp = System.currentTimeMillis();
          return false;
          try
          {
            switch (1.zzBt[paramzzl.ordinal()])
            {
            case 1: 
              paramInt = paramString.getBytes().length;
              localHttpEntityEnclosingRequest.setEntity(new StringEntity(paramString));
              i = paramString.getBytes().length;
            }
          }
          catch (UnsupportedEncodingException paramString)
          {
            GZIPOutputStream localGZIPOutputStream;
            zzae.zzZ("Encoding error, hit will be discarded");
            return true;
          }
          catch (IOException paramString)
          {
            zzae.zzZ("Unexpected IOException: " + paramString.getMessage());
            zzae.zzZ("Request will be discarded");
            return true;
          }
          paramzzl = new ByteArrayOutputStream();
          localGZIPOutputStream = new GZIPOutputStream(paramzzl);
          localGZIPOutputStream.write(paramString.getBytes());
          localGZIPOutputStream.close();
          paramzzl = paramzzl.toByteArray();
          paramInt = paramzzl.length + 0;
          localHttpEntityEnclosingRequest.setEntity(new ByteArrayEntity(paramzzl));
          localHttpEntityEnclosingRequest.addHeader("Content-Encoding", "gzip");
          continue;
        }
        zzae.zzac("Bad response: " + paramString.getStatusLine().getStatusCode());
        return true;
      }
      catch (ClientProtocolException paramString)
      {
        zzae.zzac("ClientProtocolException sending hit; discarding hit...");
        return true;
      }
      catch (IOException paramString)
      {
        zzae.zzac("Exception sending hit: " + paramString.getClass().getSimpleName());
        zzae.zzac(paramString.getMessage());
        return false;
      }
    }
  }
  
  private HttpEntityEnclosingRequest zzc(String paramString, boolean paramBoolean)
  {
    if (TextUtils.isEmpty(paramString))
    {
      System.out.println("Empty hit, discarding.");
      return null;
    }
    paramString = zzBj + "?" + paramString;
    if ((paramString.length() < zzBg) && (!paramBoolean)) {
      paramString = new BasicHttpEntityEnclosingRequest("GET", paramString);
    }
    for (;;)
    {
      paramString.addHeader("User-Agent", zzyW);
      return paramString;
      if (paramBoolean) {
        paramString = new BasicHttpEntityEnclosingRequest("POST", zzBk);
      } else {
        paramString = new BasicHttpEntityEnclosingRequest("POST", zzBj);
      }
    }
  }
  
  public void setDryRun(boolean paramBoolean)
  {
    zzBs = paramBoolean;
  }
  
  int zza(List<zzab> paramList, int paramInt)
  {
    int j;
    if (paramList.isEmpty()) {
      j = 0;
    }
    int i;
    long l1;
    do
    {
      return j;
      i = paramInt;
      if (paramInt > paramList.size()) {
        i = paramList.size();
      }
      j = i - 1;
      l1 = 0L;
      paramInt = i;
      i = j;
      j = paramInt;
    } while (i <= 0);
    zzab localzzab1 = (zzab)paramList.get(i - 1);
    zzab localzzab2 = (zzab)paramList.get(i);
    long l2 = localzzab1.zzgt();
    long l3 = localzzab2.zzgt();
    if ((l2 != 0L) && (l3 != 0L) && (l3 - l2 > l1))
    {
      l1 = l3 - l2;
      paramInt = i;
    }
    for (;;)
    {
      i -= 1;
      break;
    }
  }
  
  public int zza(List<zzab> paramList, zzaf paramzzaf, boolean paramBoolean)
  {
    zzBg = zzBr.zzfl();
    zzBh = zzBr.zzfm();
    zzBi = zzBr.zzfn();
    int i = zzBr.zzfo();
    zzBj = zzBr.zzfq();
    zzBk = zzBr.zzfr();
    zzBl = zzBr.zzfs();
    zzBm = zzBr.zzft();
    zzBn.clear();
    zzBn.addAll(zzBr.zzfu());
    zzBq = zzBr.zzfp();
    if ((!zzBo) && (zzBn.isEmpty()))
    {
      zzBo = true;
      zzBp = System.currentTimeMillis();
    }
    if ((zzBo) && (System.currentTimeMillis() - zzBp > 1000L * zzBq)) {
      zzBo = false;
    }
    zzi localzzi;
    zzl localzzl;
    int n;
    int k;
    long l3;
    Object localObject3;
    Object localObject4;
    long l1;
    int j;
    label297:
    Object localObject1;
    label334:
    Object localObject2;
    long l2;
    int m;
    if (zzBo)
    {
      localzzi = zzi.zzBv;
      localzzl = zzl.zzBF;
      n = 0;
      k = Math.min(paramList.size(), i);
      paramzzaf.zze("_hr", paramList.size());
      l3 = System.currentTimeMillis();
      localObject3 = new ArrayList();
      localObject4 = new ArrayList();
      l1 = 0L;
      if (localzzi == zzi.zzBv) {
        break label1084;
      }
      Iterator localIterator = paramList.iterator();
      j = 0;
      if (!localIterator.hasNext()) {
        break label1078;
      }
      localObject1 = (zzab)localIterator.next();
      if (!TextUtils.isEmpty(((zzab)localObject1).zzgr())) {
        break label508;
      }
      localObject1 = "";
      localObject2 = localObject1;
      if (((String)localObject1).getBytes().length > zzBh) {
        localObject2 = "";
      }
      ((List)localObject3).add(localObject2);
      l2 = l1;
      if (!TextUtils.isEmpty((CharSequence)localObject2))
      {
        m = ((String)localObject2).getBytes().length;
        if (j != 0) {
          break label520;
        }
        i = 0;
        label393:
        l2 = l1 + (i + m);
      }
      ((List)localObject4).add(Long.valueOf(l2));
      if (l2 > zzBi) {
        break label1071;
      }
      i = j + 1;
      label434:
      if (i != k) {
        break label1060;
      }
      k = 1;
      l1 = l2;
      j = i;
    }
    for (;;)
    {
      if ((j > 1) && (((Long)((List)localObject4).get(j - 1)).longValue() > zzBi))
      {
        j -= 1;
        continue;
        localzzi = zzBl;
        localzzl = zzBm;
        break;
        label508:
        localObject1 = zzac.zza((zzab)localObject1, l3);
        break label334;
        label520:
        i = 1;
        break label393;
      }
      if (l1 > zzBi) {
        switch (1.zzBu[localzzi.ordinal()])
        {
        default: 
          zzae.zzac("Unexpected batching strategy encountered; sending a single hit.");
          localObject1 = (String)((List)localObject3).get(0);
          ((List)localObject3).clear();
          ((List)localObject3).add(localObject1);
          i = 1;
          if (i >= ((List)localObject3).size()) {
            break;
          }
        }
      }
      for (localObject1 = ((List)localObject3).subList(0, i);; localObject1 = localObject3)
      {
        i = 0;
        localObject2 = null;
        m = 0;
        j = n;
        for (;;)
        {
          if (m < k)
          {
            localObject3 = (zzab)paramList.get(m);
            localObject4 = zza((zzab)localObject3);
            n = Math.max(1, ((List)localObject1).size());
            if (localObject4 == null)
            {
              zzae.zzac("No destination: discarding hit.");
              i += n;
              j += n;
              m += 1;
              continue;
              m = ((List)localObject3).size() / 2;
              i = m;
              if (j > m) {
                break;
              }
              i = j;
              break;
              i = zza(paramList, j);
              break;
              i = zzb(paramList, j);
              break;
              if (l1 < zzBi * 2)
              {
                i = ((List)localObject4).size() - 1;
                while ((i > 0) && (((Long)((List)localObject4).get(i)).longValue() > l1 / 2L)) {
                  i -= 1;
                }
                break;
              }
              i = j;
              break;
              i = j;
              break;
            }
            localObject2 = new HttpHost(((URL)localObject4).getHost(), ((URL)localObject4).getPort(), ((URL)localObject4).getProtocol());
            if (!zza(zza((zzab)localObject3, (List)localObject1, localzzi), (HttpHost)localObject2, n, paramzzaf, localzzl))
            {
              paramzzaf.zze("_de", 1);
              paramzzaf.zze("_hd", i);
              paramzzaf.zze("_hs", j);
              zza(paramzzaf, (HttpHost)localObject2, localzzi, localzzl);
              return j;
            }
            localObject3 = ((List)localObject1).iterator();
            label961:
            if (((Iterator)localObject3).hasNext())
            {
              if (!TextUtils.isEmpty((String)((Iterator)localObject3).next())) {
                break label1050;
              }
              i += 1;
            }
          }
        }
        label1050:
        for (;;)
        {
          break label961;
          paramzzaf.zze("_rs", 1);
          j += n;
          break;
          paramzzaf.zze("_hd", i);
          paramzzaf.zze("_hs", j);
          if (paramBoolean) {
            zza(paramzzaf, (HttpHost)localObject2, localzzi, localzzl);
          }
          return j;
        }
      }
      label1060:
      j = i;
      l1 = l2;
      break label297;
      label1071:
      i = j;
      break label434;
      label1078:
      k = 1;
      continue;
      label1084:
      j = 0;
    }
  }
  
  String zza(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6)
  {
    return String.format("%s/%s (Linux; U; Android %s; %s; %s Build/%s)", new Object[] { paramString1, paramString2, paramString3, paramString4, paramString5, paramString6 });
  }
  
  public void zzak(String paramString)
  {
    try
    {
      zzBf = new URL(paramString);
      return;
    }
    catch (MalformedURLException paramString)
    {
      zzBf = null;
    }
  }
  
  int zzb(List<zzab> paramList, int paramInt)
  {
    int i;
    if (paramList.isEmpty())
    {
      i = 0;
      return i;
    }
    int j = paramInt - 1;
    for (;;)
    {
      i = paramInt;
      if (j <= 0) {
        break;
      }
      String str = ((zzab)paramList.get(j)).zzgr();
      if (!TextUtils.isEmpty(str))
      {
        if (str.contains("sc=start")) {
          return j;
        }
        if (str.contains("sc=end")) {
          return j + 1;
        }
      }
      j -= 1;
    }
  }
  
  public boolean zzfk()
  {
    NetworkInfo localNetworkInfo = ((ConnectivityManager)mContext.getSystemService("connectivity")).getActiveNetworkInfo();
    if ((localNetworkInfo == null) || (!localNetworkInfo.isConnected()))
    {
      zzae.zzab("...no network connectivity");
      return false;
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.zzh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */