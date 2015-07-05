import android.os.Bundle;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.model.MediaMailingMetadata;
import com.snapchat.android.model.MediaMailingMetadata.UploadStatus;
import com.snapchat.android.model.Mediabryo;
import com.snapchat.android.model.chat.ChatConversation;
import com.snapchat.android.model.chat.ChatMedia;
import com.snapchat.android.model.chat.ChatMedia.MediaType;
import com.snapchat.android.model.chat.StatefulChatFeedItem;
import com.snapchat.android.model.chat.StatefulChatFeedItem.SendReceiveStatus;
import com.snapchat.android.notification.AndroidNotificationManager;
import com.snapchat.android.util.crypto.CbcEncryptionAlgorithm;
import com.squareup.otto.Bus;

public final class pj
  extends ph
{
  private static final String TASK_NAME = "UploadChatMediaTask";
  private ChatConversation mChatConversation;
  private ChatMedia mChatMedia;
  private AndroidNotificationManager mNotificationManager = AndroidNotificationManager.a();
  private final ajn mSnapWomb = ajn.a();
  
  public pj(aim paramaim)
  {
    super(paramaim);
  }
  
  protected final String a()
  {
    return "/bq/upload_chat_media";
  }
  
  protected final void a(String paramString, int paramInt)
  {
    mSnapWomb.a(mSnapbryo, MediaMailingMetadata.UploadStatus.FAILED);
    mChatMedia.mSendReceiveStatus = StatefulChatFeedItem.SendReceiveStatus.FAILED;
    ban.a().a(new baz(mChatConversation.mId, true));
    mNotificationManager.a(SnapchatApplication.b(), false);
  }
  
  protected final Bundle b()
  {
    Bundle localBundle = super.b();
    localBundle.putString("type", ChatMedia.MediaType.IMAGE.toString());
    localBundle.putString("conversation_id", mChatConversation.mId);
    localBundle.putString("id", mSnapbryo.mClientId);
    localBundle.putString("recipient", mMediaMailingMetadata.e());
    localBundle.putByteArray("data", new CbcEncryptionAlgorithm(mChatMedia.D(), mChatMedia.E()).a(mData, "no dataId provided"));
    return localBundle;
  }
  
  protected final void b(aku paramaku)
  {
    mChatMedia.e(media_id);
    mSnapWomb.a(mSnapbryo, MediaMailingMetadata.UploadStatus.UPLOADED);
    paramaku = yq.a();
    ChatConversation localChatConversation = mChatConversation;
    ChatMedia localChatMedia = mChatMedia;
    localChatMedia.c(localChatConversation.b(localChatMedia.W()));
    Object localObject = new bih().a(localChatMedia.B()).b(localChatMedia.D()).c(localChatMedia.E()).a(Integer.valueOf(localChatMedia.F())).b(Integer.valueOf(localChatMedia.G()));
    localObject = new bij().a(bij.a.MEDIA.toString()).a((bih)localObject);
    bhf localbhf = (bhf)asz.a(bii.a.CHAT_MESSAGE, mSender, mRecipients, mMessagingAuthToken);
    localbhf.a((bij)localObject);
    localbhf.a(localChatMedia.d());
    localbhf.b(Long.valueOf(localChatMedia.W()));
    localChatMedia.a(localbhf.k());
    localChatMedia.a(localbhf);
    paramaku.a(localChatConversation, localChatMedia);
    mNotificationManager.a(SnapchatApplication.b(), true);
  }
  
  protected final String c()
  {
    return "UploadChatMediaTask";
  }
  
  protected final void onPreExecute()
  {
    super.onPreExecute();
    mChatMedia = new ChatMedia(mSnapbryo);
    mChatMedia.mSendReceiveStatus = StatefulChatFeedItem.SendReceiveStatus.SENDING;
    mChatConversation = akc.b().a(mMediaMailingMetadata.e());
    if (mChatConversation == null)
    {
      cancel(true);
      return;
    }
    mChatConversation.a(mChatMedia);
    yn.a().a(mChatConversation, false);
  }
}

/* Location:
 * Qualified Name:     pj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */