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

public final class qa
  extends py
{
  private static final String TASK_NAME = "UploadChatMediaTask";
  private ChatConversation mChatConversation;
  private ChatMedia mChatMedia;
  private AndroidNotificationManager mNotificationManager = AndroidNotificationManager.a();
  private final aki mSnapWomb = aki.a();
  
  public qa(aji paramaji)
  {
    super(paramaji);
  }
  
  protected final String a()
  {
    return "/bq/upload_chat_media";
  }
  
  protected final void a(String paramString, int paramInt)
  {
    mSnapWomb.a(mSnapbryo, MediaMailingMetadata.UploadStatus.FAILED);
    mChatMedia.mSendReceiveStatus = StatefulChatFeedItem.SendReceiveStatus.FAILED;
    bbo.a().a(new bca(mChatConversation.mId, true));
    mNotificationManager.a(SnapchatApplication.b(), false);
  }
  
  protected final Bundle b()
  {
    Bundle localBundle = super.b();
    localBundle.putString("type", ChatMedia.MediaType.IMAGE.toString());
    localBundle.putString("conversation_id", mChatConversation.mId);
    localBundle.putString("id", mSnapbryo.mClientId);
    localBundle.putString("recipient", mMediaMailingMetadata.e());
    localBundle.putByteArray("data", new CbcEncryptionAlgorithm(mChatMedia.E(), mChatMedia.F()).a(mData, "no dataId provided"));
    return localBundle;
  }
  
  protected final void b(alp paramalp)
  {
    mChatMedia.e(media_id);
    mSnapWomb.a(mSnapbryo, MediaMailingMetadata.UploadStatus.UPLOADED);
    paramalp = zm.a();
    ChatConversation localChatConversation = mChatConversation;
    ChatMedia localChatMedia = mChatMedia;
    localChatMedia.c(localChatConversation.b(localChatMedia.U()));
    Object localObject = new bjh().a(localChatMedia.C()).b(localChatMedia.E()).c(localChatMedia.F()).a(Integer.valueOf(localChatMedia.G())).b(Integer.valueOf(localChatMedia.H()));
    localObject = new bjj().a(bjj.a.MEDIA.toString()).a((bjh)localObject);
    bif localbif = (bif)aty.a(bji.a.CHAT_MESSAGE, mSender, mRecipients, mMessagingAuthToken);
    localbif.a((bjj)localObject);
    localbif.a(localChatMedia.d());
    localbif.b(Long.valueOf(localChatMedia.U()));
    localChatMedia.a(localbif.k());
    localChatMedia.a(localbif);
    paramalp.a(localChatConversation, localChatMedia);
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
    mChatConversation = akx.c().a(mMediaMailingMetadata.e());
    if (mChatConversation == null)
    {
      cancel(true);
      return;
    }
    mChatConversation.a(mChatMedia);
  }
}

/* Location:
 * Qualified Name:     qa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */