package com.brightcove.player.edge;

import com.brightcove.player.event.EventEmitter;
import com.brightcove.player.util.ErrorUtil;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

public class GetVideoTask
  extends EdgeTask
{
  private static final String TAG = GetVideoTask.class.getSimpleName();
  private VideoListener videoListener;
  
  public GetVideoTask(EventEmitter paramEventEmitter, String paramString1, Map<String, String> paramMap, String paramString2, String paramString3)
  {
    super(paramEventEmitter, paramString1, paramMap, paramString2, paramString3);
  }
  
  public void getById(String paramString, VideoListener paramVideoListener)
  {
    videoListener = paramVideoListener;
    try
    {
      execute(new URI[] { new URI(baseURL + "accounts/" + account + "/videos/" + paramString) });
      return;
    }
    catch (URISyntaxException paramString)
    {
      paramString.printStackTrace();
    }
  }
  
  public void getByReferenceId(String paramString, VideoListener paramVideoListener)
  {
    videoListener = paramVideoListener;
    try
    {
      execute(new URI[] { new URI(baseURL + "accounts/" + account + "/videos/ref:" + paramString) });
      return;
    }
    catch (URISyntaxException paramString)
    {
      paramString.printStackTrace();
    }
  }
  
  protected void onPostExecute(JSONObject paramJSONObject)
  {
    if (paramJSONObject != null) {}
    for (;;)
    {
      try
      {
        paramJSONObject = buildVideoFromJSON(paramJSONObject);
        videoListener.onVideo(paramJSONObject);
        if (errors.isEmpty()) {
          break;
        }
        paramJSONObject = errors.iterator();
        if (!paramJSONObject.hasNext()) {
          break;
        }
        String str = (String)paramJSONObject.next();
        videoListener.onError(str);
        continue;
      }
      catch (JSONException paramJSONObject)
      {
        errors.add(String.format(ErrorUtil.getMessage("mediaRequestInvalidJSON"), new Object[] { uri }));
        continue;
      }
      catch (IllegalArgumentException paramJSONObject)
      {
        errors.add(String.format(ErrorUtil.getMessage("mediaRequestNoJSON"), new Object[] { uri }));
        continue;
      }
      errors.add("No data was found that matched your request: " + uri);
    }
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.edge.GetVideoTask
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */