package com.addlive.service.listener;

public abstract interface AddLiveServiceListener
{
  public abstract void onConnectionLost(ConnectionLostEvent paramConnectionLostEvent);
  
  public abstract void onDeviceListChanged(DeviceListChangedEvent paramDeviceListChangedEvent);
  
  public abstract void onMediaConnTypeChanged(MediaConnTypeChangedEvent paramMediaConnTypeChangedEvent);
  
  public abstract void onMediaIssue(MediaIssueEvent paramMediaIssueEvent);
  
  public abstract void onMediaStats(MediaStatsEvent paramMediaStatsEvent);
  
  public abstract void onMediaStreamEvent(UserStateChangedEvent paramUserStateChangedEvent);
  
  public abstract void onMessage(MessageEvent paramMessageEvent);
  
  public abstract void onMicActivity(MicActivityEvent paramMicActivityEvent);
  
  public abstract void onMicGain(MicGainEvent paramMicGainEvent);
  
  public abstract void onSessionReconnected(SessionReconnectedEvent paramSessionReconnectedEvent);
  
  public abstract void onSpeechActivity(SpeechActivityEvent paramSpeechActivityEvent);
  
  public abstract void onSubscribersCountChanged(SubscribersCountChangedEvent paramSubscribersCountChangedEvent);
  
  public abstract void onUserEvent(UserStateChangedEvent paramUserStateChangedEvent);
  
  public abstract void onVideoFrameSizeChanged(VideoFrameSizeChangedEvent paramVideoFrameSizeChangedEvent);
}

/* Location:
 * Qualified Name:     com.addlive.service.listener.AddLiveServiceListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */