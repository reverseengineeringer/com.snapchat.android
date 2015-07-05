package com.brightcove.player.media.tasks;

import android.os.AsyncTask;
import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventEmitter;
import com.brightcove.player.media.HttpService;
import com.brightcove.player.media.VideoFields;
import com.brightcove.player.util.ErrorUtil;
import com.brightcove.player.util.StringUtil;
import java.io.IOException;
import java.net.URI;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

public class FindMediaTask
  extends AsyncTask<URI, Void, JSONObject>
{
  private static final String TAG = FindMediaTask.class.getSimpleName();
  protected Event event;
  protected EventEmitter eventEmitter;
  protected HttpService httpService;
  protected Map<String, String> options;
  protected String queryBaseURL;
  protected URI uri;
  
  protected FindMediaTask(EventEmitter paramEventEmitter, Event paramEvent, String paramString, Map<String, String> paramMap)
  {
    if (paramEventEmitter == null) {
      throw new IllegalArgumentException(ErrorUtil.getMessage("eventEmitterRequired"));
    }
    if (paramEvent == null) {
      throw new IllegalArgumentException(ErrorUtil.getMessage("eventRequired"));
    }
    if ((paramString == null) || (paramString.trim().equals(""))) {
      throw new IllegalArgumentException(ErrorUtil.getMessage("baseURLRequired"));
    }
    String str = (String)paramMap.get("token");
    if ((str == null) || (str.trim().isEmpty())) {
      throw new IllegalArgumentException(ErrorUtil.getMessage("tokenRequired"));
    }
    str = (String)paramMap.get("media_delivery");
    if ((str == null) || (str.trim().isEmpty())) {
      throw new IllegalArgumentException(ErrorUtil.getMessage("mediaDeliveryRequired"));
    }
    eventEmitter = paramEventEmitter;
    event = paramEvent;
    queryBaseURL = paramString;
    options = paramMap;
    httpService = new HttpService();
  }
  
  public URI buildURI(String paramString1, String paramString2, String paramString3)
  {
    HashMap localHashMap = new HashMap(options);
    localHashMap.put("command", paramString1);
    localHashMap.put(paramString2, paramString3);
    paramString1 = (String)options.get("video_fields");
    if (paramString1 == null) {
      localHashMap.put("video_fields", StringUtil.join(VideoFields.DEFAULT_FIELDS, ","));
    }
    while (paramString1.contains("accountId")) {
      return HttpService.buildURIWithQueryParameters(queryBaseURL, localHashMap);
    }
    if (paramString1.length() == 0) {}
    for (paramString1 = "accountId";; paramString1 = paramString1 + ",accountId")
    {
      localHashMap.put("video_fields", paramString1);
      break;
    }
  }
  
  protected JSONObject doInBackground(URI... paramVarArgs)
  {
    if ((paramVarArgs == null) || (paramVarArgs.length != 1)) {
      throw new IllegalArgumentException(ErrorUtil.getMessage("uriRequired"));
    }
    uri = paramVarArgs[0];
    try
    {
      paramVarArgs = httpService.doJSONGetRequest(uri);
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
  
  protected void emitError(String paramString, Exception paramException)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("message", paramString + ": " + paramException.getMessage());
    eventEmitter.emit("error", localHashMap);
  }
  
  public void executeWithCommand(String paramString1, String paramString2, String paramString3)
  {
    if ((paramString1 == null) || (paramString1.trim().isEmpty())) {
      throw new IllegalArgumentException(ErrorUtil.getMessage("mediaAPICommandRequired"));
    }
    if ((paramString2 == null) || (paramString2.trim().isEmpty())) {
      throw new IllegalArgumentException(ErrorUtil.getMessage("idFieldRequired"));
    }
    if ((paramString3 == null) || (paramString3.trim().isEmpty())) {
      throw new IllegalArgumentException(ErrorUtil.getMessage("idRequired"));
    }
    execute(new URI[] { buildURI(paramString1, paramString2, paramString3) });
  }
  
  public void executeWithURI(URI paramURI)
  {
    if (paramURI == null) {
      throw new IllegalArgumentException(ErrorUtil.getMessage("uriRequired"));
    }
    execute(new URI[] { paramURI });
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.media.tasks.FindMediaTask
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */