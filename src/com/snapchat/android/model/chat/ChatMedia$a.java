package com.snapchat.android.model.chat;

import akb.a;

public class ChatMedia$a
  extends akb.a
{
  public int height;
  String iv;
  String key;
  public String mediaId;
  ChatMedia.MediaType mediaType;
  public int width;
  
  public ChatMedia$a(String paramString1, String paramString2)
  {
    super(paramString1, paramString2);
  }
  
  public final a a(String paramString)
  {
    mediaType = ChatMedia.MediaType.valueOf(paramString);
    return this;
  }
  
  public ChatMedia a()
  {
    return new ChatMedia(this);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.model.chat.ChatMedia.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */