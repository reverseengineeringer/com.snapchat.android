.class public final Lacw;
.super Ltw;
.source "SourceFile"

# interfaces
.implements Lui$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lacw$a;,
        Lacw$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ltw;",
        "Lui$b",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mData:[B

.field private mDiscoverShareCacheWrapper:Laxp;

.field private final mDiscoverSharingUtils:Lafv;

.field private final mNotificationManager:Lcom/snapchat/android/notification/AndroidNotificationManager;

.field private mSendSnapCallback:Lcom/snapchat/android/discover/api2/SendDSnapTask$c;

.field private final mSnapWomb:Laki;

.field private mSnapbryo:Laji;


# direct methods
.method public constructor <init>(Laji;Lcom/snapchat/android/discover/api2/SendDSnapTask$c;)V
    .locals 7
    .param p1    # Laji;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Lcom/snapchat/android/discover/api2/SendDSnapTask$c;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 53
    invoke-static {}, Laxp$a;->a()Laxp;

    move-result-object v3

    invoke-static {}, Laki;->a()Laki;

    move-result-object v4

    invoke-static {}, Lcom/snapchat/android/notification/AndroidNotificationManager;->a()Lcom/snapchat/android/notification/AndroidNotificationManager;

    move-result-object v5

    new-instance v6, Lafv;

    invoke-direct {v6}, Lafv;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lacw;-><init>(Laji;Lcom/snapchat/android/discover/api2/SendDSnapTask$c;Laxp;Laki;Lcom/snapchat/android/notification/AndroidNotificationManager;Lafv;)V

    .line 55
    return-void
.end method

.method private constructor <init>(Laji;Lcom/snapchat/android/discover/api2/SendDSnapTask$c;Laxp;Laki;Lcom/snapchat/android/notification/AndroidNotificationManager;Lafv;)V
    .locals 1
    .param p1    # Laji;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Lcom/snapchat/android/discover/api2/SendDSnapTask$c;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p3    # Laxp;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p4    # Laki;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p5    # Lcom/snapchat/android/notification/AndroidNotificationManager;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p6    # Lafv;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 62
    invoke-direct {p0}, Ltw;-><init>()V

    .line 37
    const-string v0, "SendDSnapWithMediaTask"

    iput-object v0, p0, Lacw;->TAG:Ljava/lang/String;

    .line 63
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    iput-object v0, p0, Lacw;->mContext:Landroid/content/Context;

    .line 64
    iput-object p1, p0, Lacw;->mSnapbryo:Laji;

    .line 65
    iput-object p3, p0, Lacw;->mDiscoverShareCacheWrapper:Laxp;

    .line 66
    iput-object p2, p0, Lacw;->mSendSnapCallback:Lcom/snapchat/android/discover/api2/SendDSnapTask$c;

    .line 67
    iput-object p4, p0, Lacw;->mSnapWomb:Laki;

    .line 68
    iput-object p5, p0, Lacw;->mNotificationManager:Lcom/snapchat/android/notification/AndroidNotificationManager;

    .line 69
    iput-object p6, p0, Lacw;->mDiscoverSharingUtils:Lafv;

    .line 70
    const-class v0, Ljava/lang/String;

    invoke-virtual {p0, v0, p0}, Lacw;->registerCallback(Ljava/lang/Class;Lui$b;)V

    .line 71
    return-void
.end method

.method static synthetic a(Lacw;)Laji;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lacw;->mSnapbryo:Laji;

    return-object v0
.end method

.method static synthetic b(Lacw;)[B
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lacw;->mData:[B

    return-object v0
.end method


# virtual methods
.method public final executeSynchronously()Lus;
    .locals 3
    .annotation build Lcbr;
    .end annotation

    .annotation build Lchc;
    .end annotation

    .prologue
    .line 127
    iget-object v0, p0, Lacw;->mDiscoverShareCacheWrapper:Laxp;

    iget-object v1, p0, Lacw;->mSnapbryo:Laji;

    invoke-virtual {v0, v1}, Laxp;->a(Laji;)[B

    move-result-object v0

    iput-object v0, p0, Lacw;->mData:[B

    .line 128
    iget-object v0, p0, Lacw;->mData:[B

    if-nez v0, :cond_0

    .line 129
    invoke-static {}, Laki;->a()Laki;

    move-result-object v0

    iget-object v1, p0, Lacw;->mSnapbryo:Laji;

    invoke-virtual {v0, v1}, Laki;->a(Laji;)V

    .line 130
    const/4 v0, 0x0

    iget-object v1, p0, Lacw;->mSnapbryo:Laji;

    iget-object v1, v1, Lcom/snapchat/android/model/Mediabryo;->mClientId:Ljava/lang/String;

    invoke-static {v0, v1}, Lafv;->a(ZLjava/lang/String;)V

    .line 132
    new-instance v0, Lus$a;

    invoke-virtual {p0}, Lacw;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lbgp;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lus$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Snap media is no longer accessible"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lus$a;->mCaughtException:Ljava/lang/Exception;

    invoke-virtual {v0}, Lus$a;->a()Lus;

    move-result-object v0

    .line 137
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Ltw;->executeSynchronously()Lus;

    move-result-object v0

    goto :goto_0
.end method

.method protected final getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    const-string v0, "/ph/upload"

    return-object v0
.end method

.method public final synthetic getRequestPayload()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 35
    new-instance v0, Lacw$a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lacw$a;-><init>(Lacw;Ljava/lang/String;)V

    return-object v0
.end method

.method public final synthetic onJsonResult(Ljava/lang/Object;Lus;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 35
    invoke-virtual {p2}, Lus;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lacw;->mSnapWomb:Laki;

    iget-object v1, p0, Lacw;->mSnapbryo:Laji;

    sget-object v2, Lcom/snapchat/android/model/MediaMailingMetadata$UploadStatus;->UPLOADED:Lcom/snapchat/android/model/MediaMailingMetadata$UploadStatus;

    invoke-virtual {v0, v1, v2}, Laki;->a(Laji;Lcom/snapchat/android/model/MediaMailingMetadata$UploadStatus;)V

    new-instance v0, Lcom/snapchat/android/discover/api2/SendDSnapTask;

    iget-object v1, p0, Lacw;->mSnapbryo:Laji;

    iget-object v2, p0, Lacw;->mSendSnapCallback:Lcom/snapchat/android/discover/api2/SendDSnapTask$c;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-direct {v0, v1, v2, v3}, Lcom/snapchat/android/discover/api2/SendDSnapTask;-><init>(Laji;Lcom/snapchat/android/discover/api2/SendDSnapTask$c;Ljava/util/HashMap;)V

    invoke-virtual {v0}, Lcom/snapchat/android/discover/api2/SendDSnapTask;->execute()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lacw;->mSendSnapCallback:Lcom/snapchat/android/discover/api2/SendDSnapTask$c;

    iget-object v1, p0, Lacw;->mSnapbryo:Laji;

    invoke-interface {v0, v1}, Lcom/snapchat/android/discover/api2/SendDSnapTask$c;->d(Laji;)V

    iget-object v0, p0, Lacw;->mNotificationManager:Lcom/snapchat/android/notification/AndroidNotificationManager;

    iget-object v1, p0, Lacw;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v3}, Lcom/snapchat/android/notification/AndroidNotificationManager;->a(Landroid/content/Context;Z)V

    iget-object v0, p0, Lacw;->mUser:Lakp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lacw;->mUser:Lakp;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    sget-object v2, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->DISCOVER_SHARE_FILES:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    aput-object v2, v1, v3

    const/4 v2, 0x1

    sget-object v3, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->FAILED_SEND_DSNAPBRYOS:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->CONVERSATION:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lakp;->a([Lcom/snapchat/android/database/table/DbTable$DatabaseTable;)V

    goto :goto_0
.end method
