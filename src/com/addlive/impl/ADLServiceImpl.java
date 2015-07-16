package com.addlive.impl;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.hardware.Camera.CameraInfo;
import android.util.Base64;
import android.view.Display;
import android.view.SurfaceView;
import android.view.TextureView;
import android.view.WindowManager;
import android.widget.FrameLayout;
import com.addlive.service.AddLiveService;
import com.addlive.service.AddLiveService.VideoFrameMetadata;
import com.addlive.service.AudioOutputDevice;
import com.addlive.service.ConnectionDescriptor;
import com.addlive.service.ConnectionQuality;
import com.addlive.service.Device;
import com.addlive.service.DrawRequest;
import com.addlive.service.MediaConnection;
import com.addlive.service.MediaType;
import com.addlive.service.RenderRequest;
import com.addlive.service.Responder;
import com.addlive.service.ResponderAdapter;
import com.addlive.service.VideoStreamDescriptor;
import com.addlive.service.listener.AddLiveServiceListener;
import java.io.File;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import kkkkkk.kkxxkk;
import kkkkkk.xkkkxk;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class ADLServiceImpl
  implements AddLiveService
{
  private Context appContext;
  private ADLBroadcastHandler broadcastHandler;
  private ADLNativeWrapper nativePlatform;
  private boolean usesExternalCamera;
  private boolean usesLoudSpeaker = true;
  
  public ADLServiceImpl(ADLNativeWrapper paramADLNativeWrapper, Context paramContext, boolean paramBoolean)
  {
    nativePlatform = paramADLNativeWrapper;
    appContext = paramContext;
    usesExternalCamera = paramBoolean;
    broadcastHandler = new ADLBroadcastHandler(null);
    paramContext.registerReceiver(broadcastHandler, new IntentFilter("android.intent.action.HEADSET_PLUG"));
  }
  
  public void addServiceListener(Responder<Void> paramResponder, AddLiveServiceListener paramAddLiveServiceListener)
  {
    Log.v("AddLive_SDK", "Calling method addServiceListener()");
    nativePlatform.addServiceListener(paramAddLiveServiceListener);
    paramResponder.resultHandler(null);
  }
  
  public void cancelDeferredDisconnect(Responder<Void> paramResponder, String paramString)
  {
    Log.v("AddLive_SDK", "Calling method cancelDeferredDisconnect(" + paramString + ")");
    ServiceRequest localServiceRequest = new ServiceRequest("cancelDeferredDisconnect");
    localServiceRequest.getParams().put(paramString);
    nativePlatform.invoke(new UpdateAudioSettingsResultAdapter(paramResponder), localServiceRequest);
  }
  
  public void connect(Responder<MediaConnection> paramResponder, ConnectionDescriptor paramConnectionDescriptor)
  {
    Log.v("AddLive_SDK", "Calling method connect(" + paramConnectionDescriptor + ")");
    ServiceRequest localServiceRequest = new ServiceRequest("connect");
    try
    {
      localServiceRequest.getParams().put(paramConnectionDescriptor.toJSON());
      String str2 = paramConnectionDescriptor.getScopeId();
      String str1 = str2;
      if (str2 == null) {
        str1 = paramConnectionDescriptor.getUrl().split("/")[1];
      }
      nativePlatform.invoke(new MediaConnResultAdapter(paramResponder, str1), localServiceRequest);
      return;
    }
    catch (JSONException paramConnectionDescriptor)
    {
      paramResponder.errHandler(1006, "Failed to serialise the connection descriptor due to: " + paramConnectionDescriptor);
      return;
    }
    catch (ArrayIndexOutOfBoundsException paramConnectionDescriptor)
    {
      paramResponder.errHandler(1006, "Failed to serialise the connection descriptor due to: " + paramConnectionDescriptor);
    }
  }
  
  public void deferredDisconnect(Responder<Void> paramResponder, String paramString, int paramInt)
  {
    Log.v("AddLive_SDK", "Calling method deferredDisconnect(" + paramString + ")");
    ServiceRequest localServiceRequest = new ServiceRequest("deferredDisconnect");
    localServiceRequest.getParams().put(paramString);
    localServiceRequest.getParams().put(paramInt);
    nativePlatform.invoke(new DisconnectResultAdapter(paramResponder, paramString), localServiceRequest);
  }
  
  public void disconnect(Responder<Void> paramResponder, String paramString)
  {
    Log.v("AddLive_SDK", "Calling method disconnect(" + paramString + ")");
    ServiceRequest localServiceRequest = new ServiceRequest("disconnect");
    localServiceRequest.getParams().put(paramString);
    nativePlatform.invoke(new DisconnectResultAdapter(paramResponder, paramString), localServiceRequest);
  }
  
  public void draw(DrawRequest paramDrawRequest)
  {
    nativePlatform.draw(paramDrawRequest);
  }
  
  public void flushEvents(Responder<Void> paramResponder, String paramString, Long paramLong)
  {
    ServiceRequest localServiceRequest = new ServiceRequest("flushEvents");
    localServiceRequest.getParams().put(paramString);
    localServiceRequest.getParams().put(paramLong);
    nativePlatform.invoke(new VoidResultAdapter(paramResponder), localServiceRequest);
  }
  
  public void getAudioOutputDevice(Responder<AudioOutputDevice> paramResponder)
  {
    if (usesLoudSpeaker)
    {
      paramResponder.resultHandler(AudioOutputDevice.LOUD_SPEAKER);
      return;
    }
    paramResponder.resultHandler(AudioOutputDevice.PHONE_SPEAKER);
  }
  
  public void getAudioOutputDeviceNames(Responder<List<Device>> paramResponder)
  {
    paramResponder.resultHandler(Arrays.asList(AudioOutputDevice.asDeviceArray()));
  }
  
  public MediaConnection getConnectionByScope(String paramString)
  {
    return (MediaConnection)nativePlatform.getActiveConnections().get(paramString);
  }
  
  public void getEventsChecksum(Responder<String> paramResponder)
  {
    ServiceRequest localServiceRequest = new ServiceRequest("getEventsChecksum");
    nativePlatform.invoke(new StringResultAdapter(paramResponder), localServiceRequest);
  }
  
  public void getProperty(Responder<String> paramResponder, String paramString)
  {
    Log.v("AddLive_SDK", "Calling method getProperty(" + paramString + ")");
    if ("global.dev.audio.androidAudioStream".equals(paramString))
    {
      paramResponder.resultHandler(Integer.toString(0));
      return;
    }
    if ("global.logs".equals(paramString))
    {
      paramResponder.resultHandler(new AerPublisher(appContext).collectLogs());
      return;
    }
    ServiceRequest localServiceRequest = new ServiceRequest("getProperty");
    localServiceRequest.getParams().put(paramString);
    nativePlatform.invoke(new StringResultAdapter(paramResponder), localServiceRequest);
  }
  
  public void getVersion(Responder<String> paramResponder)
  {
    Log.v("AddLive_SDK", "Calling method getVersion()");
    ServiceRequest localServiceRequest = new ServiceRequest("getVersion");
    nativePlatform.invoke(new StringResultAdapter(paramResponder), localServiceRequest);
  }
  
  public void getVideoCaptureDevice(Responder<String> paramResponder)
  {
    Log.v("AddLive_SDK", "Calling method getVideoCaptureDevice()");
    ServiceRequest localServiceRequest = new ServiceRequest("getVideoCaptureDevice");
    nativePlatform.invoke(new StringResultAdapter(paramResponder), localServiceRequest);
  }
  
  public void getVideoCaptureDeviceNames(Responder<List<Device>> paramResponder)
  {
    Log.v("AddLive_SDK", "Calling method getVideoCaptureDeviceNames()");
    ServiceRequest localServiceRequest = new ServiceRequest("getVideoCaptureDeviceNames");
    nativePlatform.invoke(new DevicesResultAdapter(paramResponder), localServiceRequest);
  }
  
  public void injectFrame(byte[] paramArrayOfByte, AddLiveService.VideoFrameMetadata paramVideoFrameMetadata)
  {
    if (!usesExternalCamera) {
      throw new IllegalStateException("The SDK is not configured to use the external camera implementation. Enable this during the platform init");
    }
    int j = ((WindowManager)appContext.getSystemService("window")).getDefaultDisplay().getRotation();
    Camera.CameraInfo localCameraInfo;
    int i;
    if (paramVideoFrameMetadata.getInfo() != null)
    {
      localCameraInfo = paramVideoFrameMetadata.getInfo();
      if (facing == 1) {
        i = (orientation / 90 + j) % 4;
      }
    }
    for (;;)
    {
      ((ADLNativeWrapperImpl)nativePlatform).injectFrame(paramArrayOfByte, paramVideoFrameMetadata.getWidth(), paramVideoFrameMetadata.getHeight(), paramArrayOfByte.length, 17, i, j, System.currentTimeMillis());
      return;
      i = (orientation / 90 - j + 4) % 4;
      continue;
      i = paramVideoFrameMetadata.getOrientation();
    }
  }
  
  public void monitorSpeechActivity(Responder<Void> paramResponder, String paramString, boolean paramBoolean)
  {
    Log.v("AddLive_SDK", "Calling method monitorSpeechActivity(" + paramString + ", " + paramBoolean + ")");
    ServiceRequest localServiceRequest = new ServiceRequest("monitorSpeechActivity");
    localServiceRequest.getParams().put(paramString);
    localServiceRequest.getParams().put(paramBoolean);
    nativePlatform.invoke(new VoidResultAdapter(paramResponder), localServiceRequest);
  }
  
  public void networkTest(Responder<ConnectionQuality> paramResponder, ConnectionDescriptor paramConnectionDescriptor)
  {
    Log.v("AddLive_SDK", "Calling method networkTest()");
    ServiceRequest localServiceRequest = new ServiceRequest("networkTest");
    try
    {
      localServiceRequest.getParams().put(paramConnectionDescriptor.toJSON());
      nativePlatform.invoke(new NetworkTestResultAdapter(paramResponder), localServiceRequest);
      return;
    }
    catch (JSONException paramResponder)
    {
      paramResponder.printStackTrace();
    }
  }
  
  public void publish(Responder<Void> paramResponder, String paramString, MediaType paramMediaType)
  {
    Log.v("AddLive_SDK", "Calling method publish(" + paramString + "," + paramMediaType + ")");
    ServiceRequest localServiceRequest = new ServiceRequest("publish");
    localServiceRequest.getParams().put(paramString);
    localServiceRequest.getParams().put(paramMediaType.getStrValue());
    if (paramMediaType == MediaType.AUDIO)
    {
      nativePlatform.setAudioPublishingState(true, paramString);
      nativePlatform.updateAudioSettings();
    }
    nativePlatform.invoke(new VoidResultAdapter(paramResponder), localServiceRequest);
  }
  
  public void reconfigureVideo(Responder<Void> paramResponder, String paramString, VideoStreamDescriptor paramVideoStreamDescriptor)
  {
    Log.v("AddLive_SDK", "Calling method reconfigureVideo(" + paramString + ", " + paramVideoStreamDescriptor + ")");
    ServiceRequest localServiceRequest = new ServiceRequest("reconfigureVideo");
    localServiceRequest.getParams().put(paramString);
    try
    {
      localServiceRequest.getParams().put(paramVideoStreamDescriptor.toJSON());
      nativePlatform.invoke(new VoidResultAdapter(paramResponder), localServiceRequest);
      return;
    }
    catch (JSONException paramString)
    {
      for (;;)
      {
        paramResponder.errHandler(1006, "Failed to serialise the video stream descriptor due to: " + paramString);
      }
    }
  }
  
  public void release()
  {
    try
    {
      appContext.unregisterReceiver(broadcastHandler);
      return;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      Log.w("AddLive_SDK", "Got an attempt to unregister not registered broadcast receiver");
    }
  }
  
  public void removeServiceListener(Responder<Void> paramResponder, AddLiveServiceListener paramAddLiveServiceListener)
  {
    Log.v("AddLive_SDK", "Calling method removeServiceListener()");
    nativePlatform.removeServiceListener(paramAddLiveServiceListener);
    paramResponder.resultHandler(null);
  }
  
  public int renderSink(RenderRequest paramRenderRequest)
  {
    Log.v("AddLive_SDK", "Calling method renderSink()");
    return nativePlatform.renderSink(paramRenderRequest);
  }
  
  public void sendMessage(Responder<Void> paramResponder, String paramString1, String paramString2)
  {
    sendMessage(paramResponder, paramString1, paramString2, null);
  }
  
  public void sendMessage(Responder<Void> paramResponder, String paramString1, String paramString2, Long paramLong)
  {
    Log.v("AddLive_SDK", "Calling method sendMessage(" + paramString1 + ", size = " + paramString2.length() + ", " + paramLong + ")");
    ServiceRequest localServiceRequest = new ServiceRequest("sendMessage");
    localServiceRequest.getParams().put(paramString1);
    localServiceRequest.getParams().put(paramString2);
    if (paramLong != null) {
      localServiceRequest.getParams().put(paramLong);
    }
    nativePlatform.invoke(new VoidResultAdapter(paramResponder), localServiceRequest);
  }
  
  public void sendMessage(Responder<Void> paramResponder, String paramString, byte[] paramArrayOfByte)
  {
    sendMessage(paramResponder, paramString, paramArrayOfByte, null);
  }
  
  public void sendMessage(Responder<Void> paramResponder, String paramString, byte[] paramArrayOfByte, Long paramLong)
  {
    Log.v("AddLive_SDK", "Calling method sendMessage(" + paramString + ", size = " + paramArrayOfByte.length + ", " + paramLong + ")");
    sendMessage(paramResponder, paramString, Base64.encodeToString(paramArrayOfByte, 0), paramLong);
  }
  
  public void sendReportWithCredentials(Responder<Void> paramResponder, final String paramString1, final String paramString2)
  {
    getProperty(new ResponderAdapter()
    {
      public void resultHandler(String paramAnonymousString)
      {
        Log.d("AddLive_SDK", "Sending AER");
        new AerPublisher(appContext).publish(paramString1, paramString2);
      }
    }, "global.service.X");
  }
  
  public void setAllowedSenders(Responder<Void> paramResponder, String paramString, MediaType paramMediaType, List<Long> paramList)
  {
    Log.v("AddLive_SDK", "Calling method setAllowedSenders(" + paramString + ")");
    ServiceRequest localServiceRequest = new ServiceRequest("setAllowedSenders");
    localServiceRequest.getParams().put(paramString);
    localServiceRequest.getParams().put(paramMediaType);
    paramString = new JSONArray();
    paramMediaType = paramList.iterator();
    while (paramMediaType.hasNext()) {
      paramString.put((Long)paramMediaType.next());
    }
    localServiceRequest.getParams().put(paramString);
    nativePlatform.invoke(new VoidResultAdapter(paramResponder), localServiceRequest);
  }
  
  public void setApplicationId(Responder<Void> paramResponder, Long paramLong)
  {
    Log.v("AddLive_SDK", "Calling method setApplicationId(" + paramLong + ")");
    ServiceRequest localServiceRequest = new ServiceRequest("setApplicationId");
    localServiceRequest.getParams().put(paramLong);
    nativePlatform.invoke(new VoidResultAdapter(paramResponder), localServiceRequest);
  }
  
  public void setAudioOutputDevice(Responder<Void> paramResponder, AudioOutputDevice paramAudioOutputDevice)
  {
    switch (paramAudioOutputDevice)
    {
    }
    for (;;)
    {
      paramResponder.resultHandler(null);
      return;
      nativePlatform.setLoudSpeaker(true);
      continue;
      nativePlatform.setLoudSpeaker(false);
    }
  }
  
  public void setAudioOutputDevice(Responder<Void> paramResponder, String paramString)
  {
    try
    {
      setAudioOutputDevice(paramResponder, AudioOutputDevice.fromStringId(paramString));
      return;
    }
    catch (IllegalArgumentException paramString)
    {
      paramResponder.errHandler(1002, paramString.getMessage());
    }
  }
  
  public void setProperty(Responder<Void> paramResponder, String paramString1, String paramString2)
  {
    Log.v("AddLive_SDK", "Calling method setProperty(" + paramString1 + ", " + paramString2 + ")");
    ServiceRequest localServiceRequest = new ServiceRequest("setProperty");
    localServiceRequest.getParams().put(paramString1);
    localServiceRequest.getParams().put(paramString2);
    nativePlatform.invoke(new VoidResultAdapter(paramResponder), localServiceRequest);
  }
  
  public void setProxyServer(Responder<Void> paramResponder, String paramString1, String paramString2, int paramInt)
  {
    Log.v("AddLive_SDK", "Calling method setProxyServer(" + paramString1 + ", " + paramString2 + ", " + paramInt + ")");
    ServiceRequest localServiceRequest = new ServiceRequest("setProxyServer");
    localServiceRequest.getParams().put(paramString1);
    localServiceRequest.getParams().put(paramString2);
    localServiceRequest.getParams().put(paramInt);
    nativePlatform.invoke(new VoidResultAdapter(paramResponder), localServiceRequest);
  }
  
  public void setVideoCaptureDevice(Responder<Void> paramResponder, String paramString)
  {
    Log.v("AddLive_SDK", "Calling method setVideoCaptureDevice(" + paramString + ")");
    ServiceRequest localServiceRequest = new ServiceRequest("setVideoCaptureDevice");
    localServiceRequest.getParams().put(paramString);
    nativePlatform.invoke(new VoidResultAdapter(paramResponder), localServiceRequest);
  }
  
  public void setVideoCaptureDevice(Responder<Void> paramResponder, String paramString, SurfaceView paramSurfaceView)
  {
    setVideoCaptureDevice(paramResponder, paramString);
  }
  
  public void startEventsTracking(Responder<Void> paramResponder, String paramString)
  {
    paramString = new File(appContext.getCacheDir(), paramString).getAbsolutePath();
    ServiceRequest localServiceRequest = new ServiceRequest("startEventsTracking");
    localServiceRequest.getParams().put(paramString);
    nativePlatform.invoke(new VoidResultAdapter(paramResponder), localServiceRequest);
  }
  
  public void startLocalVideo(Responder<String> paramResponder, SurfaceView paramSurfaceView)
  {
    Log.v("AddLive_SDK", "Calling method startLocalVideo()");
    nativePlatform.startLocalVideo(new StringResultAdapter(paramResponder), paramSurfaceView);
  }
  
  public void startLocalVideo(Responder<String> paramResponder, TextureView paramTextureView)
  {
    Log.v("AddLive_SDK", "Calling method startLocalVideo()");
    nativePlatform.startLocalVideo(new StringResultAdapter(paramResponder), paramTextureView);
  }
  
  public void startLocalVideo(Responder<String> paramResponder, FrameLayout paramFrameLayout)
  {
    Log.v("AddLive_SDK", "Calling method startLocalVideo()");
    nativePlatform.startLocalVideo(new StringResultAdapter(paramResponder), paramFrameLayout);
  }
  
  public void startMeasuringStats(Responder<Void> paramResponder, String paramString, int paramInt)
  {
    Log.v("AddLive_SDK", "Calling method startMeasuringStats(" + paramString + ", " + paramInt + ")");
    ServiceRequest localServiceRequest = new ServiceRequest("startMeasuringStatistics");
    localServiceRequest.getParams().put(paramString);
    localServiceRequest.getParams().put(paramInt);
    nativePlatform.invoke(new VoidResultAdapter(paramResponder), localServiceRequest);
  }
  
  public void stopLocalVideo(Responder<Void> paramResponder)
  {
    Log.v("AddLive_SDK", "Calling method stopLocalVideo()");
    ServiceRequest localServiceRequest = new ServiceRequest("stopLocalVideo");
    nativePlatform.invoke(new VoidResultAdapter(paramResponder), localServiceRequest);
  }
  
  public void stopMeasuringStats(Responder<Void> paramResponder, String paramString)
  {
    Log.v("AddLive_SDK", "Calling method stopMeasuringStats(" + paramString + ")");
    ServiceRequest localServiceRequest = new ServiceRequest("stopMeasuringStatistics");
    localServiceRequest.getParams().put(paramString);
    nativePlatform.invoke(new VoidResultAdapter(paramResponder), localServiceRequest);
  }
  
  public void stopRender(int paramInt)
  {
    Log.v("AddLive_SDK", "Calling method stopRender()");
    nativePlatform.stopRender(paramInt);
  }
  
  public void unpublish(Responder<Void> paramResponder, String paramString, MediaType paramMediaType)
  {
    Log.v("AddLive_SDK", "Calling method unpublish(" + paramString + "," + paramMediaType + ")");
    ServiceRequest localServiceRequest = new ServiceRequest("unpublish");
    localServiceRequest.getParams().put(paramString);
    localServiceRequest.getParams().put(paramMediaType.getStrValue());
    if (paramMediaType == MediaType.AUDIO)
    {
      nativePlatform.setAudioPublishingState(false, paramString);
      nativePlatform.updateAudioSettings();
    }
    nativePlatform.invoke(new VoidResultAdapter(paramResponder), localServiceRequest);
  }
  
  class ADLBroadcastHandler
    extends BroadcastReceiver
  {
    private ADLBroadcastHandler() {}
    
    public void onReceive(Context paramContext, Intent paramIntent)
    {
      kkxxkk.b041E041EОО041EО(paramContext);
      xkkkxk.b041E041EООО041E(paramContext);
      if (paramIntent.getAction().equals("android.intent.action.HEADSET_PLUG")) {
        nativePlatform.updateAudioSettings();
      }
    }
  }
  
  class DevicesResultAdapter
    extends BaseResultAdapter<List<Device>>
  {
    DevicesResultAdapter()
    {
      super();
    }
    
    void handleSuccess(Object paramObject)
    {
      if (responder == null) {
        return;
      }
      paramObject = (JSONObject)paramObject;
      Iterator localIterator = ((JSONObject)paramObject).keys();
      LinkedList localLinkedList = new LinkedList();
      try
      {
        while (localIterator.hasNext())
        {
          String str = (String)localIterator.next();
          localLinkedList.add(new Device(str, ((JSONObject)paramObject).getString(str)));
        }
        responder.resultHandler(localLinkedList);
      }
      catch (JSONException paramObject)
      {
        responder.errHandler(1006, "Failed to parse devices list");
        return;
      }
    }
  }
  
  class DisconnectResultAdapter
    extends BaseResultAdapter<Void>
  {
    private String scopeId;
    
    DisconnectResultAdapter(String paramString)
    {
      super();
      String str;
      scopeId = str;
    }
    
    void handleSuccess(Object paramObject)
    {
      nativePlatform.updateAudioSettings();
      nativePlatform.reportDisconnect(scopeId);
      if (responder != null) {
        responder.resultHandler(null);
      }
    }
  }
  
  class MediaConnResultAdapter
    extends BaseResultAdapter<MediaConnection>
  {
    private String scopeId;
    
    MediaConnResultAdapter(String paramString)
    {
      super();
      String str;
      scopeId = str;
    }
    
    void handleSuccess(Object paramObject)
    {
      if (responder != null)
      {
        paramObject = new ADLMediaConnectionImpl(scopeId);
        nativePlatform.getActiveConnections().put(scopeId, paramObject);
        responder.resultHandler(paramObject);
      }
    }
  }
  
  class NetworkTestResultAdapter
    extends BaseResultAdapter<ConnectionQuality>
  {
    NetworkTestResultAdapter()
    {
      super();
    }
    
    void handleSuccess(Object paramObject)
    {
      if (responder == null) {
        return;
      }
      paramObject = (Integer)paramObject;
      responder.resultHandler(ConnectionQuality._fromInt(((Integer)paramObject).intValue()));
    }
  }
  
  class StringResultAdapter
    extends BaseResultAdapter<String>
  {
    StringResultAdapter()
    {
      super();
    }
    
    void handleSuccess(Object paramObject)
    {
      if (responder != null) {
        responder.resultHandler((String)paramObject);
      }
    }
  }
  
  class UpdateAudioSettingsResultAdapter
    extends BaseResultAdapter<Void>
  {
    UpdateAudioSettingsResultAdapter()
    {
      super();
    }
    
    void handleSuccess(Object paramObject)
    {
      nativePlatform.updateAudioSettings();
      if (responder != null) {
        responder.resultHandler(null);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.addlive.impl.ADLServiceImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */