package com.brightcove.player.edge;

import com.brightcove.player.event.AbstractComponent;
import com.brightcove.player.event.Emits;
import com.brightcove.player.event.EventEmitter;
import com.brightcove.player.event.ListensFor;
import java.util.Map;

@Emits(events={"error"})
@ListensFor(events={})
public class Catalog
  extends AbstractComponent
{
  public static final String DEFAULT_EDGE_BASE_URL = "https://edge.api.brightcove.com/v1/";
  private String account;
  private String baseURL;
  private String policy;
  
  public Catalog(EventEmitter paramEventEmitter, String paramString1, String paramString2)
  {
    this(paramEventEmitter, paramString1, paramString2, "https://edge.api.brightcove.com/v1/");
  }
  
  public Catalog(EventEmitter paramEventEmitter, String paramString1, String paramString2, String paramString3)
  {
    super(paramEventEmitter, Catalog.class);
    account = paramString1;
    policy = paramString2;
    baseURL = paramString3;
  }
  
  public void findVideoByID(String paramString, VideoListener paramVideoListener)
  {
    findVideoByID(paramString, null, paramVideoListener);
  }
  
  public void findVideoByID(String paramString, Map<String, String> paramMap, VideoListener paramVideoListener)
  {
    new GetVideoTask(eventEmitter, baseURL, paramMap, account, policy).getById(paramString, paramVideoListener);
  }
  
  public void findVideoByReferenceID(String paramString, VideoListener paramVideoListener)
  {
    findVideoByReferenceID(paramString, null, paramVideoListener);
  }
  
  public void findVideoByReferenceID(String paramString, Map<String, String> paramMap, VideoListener paramVideoListener)
  {
    new GetVideoTask(eventEmitter, baseURL, paramMap, account, policy).getByReferenceId(paramString, paramVideoListener);
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.edge.Catalog
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */