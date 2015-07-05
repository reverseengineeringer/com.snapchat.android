package com.addlive.service;

import java.util.HashMap;
import java.util.List;

public abstract interface MediaConnection
{
  public abstract void addUser(User paramUser);
  
  public abstract void disconnect(Responder<Void> paramResponder);
  
  public abstract User getUser(Long paramLong);
  
  public abstract HashMap<Long, User> getUsersInSession();
  
  public abstract boolean isLocalUserPublishingAudio();
  
  public abstract void publish(Responder<Void> paramResponder, MediaType paramMediaType);
  
  public abstract void removeUser(Long paramLong);
  
  public abstract void sendMessage(Responder<Void> paramResponder, byte[] paramArrayOfByte);
  
  public abstract void sendMessage(Responder<Void> paramResponder, byte[] paramArrayOfByte, Long paramLong);
  
  public abstract void setAllowedSenders(Responder<Void> paramResponder, MediaType paramMediaType, List<Long> paramList);
  
  public abstract void setLocalUserIsPublishingAudio(boolean paramBoolean);
  
  public abstract void startMeasuringStats(Responder<Void> paramResponder, int paramInt);
  
  public abstract void stopMeasuringStats(Responder<Void> paramResponder);
  
  public abstract void unpublish(Responder<Void> paramResponder, MediaType paramMediaType);
}

/* Location:
 * Qualified Name:     com.addlive.service.MediaConnection
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */