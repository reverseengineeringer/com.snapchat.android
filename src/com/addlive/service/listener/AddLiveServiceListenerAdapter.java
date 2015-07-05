package com.addlive.service.listener;

public class AddLiveServiceListenerAdapter
  implements AddLiveServiceListener
{
  public void onConnectionLost(ConnectionLostEvent paramConnectionLostEvent) {}
  
  public void onDeviceListChanged(DeviceListChangedEvent paramDeviceListChangedEvent) {}
  
  public void onMediaConnTypeChanged(MediaConnTypeChangedEvent paramMediaConnTypeChangedEvent) {}
  
  public void onMediaIssue(MediaIssueEvent paramMediaIssueEvent) {}
  
  public void onMediaStats(MediaStatsEvent paramMediaStatsEvent) {}
  
  public void onMediaStreamEvent(UserStateChangedEvent paramUserStateChangedEvent) {}
  
  public void onMessage(MessageEvent paramMessageEvent) {}
  
  public void onMicActivity(MicActivityEvent paramMicActivityEvent) {}
  
  public void onMicGain(MicGainEvent paramMicGainEvent) {}
  
  public void onSessionReconnected(SessionReconnectedEvent paramSessionReconnectedEvent) {}
  
  public void onSpeechActivity(SpeechActivityEvent paramSpeechActivityEvent) {}
  
  public void onSubscribersCountChanged(SubscribersCountChangedEvent paramSubscribersCountChangedEvent) {}
  
  public void onUserEvent(UserStateChangedEvent paramUserStateChangedEvent) {}
  
  public void onVideoFrameSizeChanged(VideoFrameSizeChangedEvent paramVideoFrameSizeChangedEvent) {}
}

/* Location:
 * Qualified Name:     com.addlive.service.listener.AddLiveServiceListenerAdapter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */