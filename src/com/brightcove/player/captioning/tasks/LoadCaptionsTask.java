package com.brightcove.player.captioning.tasks;

import android.os.AsyncTask;
import com.brightcove.player.captioning.TTMLParser;
import com.brightcove.player.captioning.WebVTTParser;
import com.brightcove.player.event.Component;
import com.brightcove.player.event.Emits;
import com.brightcove.player.event.EventEmitter;
import com.brightcove.player.event.ListensFor;
import com.brightcove.player.event.RegisteringEventEmitter;
import com.brightcove.player.model.TTMLDocument;
import com.brightcove.player.model.WebVTTDocument;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URI;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;
import org.xmlpull.v1.XmlPullParserException;

@Emits(events={"didLoadCaptions", "closedCaptioningError"})
@ListensFor(events={})
public class LoadCaptionsTask
  extends AsyncTask<URI, Void, Void>
  implements Component
{
  private static final String TAG = LoadCaptionsTask.class.getSimpleName();
  private CaptionsType captionsType;
  private TTMLDocument currentTTMLDocument;
  private WebVTTDocument currentWebVTTDocument;
  private EventEmitter eventEmitter;
  private String lastError;
  private Exception lastException;
  
  public LoadCaptionsTask(EventEmitter paramEventEmitter, CaptionsType paramCaptionsType)
  {
    if (paramEventEmitter == null) {
      throw new IllegalArgumentException("must provide an EventEmitter");
    }
    eventEmitter = RegisteringEventEmitter.build(paramEventEmitter, LoadCaptionsTask.class);
    captionsType = paramCaptionsType;
  }
  
  private void doGetRequestAsStream(URI paramURI, ResponseStreamListener paramResponseStreamListener)
  {
    if (paramURI == null) {
      throw new IllegalArgumentException("must provide a valid URI");
    }
    if (paramResponseStreamListener == null) {
      throw new IllegalArgumentException("must provide a listener to process the InputStream");
    }
    localObject = paramURI.toURL();
    paramURI = null;
    new StringBuilder("issuing GET request: ").append(((URL)localObject).toString());
    try
    {
      localObject = (HttpURLConnection)((URL)localObject).openConnection();
      if (paramURI == null) {
        break label88;
      }
    }
    finally
    {
      try
      {
        paramResponseStreamListener.onStreamReady(((HttpURLConnection)localObject).getInputStream());
        if (localObject != null) {
          ((HttpURLConnection)localObject).disconnect();
        }
        return;
      }
      finally
      {
        paramURI = (URI)localObject;
      }
      paramResponseStreamListener = finally;
    }
    paramURI.disconnect();
    label88:
    throw paramResponseStreamListener;
  }
  
  private void emitErrorMessage(String paramString)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("errorMessage", paramString);
    if (lastException != null) {
      localHashMap.put("error", lastException);
    }
    eventEmitter.emit("closedCaptioningError", localHashMap);
  }
  
  protected Void doInBackground(URI... paramVarArgs)
  {
    if ((paramVarArgs.length != 1) || (paramVarArgs[0] == null)) {
      throw new IllegalArgumentException("must provide a single URI argument");
    }
    lastError = null;
    if (captionsType == CaptionsType.WEBVTT) {}
    while (captionsType != CaptionsType.TTML) {
      try
      {
        doGetRequestAsStream(paramVarArgs[0], new ResponseStreamListener()
        {
          public void onStreamReady(InputStream paramAnonymousInputStream)
          {
            LoadCaptionsTask.access$002(LoadCaptionsTask.this, WebVTTParser.parse(paramAnonymousInputStream, "UTF-8"));
          }
        });
        return null;
      }
      catch (IOException paramVarArgs)
      {
        lastError = "exception while issuing HTTP request";
        lastException = paramVarArgs;
        cancel(true);
        return null;
      }
      catch (Exception paramVarArgs)
      {
        lastError = "unexpected exception parsing WebVTT response";
        lastException = paramVarArgs;
        cancel(true);
        return null;
      }
    }
    try
    {
      doGetRequestAsStream(paramVarArgs[0], new ResponseStreamListener()
      {
        public void onStreamReady(InputStream paramAnonymousInputStream)
        {
          LoadCaptionsTask.access$102(LoadCaptionsTask.this, TTMLParser.parseXml(paramAnonymousInputStream, null));
        }
      });
      return null;
    }
    catch (IOException paramVarArgs)
    {
      lastError = "exception while issuing HTTP request";
      lastException = paramVarArgs;
      cancel(true);
      return null;
    }
    catch (XmlPullParserException paramVarArgs)
    {
      lastError = "exception parsing DFXP TTML response";
      lastException = paramVarArgs;
      cancel(true);
      return null;
    }
    catch (Exception paramVarArgs)
    {
      lastError = "unexpected exception parsing DFXP TTML response";
      lastException = paramVarArgs;
      cancel(true);
    }
    return null;
  }
  
  protected void onCancelled()
  {
    if (lastError != null) {
      emitErrorMessage(lastError);
    }
  }
  
  protected void onPostExecute(Void paramVoid)
  {
    paramVoid = new HashMap();
    if (captionsType == CaptionsType.TTML) {
      if (currentTTMLDocument != null) {
        paramVoid.put("ttmlDocument", currentTTMLDocument);
      }
    }
    for (;;)
    {
      eventEmitter.emit("didLoadCaptions", paramVoid);
      return;
      if ((captionsType == CaptionsType.WEBVTT) && (currentWebVTTDocument != null)) {
        paramVoid.put("webvttDocument", currentWebVTTDocument);
      }
    }
  }
  
  public static enum CaptionsType
  {
    TTML,  WEBVTT;
    
    private CaptionsType() {}
  }
  
  public static abstract interface ResponseStreamListener
  {
    public abstract void onStreamReady(InputStream paramInputStream);
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.captioning.tasks.LoadCaptionsTask
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */