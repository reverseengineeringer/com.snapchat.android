package com.snapchat.android.api2.chat;

import cgb;
import cgc;
import com.google.gson.annotations.SerializedName;
import pl;
import tn;

@tn
public final class LoadConversationPageTask$b
  extends pl
{
  @SerializedName("conversation_id")
  final String mConversationId;
  @SerializedName("offset")
  final String mOffset;
  
  LoadConversationPageTask$b(LoadConversationPageTask paramLoadConversationPageTask, @cgb String paramString1, @cgc String paramString2)
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