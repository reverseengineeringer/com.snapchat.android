.class public final Lpj;
.super Lph;
.source "SourceFile"


# static fields
.field private static final TASK_NAME:Ljava/lang/String; = "UploadChatMediaTask"


# instance fields
.field private mChatConversation:Lcom/snapchat/android/model/chat/ChatConversation;

.field private mChatMedia:Lcom/snapchat/android/model/chat/ChatMedia;

.field private mNotificationManager:Lcom/snapchat/android/notification/AndroidNotificationManager;

.field private final mSnapWomb:Lajn;


# direct methods
.method public constructor <init>(Laim;)V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lph;-><init>(Laim;)V

    .line 26
    invoke-static {}, Lajn;->a()Lajn;

    move-result-object v0

    iput-object v0, p0, Lpj;->mSnapWomb:Lajn;

    .line 34
    invoke-static {}, Lcom/snapchat/android/notification/AndroidNotificationManager;->a()Lcom/snapchat/android/notification/AndroidNotificationManager;

    move-result-object v0

    iput-object v0, p0, Lpj;->mNotificationManager:Lcom/snapchat/android/notification/AndroidNotificationManager;

    .line 35
    return-void
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    const-string v0, "/bq/upload_chat_media"

    return-object v0
.end method

.method protected final a(Ljava/lang/String;I)V
    .locals 4

    .prologue
    .line 81
    iget-object v0, p0, Lpj;->mSnapWomb:Lajn;

    iget-object v1, p0, Lpj;->mSnapbryo:Laim;

    sget-object v2, Lcom/snapchat/android/model/MediaMailingMetadata$UploadStatus;->FAILED:Lcom/snapchat/android/model/MediaMailingMetadata$UploadStatus;

    invoke-virtual {v0, v1, v2}, Lajn;->a(Laim;Lcom/snapchat/android/model/MediaMailingMetadata$UploadStatus;)V

    .line 82
    iget-object v0, p0, Lpj;->mChatMedia:Lcom/snapchat/android/model/chat/ChatMedia;

    sget-object v1, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->FAILED:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    iput-object v1, v0, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mSendReceiveStatus:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    .line 83
    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbaz;

    iget-object v2, p0, Lpj;->mChatConversation:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-object v2, v2, Lcom/snapchat/android/model/chat/ChatConversation;->mId:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lbaz;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 85
    iget-object v0, p0, Lpj;->mNotificationManager:Lcom/snapchat/android/notification/AndroidNotificationManager;

    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/notification/AndroidNotificationManager;->a(Landroid/content/Context;Z)V

    .line 86
    return-void
.end method

.method protected final b()Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 60
    invoke-super {p0}, Lph;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 61
    const-string v1, "type"

    sget-object v2, Lcom/snapchat/android/model/chat/ChatMedia$MediaType;->IMAGE:Lcom/snapchat/android/model/chat/ChatMedia$MediaType;

    invoke-virtual {v2}, Lcom/snapchat/android/model/chat/ChatMedia$MediaType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string v1, "conversation_id"

    iget-object v2, p0, Lpj;->mChatConversation:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-object v2, v2, Lcom/snapchat/android/model/chat/ChatConversation;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string v1, "id"

    iget-object v2, p0, Lpj;->mSnapbryo:Laim;

    iget-object v2, v2, Lcom/snapchat/android/model/Mediabryo;->mClientId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string v1, "recipient"

    iget-object v2, p0, Lpj;->mMediaMailingMetadata:Lcom/snapchat/android/model/MediaMailingMetadata;

    invoke-virtual {v2}, Lcom/snapchat/android/model/MediaMailingMetadata;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    new-instance v1, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;

    iget-object v2, p0, Lpj;->mChatMedia:Lcom/snapchat/android/model/chat/ChatMedia;

    invoke-virtual {v2}, Lcom/snapchat/android/model/chat/ChatMedia;->D()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lpj;->mChatMedia:Lcom/snapchat/android/model/chat/ChatMedia;

    invoke-virtual {v3}, Lcom/snapchat/android/model/chat/ChatMedia;->E()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lpj;->mData:[B

    const-string v3, "no dataId provided"

    invoke-virtual {v1, v2, v3}, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;->a([BLjava/lang/String;)[B

    move-result-object v1

    .line 66
    const-string v2, "data"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 67
    return-object v0
.end method

.method protected final b(Laku;)V
    .locals 8

    .prologue
    .line 72
    iget-object v0, p0, Lpj;->mChatMedia:Lcom/snapchat/android/model/chat/ChatMedia;

    iget-object v1, p1, Laku;->media_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/chat/ChatMedia;->e(Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lpj;->mSnapWomb:Lajn;

    iget-object v1, p0, Lpj;->mSnapbryo:Laim;

    sget-object v2, Lcom/snapchat/android/model/MediaMailingMetadata$UploadStatus;->UPLOADED:Lcom/snapchat/android/model/MediaMailingMetadata$UploadStatus;

    invoke-virtual {v0, v1, v2}, Lajn;->a(Laim;Lcom/snapchat/android/model/MediaMailingMetadata$UploadStatus;)V

    .line 74
    invoke-static {}, Lyq;->a()Lyq;

    move-result-object v1

    iget-object v2, p0, Lpj;->mChatConversation:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-object v3, p0, Lpj;->mChatMedia:Lcom/snapchat/android/model/chat/ChatMedia;

    invoke-virtual {v3}, Lcom/snapchat/android/model/chat/ChatMedia;->W()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/snapchat/android/model/chat/ChatConversation;->b(J)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/snapchat/android/model/chat/ChatMedia;->c(J)V

    new-instance v0, Lbih;

    invoke-direct {v0}, Lbih;-><init>()V

    invoke-virtual {v3}, Lcom/snapchat/android/model/chat/ChatMedia;->B()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lbih;->a(Ljava/lang/String;)Lbih;

    move-result-object v0

    invoke-virtual {v3}, Lcom/snapchat/android/model/chat/ChatMedia;->D()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lbih;->b(Ljava/lang/String;)Lbih;

    move-result-object v0

    invoke-virtual {v3}, Lcom/snapchat/android/model/chat/ChatMedia;->E()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lbih;->c(Ljava/lang/String;)Lbih;

    move-result-object v0

    invoke-virtual {v3}, Lcom/snapchat/android/model/chat/ChatMedia;->F()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Lbih;->a(Ljava/lang/Integer;)Lbih;

    move-result-object v0

    invoke-virtual {v3}, Lcom/snapchat/android/model/chat/ChatMedia;->G()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Lbih;->b(Ljava/lang/Integer;)Lbih;

    move-result-object v0

    new-instance v4, Lbij;

    invoke-direct {v4}, Lbij;-><init>()V

    sget-object v5, Lbij$a;->MEDIA:Lbij$a;

    invoke-virtual {v5}, Lbij$a;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lbij;->a(Ljava/lang/String;)Lbij;

    move-result-object v4

    invoke-virtual {v4, v0}, Lbij;->a(Lbih;)Lbij;

    move-result-object v4

    sget-object v0, Lbii$a;->CHAT_MESSAGE:Lbii$a;

    iget-object v5, v3, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mSender:Ljava/lang/String;

    iget-object v6, v3, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mRecipients:Ljava/util/List;

    iget-object v7, v2, Lcom/snapchat/android/model/chat/ChatConversation;->mMessagingAuthToken:Lbix;

    invoke-static {v0, v5, v6, v7}, Lasz;->a(Lbii$a;Ljava/lang/String;Ljava/util/List;Lbix;)Lbhl;

    move-result-object v0

    check-cast v0, Lbhf;

    invoke-virtual {v0, v4}, Lbhf;->a(Lbij;)V

    invoke-virtual {v3}, Lcom/snapchat/android/model/chat/ChatMedia;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lbhf;->a(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/snapchat/android/model/chat/ChatMedia;->W()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Lbhf;->b(Ljava/lang/Long;)V

    invoke-virtual {v0}, Lbhf;->k()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/snapchat/android/model/chat/ChatMedia;->a(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lcom/snapchat/android/model/chat/ChatMedia;->a(Lbhf;)V

    invoke-virtual {v1, v2, v3}, Lyq;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lakb;)V

    .line 76
    iget-object v0, p0, Lpj;->mNotificationManager:Lcom/snapchat/android/notification/AndroidNotificationManager;

    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/notification/AndroidNotificationManager;->a(Landroid/content/Context;Z)V

    .line 77
    return-void
.end method

.method protected final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    const-string v0, "UploadChatMediaTask"

    return-object v0
.end method

.method protected final onPreExecute()V
    .locals 3

    .prologue
    .line 39
    invoke-super {p0}, Lph;->onPreExecute()V

    .line 40
    new-instance v0, Lcom/snapchat/android/model/chat/ChatMedia;

    iget-object v1, p0, Lpj;->mSnapbryo:Laim;

    invoke-direct {v0, v1}, Lcom/snapchat/android/model/chat/ChatMedia;-><init>(Laim;)V

    iput-object v0, p0, Lpj;->mChatMedia:Lcom/snapchat/android/model/chat/ChatMedia;

    .line 41
    iget-object v0, p0, Lpj;->mChatMedia:Lcom/snapchat/android/model/chat/ChatMedia;

    sget-object v1, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->SENDING:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    iput-object v1, v0, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;->mSendReceiveStatus:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    .line 42
    invoke-static {}, Lakc;->b()Lakc;

    move-result-object v0

    iget-object v1, p0, Lpj;->mMediaMailingMetadata:Lcom/snapchat/android/model/MediaMailingMetadata;

    invoke-virtual {v1}, Lcom/snapchat/android/model/MediaMailingMetadata;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lakc;->a(Ljava/lang/String;)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v0

    iput-object v0, p0, Lpj;->mChatConversation:Lcom/snapchat/android/model/chat/ChatConversation;

    .line 44
    iget-object v0, p0, Lpj;->mChatConversation:Lcom/snapchat/android/model/chat/ChatConversation;

    if-nez v0, :cond_0

    .line 45
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lpj;->cancel(Z)Z

    .line 51
    :goto_0
    return-void

    .line 48
    :cond_0
    iget-object v0, p0, Lpj;->mChatConversation:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-object v1, p0, Lpj;->mChatMedia:Lcom/snapchat/android/model/chat/ChatMedia;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/chat/ChatConversation;->a(Lcom/snapchat/android/model/chat/ChatMedia;)V

    .line 49
    invoke-static {}, Lyn;->a()Lyn;

    move-result-object v0

    iget-object v1, p0, Lpj;->mChatConversation:Lcom/snapchat/android/model/chat/ChatConversation;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lyn;->a(Lcom/snapchat/android/model/chat/ChatConversation;Z)V

    goto :goto_0
.end method
