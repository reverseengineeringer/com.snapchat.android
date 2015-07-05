package com.addlive.impl;

import android.view.SurfaceView;
import android.view.TextureView;
import android.widget.FrameLayout;
import com.addlive.service.DrawRequest;
import com.addlive.service.MediaConnection;
import com.addlive.service.RenderRequest;
import com.addlive.service.listener.AddLiveServiceListener;
import java.util.Map;

public abstract interface ADLNativeWrapper
{
  public abstract void addServiceListener(AddLiveServiceListener paramAddLiveServiceListener);
  
  public abstract void draw(DrawRequest paramDrawRequest);
  
  public abstract Map<String, MediaConnection> getActiveConnections();
  
  public abstract void initCamOnNative();
  
  public abstract int initPlatform();
  
  public abstract void invoke(BaseResultAdapter paramBaseResultAdapter, ServiceRequest paramServiceRequest);
  
  public abstract void releasePlatform();
  
  public abstract void removeServiceListener(AddLiveServiceListener paramAddLiveServiceListener);
  
  public abstract int renderSink(RenderRequest paramRenderRequest);
  
  public abstract void reportDisconnect(String paramString);
  
  public abstract void setAudioPublishingState(boolean paramBoolean, String paramString);
  
  public abstract void setLoudSpeaker(boolean paramBoolean);
  
  public abstract void startLocalVideo(BaseResultAdapter paramBaseResultAdapter, SurfaceView paramSurfaceView);
  
  public abstract void startLocalVideo(BaseResultAdapter paramBaseResultAdapter, TextureView paramTextureView);
  
  public abstract void startLocalVideo(BaseResultAdapter paramBaseResultAdapter, FrameLayout paramFrameLayout);
  
  public abstract void stopRender(int paramInt);
  
  public abstract void updateAudioSettings();
}

/* Location:
 * Qualified Name:     com.addlive.impl.ADLNativeWrapper
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */