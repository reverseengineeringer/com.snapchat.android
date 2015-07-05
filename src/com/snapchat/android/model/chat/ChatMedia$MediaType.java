package com.snapchat.android.model.chat;

public enum ChatMedia$MediaType
{
  IMAGE,  VIDEO,  VIDEO_NO_SOUND;
  
  private ChatMedia$MediaType() {}
  
  public static MediaType fromSnapMediaType(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      throw new IllegalArgumentException("Unsupported type.");
    case 0: 
      return IMAGE;
    case 1: 
      return VIDEO;
    }
    return VIDEO_NO_SOUND;
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.model.chat.ChatMedia.MediaType
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */