.class public final Lop;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lop$a;
    }
.end annotation


# static fields
.field public static final BROADCAST_SNAP_URL_PREFIX:Ljava/lang/String; = "https://storage.googleapis.com/broadcasts/"

.field public static final DEFAULT_NUM_TO_LOAD:I = 0x3

.field private static final TAG:Ljava/lang/String; = "LoadSnapMediaTask"


# instance fields
.field private final mCallback:Lals$a;

.field private final mMediaDownloader:Lals;

.field private final mNumExecutingLoadSnapMediaTask:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mReachability:Ljava/lang/String;

.field private final mShouldLogFirstSnap:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mSnap:Laje;

.field private mStartMillis:J

.field private mUser:Lajv;

.field private final mUserProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lajv;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Laje;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 65
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sget-object v2, Lajv;->UNSAFE_USER_PROVIDER:Ljavax/inject/Provider;

    invoke-direct {p0, p1, v0, v1, v2}, Lop;-><init>(Laje;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicInteger;Ljavax/inject/Provider;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Laje;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicInteger;Ljavax/inject/Provider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laje;",
            "Ljava/util/concurrent/atomic/AtomicBoolean;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            "Ljavax/inject/Provider",
            "<",
            "Lajv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lals;

    invoke-direct {v0}, Lals;-><init>()V

    iput-object v0, p0, Lop;->mMediaDownloader:Lals;

    .line 232
    new-instance v0, Lop$1;

    invoke-direct {v0, p0}, Lop$1;-><init>(Lop;)V

    iput-object v0, p0, Lop;->mCallback:Lals$a;

    .line 78
    iput-object p1, p0, Lop;->mSnap:Laje;

    .line 79
    iput-object p3, p0, Lop;->mNumExecutingLoadSnapMediaTask:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 80
    iput-object p2, p0, Lop;->mShouldLogFirstSnap:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 81
    iput-object p4, p0, Lop;->mUserProvider:Ljavax/inject/Provider;

    .line 82
    return-void
.end method

.method private static a(Laje;)Z
    .locals 2

    .prologue
    .line 211
    instance-of v0, p0, Lain;

    if-eqz v0, :cond_0

    .line 212
    check-cast p0, Lain;

    iget-object v0, p0, Lain;->mMediaUrl:Ljava/lang/String;

    .line 213
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https://storage.googleapis.com/broadcasts/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    const/4 v0, 0x1

    .line 218
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 9
    .annotation build Lccm;
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 103
    iget-object v0, p0, Lop;->mUserProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajv;

    iput-object v0, p0, Lop;->mUser:Lajv;

    .line 104
    iget-object v0, p0, Lop;->mUser:Lajv;

    if-nez v0, :cond_0

    .line 105
    invoke-virtual {p0, v3, v4, v3}, Lop;->a(Luc;ZLjava/lang/Exception;)V

    .line 135
    :goto_0
    return-void

    .line 109
    :cond_0
    iget-object v0, p0, Lop;->mSnap:Laje;

    invoke-virtual {v0}, Laje;->m()V

    .line 110
    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/LoadSnapMediaEvent;

    sget-object v2, Lcom/snapchat/android/util/eventbus/LoadSnapMediaEvent$LoadSnapMediaEventType;->INITIATED:Lcom/snapchat/android/util/eventbus/LoadSnapMediaEvent$LoadSnapMediaEventType;

    invoke-direct {v1, v2}, Lcom/snapchat/android/util/eventbus/LoadSnapMediaEvent;-><init>(Lcom/snapchat/android/util/eventbus/LoadSnapMediaEvent$LoadSnapMediaEventType;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 111
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lop;->mStartMillis:J

    .line 112
    invoke-static {}, Lbfp;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lop;->mReachability:Ljava/lang/String;

    .line 114
    iget-object v0, p0, Lop;->mShouldLogFirstSnap:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    iget-object v0, p0, Lop;->mNumExecutingLoadSnapMediaTask:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 120
    :cond_1
    :try_start_0
    iget-object v0, p0, Lop;->mSnap:Laje;

    invoke-static {v0}, Lop;->a(Laje;)Z

    move-result v1

    if-eqz v1, :cond_2

    check-cast v0, Lain;

    iget-object v2, v0, Lain;->mMediaUrl:Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 128
    :goto_1
    iget-object v0, p0, Lop;->mSnap:Laje;

    invoke-static {v0}, Lop;->a(Laje;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 130
    :goto_2
    iget-object v0, p0, Lop;->mSnap:Laje;

    invoke-virtual {v0}, Laje;->ai()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 131
    iget-object v0, p0, Lop;->mMediaDownloader:Lals;

    iget-object v1, p0, Lop;->mSnap:Laje;

    iget-object v8, p0, Lop;->mCallback:Lals$a;

    sget-object v4, Lawq;->SNAP_RECEIVED_VIDEO_CACHE:Lawp;

    const-string v5, "FEED"

    sget-object v6, Lcom/snapchat/android/networkmanager/DownloadPriority;->HIGH:Lcom/snapchat/android/networkmanager/DownloadPriority;

    sget-object v7, Lcom/snapchat/android/networkmanager/DownloadPriority;->BACKGROUND_HIGHEST:Lcom/snapchat/android/networkmanager/DownloadPriority;

    invoke-virtual/range {v0 .. v8}, Lals;->a(Laje;Ljava/lang/String;Ljava/lang/Object;Lawp;Ljava/lang/String;Lcom/snapchat/android/networkmanager/DownloadPriority;Lcom/snapchat/android/networkmanager/DownloadPriority;Lals$a;)V

    goto :goto_0

    .line 120
    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/ph/blob"

    invoke-static {v1}, Lazm;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/ph/blob"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    goto :goto_1

    .line 122
    :catch_0
    move-exception v0

    .line 123
    :goto_3
    const-string v1, "LoadSnapMediaTask"

    invoke-static {v1, v0}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 124
    invoke-virtual {p0, v3, v4, v3}, Lop;->a(Luc;ZLjava/lang/Exception;)V

    goto :goto_0

    .line 128
    :cond_3
    new-instance v3, Lop$a;

    invoke-direct {v3, p0}, Lop$a;-><init>(Lop;)V

    invoke-virtual {v0}, Laje;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lop$a;->id:Ljava/lang/String;

    goto :goto_2

    .line 133
    :cond_4
    iget-object v0, p0, Lop;->mMediaDownloader:Lals;

    iget-object v1, p0, Lop;->mSnap:Laje;

    iget-object v8, p0, Lop;->mCallback:Lals$a;

    sget-object v4, Lawq;->SNAP_RECEIVED_IMAGE_CACHE:Lawp;

    const-string v5, "FEED"

    sget-object v6, Lcom/snapchat/android/networkmanager/DownloadPriority;->HIGH:Lcom/snapchat/android/networkmanager/DownloadPriority;

    sget-object v7, Lcom/snapchat/android/networkmanager/DownloadPriority;->BACKGROUND_HIGHEST:Lcom/snapchat/android/networkmanager/DownloadPriority;

    invoke-virtual/range {v0 .. v8}, Lals;->a(Laje;Ljava/lang/String;Ljava/lang/Object;Lawp;Ljava/lang/String;Lcom/snapchat/android/networkmanager/DownloadPriority;Lcom/snapchat/android/networkmanager/DownloadPriority;Lals$a;)V

    goto/16 :goto_0

    .line 122
    :catch_1
    move-exception v0

    goto :goto_3
.end method

.method protected final a(Luc;ZLjava/lang/Exception;)V
    .locals 9
    .annotation build Lccm;
    .end annotation

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 143
    invoke-static {}, Lbgp;->a()V

    .line 145
    if-eqz p1, :cond_1

    iget v0, p1, Luc;->mResponseCode:I

    const/16 v1, 0x19a

    if-ne v0, v1, :cond_1

    .line 148
    const-string v0, "LoadSnapMediaTask"

    const-string v1, "SNAP-LOG: MARKING snap from %s as viewed (HTTP-GONE) (%s)"

    new-array v2, v8, [Ljava/lang/Object;

    iget-object v3, p0, Lop;->mSnap:Laje;

    invoke-virtual {v3}, Laje;->j()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    iget-object v3, p0, Lop;->mSnap:Laje;

    invoke-virtual {v3}, Laje;->d()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 150
    iget-object v0, p0, Lop;->mSnap:Laje;

    invoke-virtual {v0}, Laje;->o()V

    .line 151
    new-instance v0, Lcom/snapchat/android/analytics/framework/ErrorMetric;

    const-string v1, "SNAP_MEDIA_DOWNLOAD_410_HTTP_GONE"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/ErrorMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/ErrorMetric;->d()V

    .line 187
    :cond_0
    :goto_0
    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/LoadSnapMediaEvent;

    sget-object v2, Lcom/snapchat/android/util/eventbus/LoadSnapMediaEvent$LoadSnapMediaEventType;->ENDED:Lcom/snapchat/android/util/eventbus/LoadSnapMediaEvent$LoadSnapMediaEventType;

    invoke-direct {v1, v2}, Lcom/snapchat/android/util/eventbus/LoadSnapMediaEvent;-><init>(Lcom/snapchat/android/util/eventbus/LoadSnapMediaEvent$LoadSnapMediaEventType;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 188
    return-void

    .line 153
    :cond_1
    instance-of v0, p3, Laws;

    if-eqz v0, :cond_3

    .line 154
    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;

    sget-object v2, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;->TOAST:Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;

    const v3, 0x7f0c00cc

    invoke-direct {v1, v2, v3}, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;-><init>(Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;I)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 155
    iget-object v0, p0, Lop;->mSnap:Laje;

    invoke-virtual {v0}, Laje;->z()Z

    move-result v0

    if-nez v0, :cond_0

    .line 182
    :cond_2
    iget-object v0, p0, Lop;->mSnap:Laje;

    invoke-virtual {v0}, Laje;->l()V

    goto :goto_0

    .line 161
    :cond_3
    if-eqz p2, :cond_6

    iget-object v0, p0, Lop;->mSnap:Laje;

    invoke-virtual {v0}, Laje;->z()Z

    move-result v0

    if-nez v0, :cond_6

    .line 162
    iget-object v0, p0, Lop;->mShouldLogFirstSnap:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 163
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "FIRST_SNAP_DOWNLOAD"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v1, "num_executing_snap_requests"

    iget-object v2, p0, Lop;->mNumExecutingLoadSnapMediaTask:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v6}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "reachability"

    iget-object v2, p0, Lop;->mReachability:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lop;->mStartMillis:J

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(J)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Z)V

    .line 169
    :cond_4
    iget-object v0, p0, Lop;->mSnap:Laje;

    invoke-virtual {v0}, Laje;->n()V

    .line 170
    iget-object v0, p0, Lop;->mSnap:Laje;

    invoke-virtual {v0}, Laje;->ai()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 171
    iget-object v0, p0, Lop;->mUser:Lajv;

    new-array v1, v8, [Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    sget-object v2, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->CONVERSATION:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    aput-object v2, v1, v6

    sget-object v2, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->RECEIVED_SNAP_VIDEO_FILES:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    aput-object v2, v1, v7

    invoke-virtual {v0, v1}, Lajv;->a([Lcom/snapchat/android/database/table/DbTable$DatabaseTable;)V

    goto/16 :goto_0

    .line 174
    :cond_5
    iget-object v0, p0, Lop;->mUser:Lajv;

    new-array v1, v8, [Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    sget-object v2, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->CONVERSATION:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    aput-object v2, v1, v6

    sget-object v2, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->RECEIVED_SNAP_IMAGE_FILES:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    aput-object v2, v1, v7

    invoke-virtual {v0, v1}, Lajv;->a([Lcom/snapchat/android/database/table/DbTable$DatabaseTable;)V

    goto/16 :goto_0

    .line 177
    :cond_6
    if-nez p2, :cond_0

    .line 178
    iget-object v0, p0, Lop;->mSnap:Laje;

    invoke-virtual {v0}, Laje;->z()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 180
    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;

    sget-object v2, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;->TOAST:Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;

    const v3, 0x7f0c0272

    invoke-direct {v1, v2, v3}, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;-><init>(Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;I)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method
