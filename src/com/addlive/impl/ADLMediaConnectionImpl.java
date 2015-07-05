package com.addlive.impl;

import com.addlive.platform.ADL;
import com.addlive.service.AddLiveService;
import com.addlive.service.MediaConnection;
import com.addlive.service.MediaType;
import com.addlive.service.Responder;
import com.addlive.service.User;
import java.util.HashMap;
import java.util.List;

class ADLMediaConnectionImpl
  implements MediaConnection
{
  private boolean isLocalUserPublishingAudio;
  private String scopeId;
  private HashMap<Long, User> usersInSession = new HashMap();
  
  public ADLMediaConnectionImpl(String paramString)
  {
    scopeId = paramString;
  }
  
  public void addUser(User paramUser)
  {
    usersInSession.put(paramUser.getUserId(), paramUser);
  }
  
  public void disconnect(Responder<Void> paramResponder)
  {
    ADL.getService().disconnect(paramResponder, scopeId);
  }
  
  public User getUser(Long paramLong)
  {
    return (User)usersInSession.get(paramLong);
  }
  
  public HashMap<Long, User> getUsersInSession()
  {
    return usersInSession;
  }
  
  public boolean isLocalUserPublishingAudio()
  {
    return isLocalUserPublishingAudio;
  }
  
  public void publish(Responder<Void> paramResponder, MediaType paramMediaType)
  {
    ADL.getService().publish(paramResponder, scopeId, paramMediaType);
  }
  
  public void removeUser(Long paramLong)
  {
    usersInSession.remove(paramLong);
  }
  
  public void sendMessage(Responder<Void> paramResponder, byte[] paramArrayOfByte)
  {
    ADL.getService().sendMessage(paramResponder, scopeId, paramArrayOfByte);
  }
  
  public void sendMessage(Responder<Void> paramResponder, byte[] paramArrayOfByte, Long paramLong)
  {
    ADL.getService().sendMessage(paramResponder, scopeId, paramArrayOfByte, paramLong);
  }
  
  public void setAllowedSenders(Responder<Void> paramResponder, MediaType paramMediaType, List<Long> paramList)
  {
    ADL.getService().setAllowedSenders(paramResponder, scopeId, paramMediaType, paramList);
  }
  
  public void setLocalUserIsPublishingAudio(boolean paramBoolean)
  {
    isLocalUserPublishingAudio = paramBoolean;
  }
  
  public void startMeasuringStats(Responder<Void> paramResponder, int paramInt)
  {
    ADL.getService().startMeasuringStats(paramResponder, scopeId, paramInt);
  }
  
  public void stopMeasuringStats(Responder<Void> paramResponder)
  {
    ADL.getService().stopMeasuringStats(paramResponder, scopeId);
  }
  
  public void unpublish(Responder<Void> paramResponder, MediaType paramMediaType)
  {
    ADL.getService().unpublish(paramResponder, scopeId, paramMediaType);
  }
}

/* Location:
 * Qualified Name:     com.addlive.impl.ADLMediaConnectionImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */