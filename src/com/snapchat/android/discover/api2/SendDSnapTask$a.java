package com.snapchat.android.discover.api2;

import aeb;
import aji;
import akg;
import aln;
import aum;
import avz;
import com.google.gson.annotations.SerializedName;
import com.snapchat.android.model.Mediabryo;
import com.snapchat.android.model.chat.ChatMedia.MediaType;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import qc;
import ud;

@ud
final class SendDSnapTask$a
  extends qc
{
  @SerializedName("body_type")
  final String mBodyType = aln.DISCOVER_SHARE;
  @SerializedName("media_height")
  final int mHeight = athis$0).mHeight;
  @SerializedName("media_id")
  final String mMediaId = athis$0).mClientId;
  @SerializedName("media_enc_iv")
  final String mMediaIv = bthis$0).m;
  @SerializedName("media_enc_key")
  final String mMediaKey = bthis$0).l;
  @SerializedName("media_type")
  final String mMediaType = ChatMedia.MediaType.fromSnapMediaType(SendDSnapTask.a(this$0).h()).name();
  @SerializedName("recipient_ids")
  final String mRecipientIds;
  @SerializedName("recipients")
  final String mRecipients;
  @SerializedName("seq_nums")
  final String mSeqNums;
  @SerializedName("media_width")
  final int mWidth = athis$0).mWidth;
  
  public SendDSnapTask$a(SendDSnapTask paramSendDSnapTask)
  {
    String[] arrayOfString = SendDSnapTask.c(paramSendDSnapTask).f();
    List localList = SendDSnapTask.c(paramSendDSnapTask).g();
    SendDSnapTask.d(paramSendDSnapTask).putAll(SendDSnapTask.a(arrayOfString));
    mRecipients = avz.a(Arrays.asList(arrayOfString), ",");
    if (!localList.isEmpty()) {}
    for (mRecipientIds = avz.a(localList, ",");; mRecipientIds = null)
    {
      mSeqNums = SendDSnapTask.e(paramSendDSnapTask).a(SendDSnapTask.d(paramSendDSnapTask));
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.discover.api2.SendDSnapTask.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */