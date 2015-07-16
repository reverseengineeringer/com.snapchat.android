import com.snapchat.android.api2.framework.RequestBodyType;
import java.io.File;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import javax.inject.Inject;

public final class ub
{
  public static final bmx BYTE_STREAM_MEDIA_TYPE = bmx.a("application/octet-stream");
  public static final bmx JSON_MEDIA_TYPE = bmx.a("application/json; charset=UTF-8");
  private static final String KEY_VALUE_SEPARATOR = "=";
  private static final String PARAMETER_SEPARATOR = "&";
  public static final bmx STRING_MEDIA_TYPE = bmx.a("text/plain; charset=UTF-8");
  private static final String TAG = "EntityFactory";
  public static final bmx URL_ENCODED_FORM_MEDIA_TYPE = bmx.a("application/x-www-form-urlencoded; charset=UTF-8");
  private static final String UTF_8 = "UTF-8";
  private final ue mFormEncodedJsonFieldMapper;
  private final aum mGson;
  private final up mMultipartEncodedFieldMapper;
  
  @Inject
  protected ub(ue paramue, up paramup, aum paramaum)
  {
    mFormEncodedJsonFieldMapper = paramue;
    mMultipartEncodedFieldMapper = paramup;
    mGson = paramaum;
  }
  
  public static String a(@chc Map<String, String> paramMap)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    Iterator localIterator = paramMap.entrySet().iterator();
    for (;;)
    {
      if (localIterator.hasNext())
      {
        paramMap = (Map.Entry)localIterator.next();
        if (localStringBuilder.length() > 0) {
          localStringBuilder.append("&");
        }
      }
      try
      {
        localStringBuilder.append(URLEncoder.encode((String)paramMap.getKey(), "UTF-8"));
        localStringBuilder.append("=");
        if (paramMap.getValue() == null) {}
        for (paramMap = "";; paramMap = URLEncoder.encode((String)paramMap.getValue(), "UTF-8"))
        {
          localStringBuilder.append(paramMap);
          break;
        }
        return localStringBuilder.toString();
      }
      catch (UnsupportedEncodingException paramMap) {}
    }
  }
  
  public final bnc a(String paramString, Object paramObject)
  {
    if (paramObject == null)
    {
      if (paramString != null)
      {
        bgr.a();
        if (paramString.contains(bgr.e())) {
          return bnc.a(JSON_MEDIA_TYPE, "{}");
        }
      }
      return bnc.a(URL_ENCODED_FORM_MEDIA_TYPE, "");
    }
    Object localObject = RequestBodyType.typeOf(paramObject);
    if ((paramObject instanceof uw)) {}
    for (paramString = mBodyObject;; paramString = (String)paramObject)
    {
      switch (localObject)
      {
      default: 
        throw new IllegalArgumentException("No encoding annotation is set on the payload.");
      case ???: 
        paramString = mGson.a(paramString);
        return bnc.a(JSON_MEDIA_TYPE, paramString);
      case ???: 
        paramString = a(mFormEncodedJsonFieldMapper.a(paramString));
        return bnc.a(URL_ENCODED_FORM_MEDIA_TYPE, paramString);
      case ???: 
        paramObject = mMultipartEncodedFieldMapper.a(paramString);
        paramString = new bmy().a(bmy.e);
        paramObject = ((Map)paramObject).entrySet().iterator();
        while (((Iterator)paramObject).hasNext())
        {
          localObject = (Map.Entry)((Iterator)paramObject).next();
          paramString.a(((uh)((Map.Entry)localObject).getValue()).a((String)((Map.Entry)localObject).getKey()), ((uh)((Map.Entry)localObject).getValue()).a());
        }
        return paramString.a();
      case ???: 
        return bnc.a(BYTE_STREAM_MEDIA_TYPE, (byte[])paramString);
      }
      paramObject = BYTE_STREAM_MEDIA_TYPE;
      paramString = (File)paramString;
      if (paramString == null) {
        throw new NullPointerException("content == null");
      }
      return new bnc.2((bmx)paramObject, paramString);
    }
  }
}

/* Location:
 * Qualified Name:     ub
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */