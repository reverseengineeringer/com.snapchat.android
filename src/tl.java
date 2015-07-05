import com.snapchat.android.Timber;
import com.snapchat.android.api2.framework.RequestBodyType;
import java.io.File;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import javax.inject.Inject;

public final class tl
{
  public static final blw BYTE_STREAM_MEDIA_TYPE = blw.a("application/octet-stream");
  public static final blw JSON_MEDIA_TYPE = blw.a("application/json; charset=UTF-8");
  private static final String KEY_VALUE_SEPARATOR = "=";
  private static final String PARAMETER_SEPARATOR = "&";
  public static final blw STRING_MEDIA_TYPE = blw.a("text/plain; charset=UTF-8");
  private static final String TAG = "EntityFactory";
  public static final blw URL_ENCODED_FORM_MEDIA_TYPE = blw.a("application/x-www-form-urlencoded; charset=UTF-8");
  private static final String UTF_8 = "UTF-8";
  private final to mFormEncodedJsonFieldMapper;
  private final ato mGson;
  private final tz mMultipartEncodedFieldMapper;
  
  @Inject
  protected tl(to paramto, tz paramtz, ato paramato)
  {
    mFormEncodedJsonFieldMapper = paramto;
    mMultipartEncodedFieldMapper = paramtz;
    mGson = paramato;
  }
  
  public static String a(@cgb Map<String, String> paramMap)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    Iterator localIterator = paramMap.entrySet().iterator();
    if (localIterator.hasNext())
    {
      paramMap = (Map.Entry)localIterator.next();
      if (localStringBuilder.length() > 0) {
        localStringBuilder.append("&");
      }
      for (;;)
      {
        try
        {
          localStringBuilder.append(URLEncoder.encode((String)paramMap.getKey(), "UTF-8"));
          localStringBuilder.append("=");
          if (paramMap.getValue() != null) {
            break label115;
          }
          paramMap = "";
          localStringBuilder.append(paramMap);
        }
        catch (UnsupportedEncodingException paramMap)
        {
          Timber.f("EntityFactory", "Error occurred while encoding map into UTF-8 string.", new Object[0]);
        }
        break;
        label115:
        paramMap = URLEncoder.encode((String)paramMap.getValue(), "UTF-8");
      }
    }
    return localStringBuilder.toString();
  }
  
  public final bmb a(String paramString, Object paramObject)
  {
    if (paramObject == null)
    {
      if (paramString != null)
      {
        bfr.a();
        if (paramString.contains(bfr.e())) {
          return bmb.a(JSON_MEDIA_TYPE, "{}");
        }
      }
      return bmb.a(URL_ENCODED_FORM_MEDIA_TYPE, "");
    }
    Object localObject = RequestBodyType.typeOf(paramObject);
    if ((paramObject instanceof uf)) {}
    for (paramString = mBodyObject;; paramString = (String)paramObject)
    {
      switch (localObject)
      {
      default: 
        throw new IllegalArgumentException("No encoding annotation is set on the payload.");
      case ???: 
        paramString = mGson.a(paramString);
        return bmb.a(JSON_MEDIA_TYPE, paramString);
      case ???: 
        paramString = a(mFormEncodedJsonFieldMapper.a(paramString));
        return bmb.a(URL_ENCODED_FORM_MEDIA_TYPE, paramString);
      case ???: 
        paramObject = mMultipartEncodedFieldMapper.a(paramString);
        paramString = new blx().a(blx.e);
        paramObject = ((Map)paramObject).entrySet().iterator();
        while (((Iterator)paramObject).hasNext())
        {
          localObject = (Map.Entry)((Iterator)paramObject).next();
          paramString.a(((tr)((Map.Entry)localObject).getValue()).a((String)((Map.Entry)localObject).getKey()), ((tr)((Map.Entry)localObject).getValue()).a());
        }
        return paramString.a();
      case ???: 
        return bmb.a(BYTE_STREAM_MEDIA_TYPE, (byte[])paramString);
      }
      paramObject = BYTE_STREAM_MEDIA_TYPE;
      paramString = (File)paramString;
      if (paramString == null) {
        throw new NullPointerException("content == null");
      }
      return new bmb.2((blw)paramObject, paramString);
    }
  }
}

/* Location:
 * Qualified Name:     tl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */