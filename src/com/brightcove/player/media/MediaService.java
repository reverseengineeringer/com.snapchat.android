package com.brightcove.player.media;

import com.brightcove.player.event.AbstractComponent;
import com.brightcove.player.event.Emits;
import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventEmitter;
import com.brightcove.player.event.EventListener;
import com.brightcove.player.event.ListensFor;
import com.brightcove.player.media.tasks.FindPlaylistTask;
import com.brightcove.player.media.tasks.FindVideoTask;
import com.brightcove.player.model.CuePoint;
import com.brightcove.player.model.Playlist;
import com.brightcove.player.model.Source;
import com.brightcove.player.model.SourceCollection;
import com.brightcove.player.model.Video;
import com.brightcove.player.util.ErrorUtil;
import com.brightcove.player.util.StringUtil;
import java.io.Serializable;
import java.io.UnsupportedEncodingException;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@Emits(events={"error"})
@ListensFor(events={"findVideo", "findPlaylist"})
public class MediaService
  extends AbstractComponent
{
  public static final String COMMAND = "command";
  public static final String DEFAULT_MEDIA_DELIVERY = "http";
  public static final String DEFAULT_QUERY_BASE_URL = "https://api.brightcove.com/services/library";
  public static final String FIND_PLAYLIST_BY_ID = "find_playlist_by_id";
  public static final String FIND_PLAYLIST_BY_REFERENCE_ID = "find_playlist_by_reference_id";
  public static final String FIND_VIDEO_BY_ID = "find_video_by_id";
  public static final String FIND_VIDEO_BY_REFERENCE_ID = "find_video_by_reference_id";
  private static final String FLVURL = "FLVURL";
  public static final String HLS_MEDIA_DELIVERY = "http_ios";
  public static final String ID = "id";
  public static final String KK_QUERY_BASE_URL = "https://api.brightcove.co.jp/services/library";
  public static final String MEDIA_DELIVERY = "media_delivery";
  public static final String OPTIONS = "options";
  public static final String PLAYLIST_ID = "playlist_id";
  public static final String REFERENCE_ID = "reference_id";
  public static final String TAG = MediaService.class.getSimpleName();
  public static final String TOKEN = "token";
  public static final String VIDEO_FIELDS = "video_fields";
  public static final String VIDEO_ID = "video_id";
  private OnFindMediaListener findMediaListener;
  private String queryBaseURL;
  private String readToken;
  
  public MediaService(EventEmitter paramEventEmitter, String paramString)
  {
    this(paramEventEmitter, paramString, null);
  }
  
  public MediaService(EventEmitter paramEventEmitter, String paramString1, String paramString2)
  {
    super(paramEventEmitter, MediaService.class);
    if ((paramString1 == null) || (paramString1.trim().isEmpty())) {
      throw new IllegalArgumentException(ErrorUtil.getMessage("readTokenRequired"));
    }
    paramEventEmitter = paramString2;
    if (paramString2 == null) {
      paramEventEmitter = "https://api.brightcove.com/services/library";
    }
    readToken = paramString1;
    queryBaseURL = paramEventEmitter;
    initializeListeners();
  }
  
  public static CuePoint buildCuePointFromJSON(JSONObject paramJSONObject, EventEmitter paramEventEmitter, List<String> paramList)
  {
    if (paramJSONObject.isNull("time"))
    {
      paramList.add(String.format(ErrorUtil.getMessage("missingCuePointProperty"), new Object[] { "time" }));
      return null;
    }
    if (paramJSONObject.isNull("typeEnum"))
    {
      paramList.add(String.format(ErrorUtil.getMessage("missingCuePointProperty"), new Object[] { "typeEnum" }));
      return null;
    }
    paramList = paramJSONObject.keys();
    HashMap localHashMap = new HashMap();
    int i = 0;
    paramEventEmitter = null;
    while (paramList.hasNext())
    {
      String str = (String)paramList.next();
      if (str.equals("time")) {
        i = paramJSONObject.getInt("time");
      } else if (str.equals("typeEnum")) {
        paramEventEmitter = paramJSONObject.getString("typeEnum");
      } else {
        localHashMap.put(str, buildSerializable(paramJSONObject.get(str)));
      }
    }
    parseJSONProperties(paramJSONObject, localHashMap, Arrays.asList(CuePointFields.DEFAULT_FIELDS));
    return new CuePoint(i, paramEventEmitter, localHashMap);
  }
  
  private static SourceCollection buildHLSSourceCollectionFromURL(JSONObject paramJSONObject, String paramString)
  {
    paramString = paramJSONObject.getString(paramString);
    paramJSONObject = null;
    if (paramString.indexOf(".m3u8") > 0) {
      paramJSONObject = new SourceCollection(new Source(paramString, DeliveryType.HLS), DeliveryType.HLS);
    }
    return paramJSONObject;
  }
  
  public static Playlist buildPlaylistFromJSON(JSONObject paramJSONObject, EventEmitter paramEventEmitter, List<String> paramList)
  {
    if (paramJSONObject == null) {
      throw new IllegalArgumentException(ErrorUtil.getMessage("jsonRequired"));
    }
    HashMap localHashMap = new HashMap();
    if (!paramJSONObject.isNull("id")) {
      localHashMap.put("id", Long.valueOf(paramJSONObject.getLong("id")));
    }
    if (!paramJSONObject.isNull("referenceId")) {
      localHashMap.put("referenceId", paramJSONObject.getString("referenceId"));
    }
    if (!paramJSONObject.isNull("name")) {
      localHashMap.put("name", paramJSONObject.getString("name"));
    }
    if (!paramJSONObject.isNull("shortDescription")) {
      localHashMap.put("shortDescription", paramJSONObject.getString("shortDescription"));
    }
    if (!paramJSONObject.isNull("thumbnailURL")) {
      localHashMap.put("thumbnailURL", paramJSONObject.getString("thumbnailURL"));
    }
    ArrayList localArrayList = new ArrayList();
    if (!paramJSONObject.isNull("videos"))
    {
      JSONArray localJSONArray = paramJSONObject.getJSONArray("videos");
      int i = 0;
      while (i < localJSONArray.length())
      {
        JSONObject localJSONObject = localJSONArray.getJSONObject(i);
        if (localJSONObject != null) {
          localArrayList.add(buildVideoFromJSON(localJSONObject, paramEventEmitter, paramList));
        }
        i += 1;
      }
    }
    parseJSONProperties(paramJSONObject, localHashMap, Arrays.asList(PlaylistFields.DEFAULT_FIELDS));
    return new Playlist(localHashMap, localArrayList);
  }
  
  private static Serializable buildSerializable(Object paramObject)
  {
    if ((paramObject instanceof Serializable)) {
      return (Serializable)paramObject;
    }
    if ((paramObject instanceof JSONObject))
    {
      paramObject = (JSONObject)paramObject;
      HashMap localHashMap = new HashMap();
      Iterator localIterator = ((JSONObject)paramObject).keys();
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        localHashMap.put(str, buildSerializable(((JSONObject)paramObject).get(str)));
      }
      return localHashMap;
    }
    return null;
  }
  
  private static SourceCollection buildSourceCollectionFromVideoFullLength(JSONObject paramJSONObject)
  {
    Object localObject = paramJSONObject.getJSONObject("videoFullLength");
    paramJSONObject = new HashSet();
    localObject = buildSourceFromJSON((JSONObject)localObject);
    paramJSONObject.add(localObject);
    return new SourceCollection(paramJSONObject, ((Source)localObject).getDeliveryType());
  }
  
  public static Source buildSourceFromJSON(JSONObject paramJSONObject)
  {
    localHashMap = new HashMap();
    if (!paramJSONObject.isNull("url")) {
      localHashMap.put("url", paramJSONObject.getString("url"));
    }
    if (!paramJSONObject.isNull("videoDuration")) {
      localHashMap.put("duration", Long.valueOf(paramJSONObject.getLong("videoDuration")));
    }
    if (!paramJSONObject.isNull("encodingRate")) {
      localHashMap.put("bitRate", Integer.valueOf(paramJSONObject.getInt("encodingRate")));
    }
    if (!paramJSONObject.isNull("videoContainer")) {
      str1 = paramJSONObject.getString("videoContainer");
    }
    for (;;)
    {
      try
      {
        String str2 = (String)localHashMap.get("url");
        if (str2 == null) {
          continue;
        }
        str2 = new URI(str2).getScheme();
        if (!str2.equals("http"))
        {
          boolean bool = str2.equals("https");
          if (!bool) {
            continue;
          }
        }
        i = 1;
      }
      catch (URISyntaxException localURISyntaxException)
      {
        int i = 0;
        continue;
        if (!str1.equals("MP4")) {
          continue;
        }
        localHashMap.put("deliveryType", DeliveryType.MP4);
        continue;
        if (!str1.equals("M2TS")) {
          continue;
        }
        localHashMap.put("deliveryType", DeliveryType.HLS);
        continue;
        if (!str1.equals("FLV")) {
          continue;
        }
        localHashMap.put("deliveryType", DeliveryType.FLV);
        continue;
        if (!str1.equals("WVM")) {
          continue;
        }
        localHashMap.put("deliveryType", DeliveryType.WVM);
        continue;
        localHashMap.put("deliveryType", DeliveryType.UNKNOWN);
        continue;
      }
      if (i != 0) {
        continue;
      }
      localHashMap.put("deliveryType", DeliveryType.UNKNOWN);
      parseJSONProperties(paramJSONObject, localHashMap, Arrays.asList(SourceFields.DEFAULT_FIELDS));
      return new Source(localHashMap);
      i = 0;
    }
  }
  
  private static List<CuePoint> buildVideoCuePoints(JSONObject paramJSONObject, EventEmitter paramEventEmitter, List<String> paramList)
  {
    ArrayList localArrayList = null;
    if (!paramJSONObject.isNull("cuePoints"))
    {
      localArrayList = new ArrayList();
      paramJSONObject = paramJSONObject.getJSONArray("cuePoints");
      int i = 0;
      while (i < paramJSONObject.length())
      {
        localArrayList.add(buildCuePointFromJSON(paramJSONObject.getJSONObject(i), paramEventEmitter, paramList));
        i += 1;
      }
    }
    return localArrayList;
  }
  
  public static Video buildVideoFromJSON(JSONObject paramJSONObject, EventEmitter paramEventEmitter, List<String> paramList)
  {
    if (paramJSONObject == null) {
      throw new IllegalArgumentException(ErrorUtil.getMessage("jsonRequired"));
    }
    Map localMap = buildVideoProperties(paramJSONObject, paramList);
    Set localSet = buildVideoSourceCollections(paramJSONObject);
    paramEventEmitter = buildVideoCuePoints(paramJSONObject, paramEventEmitter, paramList);
    parseJSONProperties(paramJSONObject, localMap, Arrays.asList(VideoFields.DEFAULT_FIELDS));
    if (paramEventEmitter != null) {
      return new Video(localMap, localSet, paramEventEmitter);
    }
    return new Video(localMap, localSet);
  }
  
  private static Map<String, Object> buildVideoProperties(JSONObject paramJSONObject, List<String> paramList)
  {
    HashMap localHashMap = new HashMap();
    if (!paramJSONObject.isNull("accountId")) {
      localHashMap.put("pubId", paramJSONObject.getString("accountId"));
    }
    if (!paramJSONObject.isNull("id")) {
      localHashMap.put("id", Long.valueOf(paramJSONObject.getLong("id")));
    }
    if (!paramJSONObject.isNull("referenceId")) {
      localHashMap.put("referenceId", paramJSONObject.getString("referenceId"));
    }
    if (!paramJSONObject.isNull("name")) {
      localHashMap.put("name", paramJSONObject.getString("name"));
    }
    if (!paramJSONObject.isNull("shortDescription")) {
      localHashMap.put("shortDescription", paramJSONObject.getString("shortDescription"));
    }
    if (!paramJSONObject.isNull("length")) {
      localHashMap.put("duration", Integer.valueOf(paramJSONObject.getInt("length")));
    }
    Object localObject;
    if (!paramJSONObject.isNull("videoStillURL")) {
      localObject = paramJSONObject.getString("videoStillURL");
    }
    try
    {
      localHashMap.put("stillImageUri", new URI((String)localObject));
      if (!paramJSONObject.isNull("customFields"))
      {
        paramJSONObject = paramJSONObject.getJSONObject("customFields");
        paramList = new HashMap();
        if ((paramJSONObject != null) && (paramJSONObject.length() > 0))
        {
          localObject = paramJSONObject.keys();
          while (((Iterator)localObject).hasNext())
          {
            String str = (String)((Iterator)localObject).next();
            if (str != null) {
              paramList.put(str, paramJSONObject.getString(str));
            }
          }
        }
      }
    }
    catch (URISyntaxException localURISyntaxException)
    {
      for (;;)
      {
        paramList.add(String.format(ErrorUtil.getMessage("invalidURI"), new Object[] { localObject }));
      }
      if (paramList.size() > 0) {
        localHashMap.put("customFields", paramList);
      }
    }
    return localHashMap;
  }
  
  private static Set<SourceCollection> buildVideoSourceCollections(JSONObject paramJSONObject)
  {
    HashSet localHashSet1 = new HashSet();
    HashSet localHashSet2 = new HashSet();
    Object localObject1;
    if (!paramJSONObject.isNull("HLSURL"))
    {
      localObject1 = buildHLSSourceCollectionFromURL(paramJSONObject, "HLSURL");
      if (localObject1 != null)
      {
        localHashSet1.add(localObject1);
        localHashSet2.add(DeliveryType.HLS);
      }
    }
    Object localObject2 = getRenditionSources(paramJSONObject);
    if (!((Set)localObject2).isEmpty())
    {
      localObject1 = new HashMap();
      localObject2 = ((Set)localObject2).iterator();
      Object localObject3;
      while (((Iterator)localObject2).hasNext())
      {
        localObject3 = (Source)((Iterator)localObject2).next();
        DeliveryType localDeliveryType = ((Source)localObject3).getDeliveryType();
        if (!localHashSet2.contains(localDeliveryType))
        {
          if (((HashMap)localObject1).get(localDeliveryType) == null) {
            ((HashMap)localObject1).put(localDeliveryType, new HashSet());
          }
          ((Set)((HashMap)localObject1).get(localDeliveryType)).add(localObject3);
        }
      }
      localObject2 = ((HashMap)localObject1).keySet().iterator();
      while (((Iterator)localObject2).hasNext())
      {
        localObject3 = (DeliveryType)((Iterator)localObject2).next();
        localHashSet1.add(new SourceCollection((Set)((HashMap)localObject1).get(localObject3), (DeliveryType)localObject3));
        localHashSet2.add(localObject3);
      }
    }
    if (!paramJSONObject.isNull("videoFullLength"))
    {
      localObject1 = buildSourceCollectionFromVideoFullLength(paramJSONObject);
      localObject2 = ((SourceCollection)localObject1).getDeliveryType();
      if (!localHashSet2.contains(localObject2))
      {
        localHashSet1.add(localObject1);
        localHashSet2.add(localObject2);
      }
    }
    if ((!localHashSet2.contains(DeliveryType.HLS)) && (!paramJSONObject.isNull("FLVURL")))
    {
      paramJSONObject = buildHLSSourceCollectionFromURL(paramJSONObject, "FLVURL");
      if (paramJSONObject != null) {
        localHashSet1.add(paramJSONObject);
      }
    }
    return localHashSet1;
  }
  
  private static Set<Source> getRenditionSources(JSONObject paramJSONObject)
  {
    HashSet localHashSet = new HashSet();
    localHashSet.addAll(getRenditionSources(paramJSONObject, "renditions"));
    localHashSet.addAll(getRenditionSources(paramJSONObject, "WVMRenditions"));
    localHashSet.addAll(getRenditionSources(paramJSONObject, "IOSRenditions"));
    return localHashSet;
  }
  
  private static Set<Source> getRenditionSources(JSONObject paramJSONObject, String paramString)
  {
    HashSet localHashSet = new HashSet();
    paramJSONObject = paramJSONObject.optJSONArray(paramString);
    if (paramJSONObject != null)
    {
      int i = 0;
      while (i < paramJSONObject.length())
      {
        localHashSet.add(buildSourceFromJSON(paramJSONObject.getJSONObject(i)));
        i += 1;
      }
    }
    return localHashSet;
  }
  
  private static void parseJSONProperties(JSONObject paramJSONObject, Map<String, Object> paramMap, List<String> paramList)
  {
    if ((paramJSONObject == null) || (paramMap == null)) {
      throw new IllegalArgumentException(ErrorUtil.getMessage("jsonAndPropertiesRequired"));
    }
    Object localObject = paramList;
    if (paramList == null) {
      localObject = new ArrayList();
    }
    paramList = paramJSONObject.keys();
    while (paramList.hasNext())
    {
      String str = (String)paramList.next();
      if ((!StringUtil.isEmpty(str)) && (!paramJSONObject.isNull(str)) && (!((List)localObject).contains(str))) {
        try
        {
          paramMap.put(str, paramJSONObject.getJSONObject(str).toString());
        }
        catch (JSONException localJSONException1)
        {
          try
          {
            paramMap.put(str, paramJSONObject.getJSONArray(str).toString());
          }
          catch (JSONException localJSONException2)
          {
            paramMap.put(str, paramJSONObject.getString(str));
          }
        }
      }
    }
  }
  
  private void respondWithError(Event paramEvent, Exception paramException)
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(String.format(ErrorUtil.getMessage("mediaRequestError"), new Object[] { paramException.getMessage() }));
    properties.put("errors", localArrayList);
    eventEmitter.respond(paramEvent);
  }
  
  protected void initializeListeners()
  {
    findMediaListener = new OnFindMediaListener(null);
    addListener("findVideo", findMediaListener);
    addListener("findPlaylist", findMediaListener);
  }
  
  class OnFindMediaListener
    implements EventListener
  {
    private OnFindMediaListener() {}
    
    public void processEvent(Event paramEvent)
    {
      HashMap localHashMap = new HashMap();
      localHashMap.put("token", readToken);
      localHashMap.put("media_delivery", "http");
      if (properties.containsKey("options")) {
        localHashMap.putAll((Map)properties.get("options"));
      }
      try
      {
        if (properties.containsKey("videoID"))
        {
          new FindVideoTask(eventEmitter, paramEvent, queryBaseURL, localHashMap).findVideoById((String)properties.get("videoID"));
          return;
        }
        if (properties.containsKey("videoReferenceID"))
        {
          new FindVideoTask(eventEmitter, paramEvent, queryBaseURL, localHashMap).findVideoByReferenceId((String)properties.get("videoReferenceID"));
          return;
        }
      }
      catch (URISyntaxException localURISyntaxException)
      {
        MediaService.this.respondWithError(paramEvent, localURISyntaxException);
        return;
        if (properties.containsKey("playlistID"))
        {
          new FindPlaylistTask(eventEmitter, paramEvent, queryBaseURL, localURISyntaxException).findPlaylistById((String)properties.get("playlistID"));
          return;
        }
      }
      catch (UnsupportedEncodingException localUnsupportedEncodingException)
      {
        MediaService.this.respondWithError(paramEvent, localUnsupportedEncodingException);
        return;
      }
      if (properties.containsKey("playlistReferenceID"))
      {
        new FindPlaylistTask(eventEmitter, paramEvent, queryBaseURL, localUnsupportedEncodingException).findPlaylistByReferenceId((String)properties.get("playlistReferenceID"));
        return;
      }
      throw new IllegalArgumentException(ErrorUtil.getMessage("keyNotFound"));
    }
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.media.MediaService
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */