import java.util.HashMap;
import java.util.Map;

public class ht
{
  private String appVersion;
  private String city;
  public Double clientTs;
  public Double clientUploadTs;
  public String country;
  private gl deviceConnectivity;
  private String deviceModel;
  private Double eventTime;
  private Double eventTs;
  public Long friendCount;
  private ij osType;
  private String osVersion;
  private String region;
  private Long sequenceId;
  private Double serverTs;
  public String sessionId;
  public String userAgent;
  
  public Map<String, Object> a()
  {
    HashMap localHashMap = new HashMap();
    if (appVersion != null) {
      localHashMap.put("app_version", appVersion);
    }
    if (city != null) {
      localHashMap.put("city", city);
    }
    if (clientTs != null) {
      localHashMap.put("client_ts", clientTs);
    }
    if (clientUploadTs != null) {
      localHashMap.put("client_upload_ts", clientUploadTs);
    }
    if (country != null) {
      localHashMap.put("country", country);
    }
    if (deviceConnectivity != null) {
      localHashMap.put("device_connectivity", deviceConnectivity);
    }
    if (deviceModel != null) {
      localHashMap.put("device_model", deviceModel);
    }
    if (eventTime != null) {
      localHashMap.put("event_time", eventTime);
    }
    if (eventTs != null) {
      localHashMap.put("event_ts", eventTs);
    }
    if (friendCount != null) {
      localHashMap.put("friend_count", friendCount);
    }
    if (osType != null) {
      localHashMap.put("os_type", osType);
    }
    if (osVersion != null) {
      localHashMap.put("os_version", osVersion);
    }
    if (region != null) {
      localHashMap.put("region", region);
    }
    if (sequenceId != null) {
      localHashMap.put("sequence_id", sequenceId);
    }
    if (serverTs != null) {
      localHashMap.put("server_ts", serverTs);
    }
    if (sessionId != null) {
      localHashMap.put("session_id", sessionId);
    }
    if (userAgent != null) {
      localHashMap.put("user_agent", userAgent);
    }
    return localHashMap;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if ((paramObject == null) || (getClass() != paramObject.getClass())) {
        return false;
      }
      paramObject = (ht)paramObject;
      if (appVersion != null)
      {
        if (appVersion.equals(appVersion)) {}
      }
      else {
        while (appVersion != null) {
          return false;
        }
      }
      if (city != null)
      {
        if (city.equals(city)) {}
      }
      else {
        while (city != null) {
          return false;
        }
      }
      if (clientTs != null)
      {
        if (clientTs.equals(clientTs)) {}
      }
      else {
        while (clientTs != null) {
          return false;
        }
      }
      if (clientUploadTs != null)
      {
        if (clientUploadTs.equals(clientUploadTs)) {}
      }
      else {
        while (clientUploadTs != null) {
          return false;
        }
      }
      if (country != null)
      {
        if (country.equals(country)) {}
      }
      else {
        while (country != null) {
          return false;
        }
      }
      if (deviceConnectivity != null)
      {
        if (deviceConnectivity.equals(deviceConnectivity)) {}
      }
      else {
        while (deviceConnectivity != null) {
          return false;
        }
      }
      if (deviceModel != null)
      {
        if (deviceModel.equals(deviceModel)) {}
      }
      else {
        while (deviceModel != null) {
          return false;
        }
      }
      if (eventTime != null)
      {
        if (eventTime.equals(eventTime)) {}
      }
      else {
        while (eventTime != null) {
          return false;
        }
      }
      if (eventTs != null)
      {
        if (eventTs.equals(eventTs)) {}
      }
      else {
        while (eventTs != null) {
          return false;
        }
      }
      if (friendCount != null)
      {
        if (friendCount.equals(friendCount)) {}
      }
      else {
        while (friendCount != null) {
          return false;
        }
      }
      if (osType != null)
      {
        if (osType.equals(osType)) {}
      }
      else {
        while (osType != null) {
          return false;
        }
      }
      if (osVersion != null)
      {
        if (osVersion.equals(osVersion)) {}
      }
      else {
        while (osVersion != null) {
          return false;
        }
      }
      if (region != null)
      {
        if (region.equals(region)) {}
      }
      else {
        while (region != null) {
          return false;
        }
      }
      if (sequenceId != null)
      {
        if (sequenceId.equals(sequenceId)) {}
      }
      else {
        while (sequenceId != null) {
          return false;
        }
      }
      if (serverTs != null)
      {
        if (serverTs.equals(serverTs)) {}
      }
      else {
        while (serverTs != null) {
          return false;
        }
      }
      if (sessionId != null)
      {
        if (sessionId.equals(sessionId)) {}
      }
      else {
        while (sessionId != null) {
          return false;
        }
      }
      if (userAgent == null) {
        break;
      }
    } while (userAgent.equals(userAgent));
    for (;;)
    {
      return false;
      if (userAgent == null) {
        break;
      }
    }
  }
  
  public int hashCode()
  {
    int i12 = 0;
    int i;
    int j;
    label33:
    int k;
    label48:
    int m;
    label64:
    int n;
    label80:
    int i1;
    label96:
    int i2;
    label112:
    int i3;
    label128:
    int i4;
    label144:
    int i5;
    label160:
    int i6;
    label176:
    int i7;
    label192:
    int i8;
    label208:
    int i9;
    label224:
    int i10;
    if (appVersion != null)
    {
      i = appVersion.hashCode();
      if (city == null) {
        break label375;
      }
      j = city.hashCode();
      if (clientTs == null) {
        break label380;
      }
      k = clientTs.hashCode();
      if (clientUploadTs == null) {
        break label385;
      }
      m = clientUploadTs.hashCode();
      if (country == null) {
        break label391;
      }
      n = country.hashCode();
      if (deviceConnectivity == null) {
        break label397;
      }
      i1 = deviceConnectivity.hashCode();
      if (deviceModel == null) {
        break label403;
      }
      i2 = deviceModel.hashCode();
      if (eventTime == null) {
        break label409;
      }
      i3 = eventTime.hashCode();
      if (eventTs == null) {
        break label415;
      }
      i4 = eventTs.hashCode();
      if (friendCount == null) {
        break label421;
      }
      i5 = friendCount.hashCode();
      if (osType == null) {
        break label427;
      }
      i6 = osType.hashCode();
      if (osVersion == null) {
        break label433;
      }
      i7 = osVersion.hashCode();
      if (region == null) {
        break label439;
      }
      i8 = region.hashCode();
      if (sequenceId == null) {
        break label445;
      }
      i9 = sequenceId.hashCode();
      if (serverTs == null) {
        break label451;
      }
      i10 = serverTs.hashCode();
      label240:
      if (sessionId == null) {
        break label457;
      }
    }
    label375:
    label380:
    label385:
    label391:
    label397:
    label403:
    label409:
    label415:
    label421:
    label427:
    label433:
    label439:
    label445:
    label451:
    label457:
    for (int i11 = sessionId.hashCode();; i11 = 0)
    {
      if (userAgent != null) {
        i12 = userAgent.hashCode();
      }
      return (i11 + (i10 + (i9 + (i8 + (i7 + (i6 + (i5 + (i4 + (i3 + (i2 + (i1 + (n + (m + (k + (j + (i + 0) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31 + i12;
      i = 0;
      break;
      j = 0;
      break label33;
      k = 0;
      break label48;
      m = 0;
      break label64;
      n = 0;
      break label80;
      i1 = 0;
      break label96;
      i2 = 0;
      break label112;
      i3 = 0;
      break label128;
      i4 = 0;
      break label144;
      i5 = 0;
      break label160;
      i6 = 0;
      break label176;
      i7 = 0;
      break label192;
      i8 = 0;
      break label208;
      i9 = 0;
      break label224;
      i10 = 0;
      break label240;
    }
  }
}

/* Location:
 * Qualified Name:     ht
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */