package com.brightcove.player.media.tasks;

import com.brightcove.player.event.Component;
import com.brightcove.player.event.Emits;
import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventEmitter;
import com.brightcove.player.event.ListensFor;
import com.brightcove.player.media.MediaService;
import com.brightcove.player.util.ErrorUtil;
import java.util.ArrayList;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

@Emits(events={})
@ListensFor(events={})
public class FindVideoTask
  extends FindMediaTask
  implements Component
{
  public FindVideoTask(EventEmitter paramEventEmitter, Event paramEvent, String paramString, Map<String, String> paramMap)
  {
    super(paramEventEmitter, paramEvent, paramString, paramMap);
  }
  
  public void findVideoById(String paramString)
  {
    executeWithCommand("find_video_by_id", "video_id", paramString);
  }
  
  public void findVideoByReferenceId(String paramString)
  {
    executeWithCommand("find_video_by_reference_id", "reference_id", paramString);
  }
  
  protected void onPostExecute(JSONObject paramJSONObject)
  {
    ArrayList localArrayList = new ArrayList();
    if (paramJSONObject == null) {
      localArrayList.add("No data was found that matched your request. " + uri);
    }
    for (;;)
    {
      if (!localArrayList.isEmpty()) {
        event.properties.put("errors", localArrayList);
      }
      eventEmitter.respond(event);
      return;
      if (!paramJSONObject.isNull("error")) {
        try
        {
          localArrayList.add(paramJSONObject.getString("error"));
        }
        catch (JSONException paramJSONObject)
        {
          localArrayList.add(String.format(ErrorUtil.getMessage("mediaRequestInvalidJSON"), new Object[] { uri }));
        }
      } else {
        try
        {
          paramJSONObject = MediaService.buildVideoFromJSON(paramJSONObject, eventEmitter, localArrayList);
          event.properties.put("video", paramJSONObject);
        }
        catch (JSONException paramJSONObject)
        {
          localArrayList.add(String.format(ErrorUtil.getMessage("mediaRequestInvalidJSON"), new Object[] { uri }));
        }
        catch (IllegalArgumentException paramJSONObject)
        {
          localArrayList.add(String.format(ErrorUtil.getMessage("mediaRequestNoJSON"), new Object[] { uri }));
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.media.tasks.FindVideoTask
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */