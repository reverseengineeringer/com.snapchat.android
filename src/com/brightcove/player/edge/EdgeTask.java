package com.brightcove.player.edge;

import android.os.AsyncTask;
import com.brightcove.player.event.EventEmitter;
import com.brightcove.player.media.DeliveryType;
import com.brightcove.player.media.HttpService;
import com.brightcove.player.model.CuePoint;
import com.brightcove.player.model.Source;
import com.brightcove.player.model.SourceCollection;
import com.brightcove.player.model.Video;
import com.brightcove.player.util.ErrorUtil;
import com.brightcove.player.util.StringUtil;
import java.io.IOException;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

abstract class EdgeTask
  extends AsyncTask<URI, Void, JSONObject>
{
  private static final String ACCOUNT_ID = "account_id";
  private static final String CONTAINER = "container";
  private static final String CUE_POINTS = "cue_points";
  private static final String CUSTOM_FIELDS = "custom_fields";
  private static final String DESCRIPTION = "description";
  private static final String DURATION = "duration";
  private static final String FLV = "flv";
  private static final String ID = "id";
  private static final String LONG_DESCRIPTION = "longDescription";
  private static final String M2TS = "m2ts";
  private static final String MP4 = "mp4";
  private static final String NAME = "name";
  private static final String POSTER = "poster";
  private static final String REFERENCE_ID = "reference_id";
  private static final String SOURCES = "sources";
  private static final String SRC = "src";
  private static final String TAG = EdgeTask.class.getSimpleName();
  private static final String THUMBNAIL = "thumbnail";
  private static final String TIME = "time";
  private static final String TYPE = "type";
  private static final String WVM = "wvm";
  protected String account;
  protected String baseURL;
  protected List<String> errors;
  protected EventEmitter eventEmitter;
  protected HttpService httpService;
  private Map<String, String> options;
  private String policy;
  protected URI uri;
  
  EdgeTask(EventEmitter paramEventEmitter, String paramString1, Map<String, String> paramMap, String paramString2, String paramString3)
  {
    eventEmitter = paramEventEmitter;
    baseURL = paramString1;
    options = paramMap;
    account = paramString2;
    policy = paramString3;
    httpService = new HttpService();
    errors = new ArrayList();
  }
  
  private CuePoint buildCuePointFromJSON(JSONObject paramJSONObject, EventEmitter paramEventEmitter)
  {
    if (paramJSONObject.isNull("time"))
    {
      paramJSONObject = String.format(ErrorUtil.getMessage("missingCuePointProperty"), new Object[] { "time" });
      errors.add(paramJSONObject);
      return null;
    }
    if (paramJSONObject.isNull("type"))
    {
      paramJSONObject = String.format(ErrorUtil.getMessage("missingCuePointProperty"), new Object[] { "type" });
      errors.add(paramJSONObject);
      return null;
    }
    Object localObject = paramJSONObject.keys();
    HashMap localHashMap = new HashMap();
    int i = 0;
    paramEventEmitter = null;
    while (((Iterator)localObject).hasNext())
    {
      String str = (String)((Iterator)localObject).next();
      if (str.equals("time")) {
        i = (int)(paramJSONObject.getDouble("time") * 1000.0D);
      } else if (str.equals("type")) {
        paramEventEmitter = paramJSONObject.getString("type");
      } else {
        localHashMap.put(str, paramJSONObject.get(str).toString());
      }
    }
    localObject = new HashSet(2);
    ((Set)localObject).add("time");
    ((Set)localObject).add("type");
    parseJSONProperties(paramJSONObject, localHashMap, (Set)localObject);
    return new CuePoint(i, paramEventEmitter, localHashMap);
  }
  
  private Source buildSourceFromJSON(JSONObject paramJSONObject)
  {
    HashMap localHashMap = new HashMap();
    if (!paramJSONObject.isNull("src")) {
      localHashMap.put("url", paramJSONObject.getString("src"));
    }
    Object localObject;
    if (!paramJSONObject.isNull("container"))
    {
      localObject = paramJSONObject.getString("container");
      if (!((String)localObject).equalsIgnoreCase("mp4")) {
        break label112;
      }
      localHashMap.put("deliveryType", DeliveryType.MP4);
    }
    for (;;)
    {
      localObject = new HashSet(2);
      ((Set)localObject).add("src");
      ((Set)localObject).add("container");
      parseJSONProperties(paramJSONObject, localHashMap, (Set)localObject);
      return new Source(localHashMap);
      label112:
      if (((String)localObject).equalsIgnoreCase("m2ts")) {
        localHashMap.put("deliveryType", DeliveryType.HLS);
      } else if (((String)localObject).equalsIgnoreCase("flv")) {
        localHashMap.put("deliveryType", DeliveryType.FLV);
      } else if (((String)localObject).equalsIgnoreCase("wvm")) {
        localHashMap.put("deliveryType", DeliveryType.WVM);
      } else {
        localHashMap.put("deliveryType", DeliveryType.UNKNOWN);
      }
    }
  }
  
  private Set<Source> buildSourcesFromJSON(JSONObject paramJSONObject)
  {
    HashSet localHashSet = new HashSet();
    paramJSONObject = paramJSONObject.optJSONArray("sources");
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
  
  private List<CuePoint> buildVideoCuePoints(JSONObject paramJSONObject, EventEmitter paramEventEmitter)
  {
    ArrayList localArrayList = null;
    if (!paramJSONObject.isNull("cue_points"))
    {
      localArrayList = new ArrayList();
      paramJSONObject = paramJSONObject.getJSONArray("cue_points");
      int i = 0;
      while (i < paramJSONObject.length())
      {
        localArrayList.add(buildCuePointFromJSON(paramJSONObject.getJSONObject(i), paramEventEmitter));
        i += 1;
      }
    }
    return localArrayList;
  }
  
  private Map<String, Object> buildVideoProperties(JSONObject paramJSONObject)
  {
    HashMap localHashMap1 = new HashMap();
    if (!paramJSONObject.isNull("account_id")) {
      localHashMap1.put("pubId", paramJSONObject.getString("account_id"));
    }
    if (!paramJSONObject.isNull("id")) {
      localHashMap1.put("id", Long.valueOf(paramJSONObject.getLong("id")));
    }
    if (!paramJSONObject.isNull("duration")) {
      localHashMap1.put("duration", Integer.valueOf(paramJSONObject.getInt("duration")));
    }
    Object localObject;
    if (!paramJSONObject.isNull("poster")) {
      localObject = paramJSONObject.getString("poster");
    }
    try
    {
      localHashMap1.put("stillImageUri", new URI((String)localObject));
      if (!paramJSONObject.isNull("custom_fields"))
      {
        localObject = paramJSONObject.getJSONObject("custom_fields");
        HashMap localHashMap2 = new HashMap();
        if ((localObject != null) && (((JSONObject)localObject).length() > 0))
        {
          Iterator localIterator = ((JSONObject)localObject).keys();
          while (localIterator.hasNext())
          {
            String str = (String)localIterator.next();
            if (str != null) {
              localHashMap2.put(str, ((JSONObject)localObject).getString(str));
            }
          }
        }
      }
    }
    catch (URISyntaxException localURISyntaxException)
    {
      for (;;)
      {
        localObject = String.format(ErrorUtil.getMessage("invalidURI"), new Object[] { localObject });
        errors.add(localObject);
      }
      if (localURISyntaxException.size() > 0) {
        localHashMap1.put("customFields", localURISyntaxException);
      }
      localObject = new HashSet();
      ((Set)localObject).add("account_id");
      ((Set)localObject).add("cue_points");
      ((Set)localObject).add("custom_fields");
      ((Set)localObject).add("duration");
      ((Set)localObject).add("id");
      ((Set)localObject).add("poster");
      ((Set)localObject).add("sources");
      parseJSONProperties(paramJSONObject, localHashMap1, (Set)localObject);
    }
    return localHashMap1;
  }
  
  private Set<SourceCollection> buildVideoSourceCollections(JSONObject paramJSONObject)
  {
    HashSet localHashSet = new HashSet();
    Object localObject1 = buildSourcesFromJSON(paramJSONObject);
    paramJSONObject = new HashSet();
    if (!((Set)localObject1).isEmpty())
    {
      HashMap localHashMap = new HashMap();
      localObject1 = ((Set)localObject1).iterator();
      Object localObject2;
      while (((Iterator)localObject1).hasNext())
      {
        localObject2 = (Source)((Iterator)localObject1).next();
        DeliveryType localDeliveryType = ((Source)localObject2).getDeliveryType();
        if (!paramJSONObject.contains(localDeliveryType))
        {
          if (localHashMap.get(localDeliveryType) == null) {
            localHashMap.put(localDeliveryType, new HashSet());
          }
          ((Set)localHashMap.get(localDeliveryType)).add(localObject2);
        }
      }
      localObject1 = localHashMap.keySet().iterator();
      while (((Iterator)localObject1).hasNext())
      {
        localObject2 = (DeliveryType)((Iterator)localObject1).next();
        localHashSet.add(new SourceCollection((Set)localHashMap.get(localObject2), (DeliveryType)localObject2));
        paramJSONObject.add(localObject2);
      }
    }
    return localHashSet;
  }
  
  private void emitError(String paramString, Exception paramException)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("message", paramString + ": " + paramException.getMessage());
    eventEmitter.emit("error", localHashMap);
  }
  
  protected Video buildVideoFromJSON(JSONObject paramJSONObject)
  {
    Map localMap = buildVideoProperties(paramJSONObject);
    Set localSet = buildVideoSourceCollections(paramJSONObject);
    paramJSONObject = buildVideoCuePoints(paramJSONObject, eventEmitter);
    if (paramJSONObject != null) {
      return new Video(localMap, localSet, paramJSONObject);
    }
    return new Video(localMap, localSet);
  }
  
  protected JSONObject doInBackground(URI... paramVarArgs)
  {
    if ((paramVarArgs == null) || (paramVarArgs.length != 1)) {
      throw new IllegalArgumentException(ErrorUtil.getMessage("uriRequired"));
    }
    uri = paramVarArgs[0];
    paramVarArgs = new HashMap();
    paramVarArgs.put("BCOV-POLICY", policy);
    if (options != null) {
      paramVarArgs.putAll(options);
    }
    try
    {
      paramVarArgs = httpService.doJSONGetRequest(uri, paramVarArgs);
      return paramVarArgs;
    }
    catch (IOException paramVarArgs)
    {
      new StringBuilder("IOException: ").append(paramVarArgs);
      emitError(String.format(ErrorUtil.getMessage("uriError"), new Object[] { uri.toString() }), paramVarArgs);
      return null;
    }
    catch (JSONException paramVarArgs)
    {
      new StringBuilder("JSONException").append(paramVarArgs);
      emitError("Not a valid JSON Response", paramVarArgs);
    }
    return null;
  }
  
  protected void parseJSONProperties(JSONObject paramJSONObject, Map<String, Object> paramMap, Set<String> paramSet)
  {
    Iterator localIterator = paramJSONObject.keys();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      if ((!StringUtil.isEmpty(str)) && (!paramJSONObject.isNull(str)) && (!paramSet.contains(str))) {
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
}

/* Location:
 * Qualified Name:     com.brightcove.player.edge.EdgeTask
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */