.class public final Labw;
.super Ltg;
.source "SourceFile"

# interfaces
.implements Lts$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labw$a;,
        Labw$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ltg;",
        "Lts$b",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mData:[B

.field private mDiscoverShareCacheWrapper:Lawr;

.field private final mDiscoverSharingUtils:Laev;

.field private final mNotificationManager:Lcom/snapchat/android/notification/AndroidNotificationManager;

.field private mSendSnapCallback:Lcom/snapchat/android/discover/api2/SendDSnapTask$c;

.field private final mSnapWomb:Lajn;

.field private mSnapbryo:Laim;


# direct methods
.method public constructor <init>(Laim;Lcom/snapchat/android/discover/api2/SendDSnapTask$c;)V
    .locals 7
    .param p1    # Laim;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Lcom/snapchat/android/discover/api2/SendDSnapTask$c;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 53
    invoke-static {}, Lawr$a;->a()Lawr;

    move-result-object v3

    invoke-static {}, Lajn;->a()Lajn;

    move-result-object v4

    invoke-static {}, Lcom/snapchat/android/notification/AndroidNotificationManager;->a()Lcom/snapchat/android/notification/AndroidNotificationManager;

    move-result-object v5

    new-instance v6, Laev;

    invoke-direct {v6}, Laev;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Labw;-><init>(Laim;Lcom/snapchat/android/discover/api2/SendDSnapTask$c;Lawr;Lajn;Lcom/snapchat/android/notification/AndroidNotificationManager;Laev;)V

    .line 55
    return-void
.end method

.method private constructor <init>(Laim;Lcom/snapchat/android/discover/api2/SendDSnapTask$c;Lawr;Lajn;Lcom/snapchat/android/notification/AndroidNotificationManager;Laev;)V
    .locals 1
    .param p1    # Laim;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Lcom/snapchat/android/discover/api2/SendDSnapTask$c;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p3    # Lawr;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p4    # Lajn;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p5    # Lcom/snapchat/android/notification/AndroidNotificationManager;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p6    # Laev;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 62
    invoke-direct {p0}, Ltg;-><init>()V

    .line 37
    const-string v0, "SendDSnapWithMediaTask"

    iput-object v0, p0, Labw;->TAG:Ljava/lang/String;

    .line 63
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    iput-object v0, p0, Labw;->mContext:Landroid/content/Context;

    .line 64
    iput-object p1, p0, Labw;->mSnapbryo:Laim;

    .line 65
    iput-object p3, p0, Labw;->mDiscoverShareCacheWrapper:Lawr;

    .line 66
    iput-object p2, p0, Labw;->mSendSnapCallback:Lcom/snapchat/android/discover/api2/SendDSnapTask$c;

    .line 67
    iput-object p4, p0, Labw;->mSnapWomb:Lajn;

    .line 68
    iput-object p5, p0, Labw;->mNotificationManager:Lcom/snapchat/android/notification/AndroidNotificationManager;

    .line 69
    iput-object p6, p0, Labw;->mDiscoverSharingUtils:Laev;

    .line 70
    const-class v0, Ljava/lang/String;

    invoke-virtual {p0, v0, p0}, Labw;->a(Ljava/lang/Class;Lts$b;)V

    .line 71
    return-void
.end method

.method static synthetic a(Labw;)Laim;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Labw;->mSnapbryo:Laim;

    return-object v0
.end method

.method static synthetic b(Labw;)[B
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Labw;->mData:[B

    return-object v0
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Luc;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 35
    invoke-virtual {p2}, Luc;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Labw;->mSnapWomb:Lajn;

    iget-object v1, p0, Labw;->mSnapbryo:Laim;

    sget-object v2, Lcom/snapchat/android/model/MediaMailingMetadata$UploadStatus;->UPLOADED:Lcom/snapchat/android/model/MediaMailingMetadata$UploadStatus;

    invoke-virtual {v0, v1, v2}, Lajn;->a(Laim;Lcom/snapchat/android/model/MediaMailingMetadata$UploadStatus;)V

    new-instance v0, Lcom/snapchat/android/discover/api2/SendDSnapTask;

    iget-object v1, p0, Labw;->mSnapbryo:Laim;

    iget-object v2, p0, Labw;->mSendSnapCallback:Lcom/snapchat/android/discover/api2/SendDSnapTask$c;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-direct {v0, v1, v2, v3}, Lcom/snapchat/android/discover/api2/SendDSnapTask;-><init>(Laim;Lcom/snapchat/android/discover/api2/SendDSnapTask$c;Ljava/util/HashMap;)V

    invoke-virtual {v0}, Lcom/snapchat/android/discover/api2/SendDSnapTask;->f()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Labw;->mSendSnapCallback:Lcom/snapchat/android/discover/api2/SendDSnapTask$c;

    iget-object v1, p0, Labw;->mSnapbryo:Laim;

    invoke-interface {v0, v1}, Lcom/snapchat/android/discover/api2/SendDSnapTask$c;->d(Laim;)V

    iget-object v0, p0, Labw;->mNotificationManager:Lcom/snapchat/android/notification/AndroidNotificationManager;

    iget-object v1, p0, Labw;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v3}, Lcom/snapchat/android/notification/AndroidNotificationManager;->a(Landroid/content/Context;Z)V

    iget-object v0, p0, Labw;->mUser:Lajv;

    if-eqz v0, :cond_0

    iget-object v0, p0, Labw;->mUser:Lajv;

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

    invoke-virtual {v0, v1}, Lajv;->a([Lcom/snapchat/android/database/table/DbTable$DatabaseTable;)V

    goto :goto_0
.end method

.method public final synthetic b()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 35
    new-instance v0, Labw$a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Labw$a;-><init>(Labw;Ljava/lang/String;)V

    return-object v0
.end method

.method protected final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    const-string v0, "/ph/upload"

    return-object v0
.end method

.method public final i()Luc;
    .locals 4
    .annotation build Lcaq;
    .end annotation

    .annotation build Lcgb;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 127
    iget-object v0, p0, Labw;->mDiscoverShareCacheWrapper:Lawr;

    iget-object v1, p0, Labw;->mSnapbryo:Laim;

    invoke-virtual {v0, v1}, Lawr;->a(Laim;)[B

    move-result-object v0

    iput-object v0, p0, Labw;->mData:[B

    .line 128
    iget-object v0, p0, Labw;->mData:[B

    if-nez v0, :cond_0

    .line 129
    invoke-static {}, Lajn;->a()Lajn;

    move-result-object v0

    iget-object v1, p0, Labw;->mSnapbryo:Laim;

    invoke-virtual {v0, v1}, Lajn;->a(Laim;)V

    .line 130
    const-string v0, "SendDSnapWithMediaTask"

    const-string v1, "Snap media is no longer accessible :("

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 131
    iget-object v0, p0, Labw;->mSnapbryo:Laim;

    iget-object v0, v0, Lcom/snapchat/android/model/Mediabryo;->mClientId:Ljava/lang/String;

    invoke-static {v3, v0}, Laev;->a(ZLjava/lang/String;)V

    .line 132
    new-instance v0, Luc$a;

    invoke-virtual {p0}, Labw;->n_()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lbfp;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Luc$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Snap media is no longer accessible"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Luc$a;->mCaughtException:Ljava/lang/Exception;

    invoke-virtual {v0}, Luc$a;->a()Luc;

    move-result-object v0

    .line 137
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Ltg;->i()Luc;

    move-result-object v0

    goto :goto_0
.end method
