package com.snapchat.android.api2.chat;

import chc;
import chd;
import com.google.gson.annotations.SerializedName;
import qc;
import ud;

@ud
public final class LoadConversationPageTask$b
  extends qc
{
  @SerializedName("conversation_id")
  final String mConversationId;
  @SerializedName("offset")
  final String mOffset;
  
  LoadConversationPageTask$b(LoadConversationPageTask paramLoadConversationPageTask, @chc String paramString1, @chd String paramString2)
  {
    mConversationId = paramString1;
    mOffset = paramString2;
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.api2.chat.LoadConversationPageTask.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */