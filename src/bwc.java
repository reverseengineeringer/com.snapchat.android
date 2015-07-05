import android.app.ProgressDialog;
import android.content.ContentResolver;
import android.content.Context;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Handler;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.apache.http.HttpResponse;
import org.apache.http.NameValuePair;
import org.apache.http.StatusLine;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpPut;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.util.EntityUtils;

public final class bwc
  extends AsyncTask<Void, Void, HashMap<String, String>>
{
  public Context a;
  public ProgressDialog b;
  private Handler c;
  private String d;
  private String e;
  private String f;
  private String g;
  private String h;
  private List<Uri> i;
  private String j;
  private boolean k;
  private boolean l;
  private int m;
  
  public bwc(Context paramContext, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, List<Uri> paramList, String paramString6, Handler paramHandler, boolean paramBoolean)
  {
    a = paramContext;
    d = paramString1;
    e = paramString2;
    f = paramString3;
    g = paramString4;
    h = paramString5;
    i = paramList;
    j = paramString6;
    c = paramHandler;
    k = paramBoolean;
    l = true;
    m = -1;
    if (paramContext != null) {
      buz.a(paramContext);
    }
  }
  
  private HashMap<String, String> a(HttpClient paramHttpClient)
  {
    HttpPost localHttpPost = null;
    localHashMap = new HashMap();
    localHashMap.put("type", "send");
    try
    {
      Object localObject = new ArrayList();
      ((List)localObject).add(new BasicNameValuePair("name", e));
      ((List)localObject).add(new BasicNameValuePair("email", f));
      ((List)localObject).add(new BasicNameValuePair("subject", g));
      ((List)localObject).add(new BasicNameValuePair("text", h));
      ((List)localObject).add(new BasicNameValuePair("bundle_identifier", buz.d));
      ((List)localObject).add(new BasicNameValuePair("bundle_short_version", buz.c));
      ((List)localObject).add(new BasicNameValuePair("bundle_version", buz.b));
      ((List)localObject).add(new BasicNameValuePair("os_version", buz.e));
      ((List)localObject).add(new BasicNameValuePair("oem", buz.g));
      ((List)localObject).add(new BasicNameValuePair("model", buz.f));
      UrlEncodedFormEntity localUrlEncodedFormEntity = new UrlEncodedFormEntity((List)localObject, "UTF-8");
      localUrlEncodedFormEntity.setContentEncoding("UTF-8");
      if (j != null)
      {
        d = (d + j + "/");
        localObject = new HttpPut(d);
        if (localObject == null) {
          break label385;
        }
        ((HttpPut)localObject).setEntity(localUrlEncodedFormEntity);
      }
      for (paramHttpClient = paramHttpClient.execute((HttpUriRequest)localObject);; paramHttpClient = paramHttpClient.execute(localHttpPost))
      {
        if (paramHttpClient == null) {
          break label423;
        }
        localHashMap.put("response", EntityUtils.toString(paramHttpClient.getEntity()));
        localHashMap.put("status", paramHttpClient.getStatusLine().getStatusCode());
        return localHashMap;
        localHttpPost = new HttpPost(d);
        localObject = null;
        break;
        label385:
        localHttpPost.setEntity(localUrlEncodedFormEntity);
      }
      return localHashMap;
    }
    catch (UnsupportedEncodingException paramHttpClient)
    {
      paramHttpClient.printStackTrace();
      return localHashMap;
    }
    catch (ClientProtocolException paramHttpClient)
    {
      paramHttpClient.printStackTrace();
      return localHashMap;
    }
    catch (IOException paramHttpClient)
    {
      paramHttpClient.printStackTrace();
    }
  }
  
  private HashMap<String, String> b(HttpClient paramHttpClient)
  {
    HttpPost localHttpPost = null;
    HashMap localHashMap = new HashMap();
    localHashMap.put("type", "send");
    for (;;)
    {
      try
      {
        Object localObject1 = new ArrayList();
        ((List)localObject1).add(new BasicNameValuePair("name", e));
        ((List)localObject1).add(new BasicNameValuePair("email", f));
        ((List)localObject1).add(new BasicNameValuePair("subject", g));
        ((List)localObject1).add(new BasicNameValuePair("text", h));
        ((List)localObject1).add(new BasicNameValuePair("bundle_identifier", buz.d));
        ((List)localObject1).add(new BasicNameValuePair("bundle_short_version", buz.c));
        ((List)localObject1).add(new BasicNameValuePair("bundle_version", buz.b));
        ((List)localObject1).add(new BasicNameValuePair("os_version", buz.e));
        ((List)localObject1).add(new BasicNameValuePair("oem", buz.g));
        ((List)localObject1).add(new BasicNameValuePair("model", buz.f));
        bwj localbwj = new bwj();
        localbwj.a();
        localObject1 = ((List)localObject1).iterator();
        Object localObject2;
        if (((Iterator)localObject1).hasNext())
        {
          Object localObject3 = (NameValuePair)((Iterator)localObject1).next();
          localObject2 = ((NameValuePair)localObject3).getName();
          localObject3 = ((NameValuePair)localObject3).getValue();
          localbwj.a();
          a.write(("Content-Disposition: form-data; name=\"" + (String)localObject2 + "\"\r\n").getBytes());
          a.write("Content-Type: text/plain; charset=UTF-8\r\n".getBytes());
          a.write("Content-Transfer-Encoding: 8bit\r\n\r\n".getBytes());
          a.write(((String)localObject3).getBytes());
          a.write(("\r\n--" + b + "\r\n").getBytes());
        }
        else
        {
          int n;
          boolean bool = false;
        }
      }
      catch (UnsupportedEncodingException paramHttpClient)
      {
        paramHttpClient.printStackTrace();
        return localHashMap;
        n = 0;
        if (n < i.size())
        {
          localObject2 = (Uri)i.get(n);
          if (n == i.size() - 1)
          {
            bool = true;
            localObject1 = a.getContentResolver().openInputStream((Uri)localObject2);
            localObject2 = ((Uri)localObject2).getLastPathSegment();
            localbwj.a("attachment" + n, (String)localObject2, (InputStream)localObject1, "application/octet-stream", bool);
            n += 1;
          }
        }
        else
        {
          localbwj.b();
          if (j != null)
          {
            d = (d + j + "/");
            localObject1 = new HttpPut(d);
            if (localObject1 == null) {
              continue;
            }
            ((HttpPut)localObject1).setHeader("Content-type", "multipart/form-data; boundary=" + b);
            ((HttpPut)localObject1).setEntity(localbwj);
            paramHttpClient = paramHttpClient.execute((HttpUriRequest)localObject1);
            if (paramHttpClient == null) {
              continue;
            }
            localHashMap.put("response", EntityUtils.toString(paramHttpClient.getEntity()));
            localHashMap.put("status", paramHttpClient.getStatusLine().getStatusCode());
            return localHashMap;
          }
        }
      }
      catch (ClientProtocolException paramHttpClient)
      {
        paramHttpClient.printStackTrace();
        return localHashMap;
        localHttpPost = new HttpPost(d);
        localObject1 = null;
        continue;
        localHttpPost.setHeader("Content-type", "multipart/form-data; boundary=" + b);
        localHttpPost.setEntity(localbwj);
        paramHttpClient = paramHttpClient.execute(localHttpPost);
      }
      catch (IOException paramHttpClient)
      {
        paramHttpClient.printStackTrace();
        return localHashMap;
      }
    }
  }
  
  private HashMap<String, String> c(HttpClient paramHttpClient)
  {
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append(d + bwk.a(j));
    if (m != -1) {
      ((StringBuilder)localObject).append("?last_message_id=" + m);
    }
    HttpGet localHttpGet = new HttpGet(((StringBuilder)localObject).toString());
    localObject = new HashMap();
    ((HashMap)localObject).put("type", "fetch");
    try
    {
      paramHttpClient = paramHttpClient.execute(localHttpGet);
      ((HashMap)localObject).put("response", EntityUtils.toString(paramHttpClient.getEntity()));
      ((HashMap)localObject).put("status", paramHttpClient.getStatusLine().getStatusCode());
      return (HashMap<String, String>)localObject;
    }
    catch (ClientProtocolException paramHttpClient)
    {
      paramHttpClient.printStackTrace();
      return (HashMap<String, String>)localObject;
    }
    catch (IllegalStateException paramHttpClient)
    {
      paramHttpClient.printStackTrace();
      return (HashMap<String, String>)localObject;
    }
    catch (IOException paramHttpClient)
    {
      paramHttpClient.printStackTrace();
    }
    return (HashMap<String, String>)localObject;
  }
  
  protected final void onPreExecute()
  {
    String str = "Sending feedback..";
    if (k) {
      str = "Retrieving discussions...";
    }
    if (((b == null) || (!b.isShowing())) && (l)) {
      b = ProgressDialog.show(a, "", str, true, false);
    }
  }
}

/* Location:
 * Qualified Name:     bwc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */