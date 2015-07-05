package com.addlive.service;

import android.hardware.Camera.CameraInfo;
import android.view.SurfaceView;
import android.view.TextureView;
import android.widget.FrameLayout;
import com.addlive.service.listener.AddLiveServiceListener;
import java.util.List;

public abstract interface AddLiveService
{
  public abstract void addServiceListener(Responder<Void> paramResponder, AddLiveServiceListener paramAddLiveServiceListener);
  
  public abstract void cancelDeferredDisconnect(Responder<Void> paramResponder, String paramString);
  
  public abstract void connect(Responder<MediaConnection> paramResponder, ConnectionDescriptor paramConnectionDescriptor);
  
  public abstract void deferredDisconnect(Responder<Void> paramResponder, String paramString, int paramInt);
  
  public abstract void disconnect(Responder<Void> paramResponder, String paramString);
  
  public abstract void draw(DrawRequest paramDrawRequest);
  
  public abstract void flushEvents(Responder<Void> paramResponder, String paramString, Long paramLong);
  
  public abstract void getAudioOutputDevice(Responder<AudioOutputDevice> paramResponder);
  
  public abstract void getAudioOutputDeviceNames(Responder<List<Device>> paramResponder);
  
  public abstract MediaConnection getConnectionByScope(String paramString);
  
  public abstract void getEventsChecksum(Responder<String> paramResponder);
  
  public abstract void getProperty(Responder<String> paramResponder, String paramString);
  
  public abstract void getVersion(Responder<String> paramResponder);
  
  public abstract void getVideoCaptureDevice(Responder<String> paramResponder);
  
  public abstract void getVideoCaptureDeviceNames(Responder<List<Device>> paramResponder);
  
  public abstract void injectFrame(byte[] paramArrayOfByte, VideoFrameMetadata paramVideoFrameMetadata);
  
  public abstract void monitorSpeechActivity(Responder<Void> paramResponder, String paramString, boolean paramBoolean);
  
  public abstract void networkTest(Responder<ConnectionQuality> paramResponder, ConnectionDescriptor paramConnectionDescriptor);
  
  public abstract void publish(Responder<Void> paramResponder, String paramString, MediaType paramMediaType);
  
  public abstract void reconfigureVideo(Responder<Void> paramResponder, String paramString, VideoStreamDescriptor paramVideoStreamDescriptor);
  
  public abstract void removeServiceListener(Responder<Void> paramResponder, AddLiveServiceListener paramAddLiveServiceListener);
  
  public abstract int renderSink(RenderRequest paramRenderRequest);
  
  public abstract void sendMessage(Responder<Void> paramResponder, String paramString1, String paramString2);
  
  public abstract void sendMessage(Responder<Void> paramResponder, String paramString1, String paramString2, Long paramLong);
  
  public abstract void sendMessage(Responder<Void> paramResponder, String paramString, byte[] paramArrayOfByte);
  
  public abstract void sendMessage(Responder<Void> paramResponder, String paramString, byte[] paramArrayOfByte, Long paramLong);
  
  public abstract void sendReportWithCredentials(Responder<Void> paramResponder, String paramString1, String paramString2);
  
  public abstract void setAllowedSenders(Responder<Void> paramResponder, String paramString, MediaType paramMediaType, List<Long> paramList);
  
  public abstract void setAudioOutputDevice(Responder<Void> paramResponder, AudioOutputDevice paramAudioOutputDevice);
  
  public abstract void setAudioOutputDevice(Responder<Void> paramResponder, String paramString);
  
  public abstract void setProperty(Responder<Void> paramResponder, String paramString1, String paramString2);
  
  public abstract void setProxyServer(Responder<Void> paramResponder, String paramString1, String paramString2, int paramInt);
  
  public abstract void setVideoCaptureDevice(Responder<Void> paramResponder, String paramString);
  
  public abstract void setVideoCaptureDevice(Responder<Void> paramResponder, String paramString, SurfaceView paramSurfaceView);
  
  public abstract void startEventsTracking(Responder<Void> paramResponder, String paramString);
  
  public abstract void startLocalVideo(Responder<String> paramResponder, SurfaceView paramSurfaceView);
  
  public abstract void startLocalVideo(Responder<String> paramResponder, TextureView paramTextureView);
  
  public abstract void startLocalVideo(Responder<String> paramResponder, FrameLayout paramFrameLayout);
  
  public abstract void startMeasuringStats(Responder<Void> paramResponder, String paramString, int paramInt);
  
  public abstract void stopLocalVideo(Responder<Void> paramResponder);
  
  public abstract void stopMeasuringStats(Responder<Void> paramResponder, String paramString);
  
  public abstract void stopRender(int paramInt);
  
  public abstract void unpublish(Responder<Void> paramResponder, String paramString, MediaType paramMediaType);
  
  public static class VideoFrameMetadata
  {
    private int height;
    private Camera.CameraInfo info;
    private int orientation;
    private int width;
    
    public int getHeight()
    {
      return height;
    }
    
    public Camera.CameraInfo getInfo()
    {
      return info;
    }
    
    public int getOrientation()
    {
      return orientation;
    }
    
    public int getWidth()
    {
      return width;
    }
    
    public void setHeight(int paramInt)
    {
      height = paramInt;
    }
    
    public void setInfo(Camera.CameraInfo paramCameraInfo)
    {
      info = paramCameraInfo;
    }
    
    public void setOrientation(int paramInt)
    {
      orientation = paramInt;
    }
    
    public void setWidth(int paramInt)
    {
      width = paramInt;
    }
  }
}

/* Location:
 * Qualified Name:     com.addlive.service.AddLiveService
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */