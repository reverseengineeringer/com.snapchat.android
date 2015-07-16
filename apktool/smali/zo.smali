.class public final Lzo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/discover/api2/SendDSnapTask$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzo$1;
    }
.end annotation


# instance fields
.field private final a:Laki;

.field private final b:Laya;

.field private final c:Laxp;

.field private final d:Lafv;

.field private final e:Lakr;

.field private final f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    .line 48
    invoke-static {}, Laki;->a()Laki;

    move-result-object v1

    invoke-static {}, Laya;->a()Laya;

    move-result-object v2

    invoke-static {}, Laxp$a;->a()Laxp;

    move-result-object v3

    new-instance v4, Lafv;

    invoke-direct {v4}, Lafv;-><init>()V

    invoke-static {}, Lakr;->a()Lakr;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lzo;-><init>(Laki;Laya;Laxp;Lafv;Lakr;)V

    .line 50
    return-void
.end method

.method private constructor <init>(Laki;Laya;Laxp;Lafv;Lakr;)V
    .locals 1
    .param p1    # Laki;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Laya;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p3    # Laxp;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p4    # Lafv;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p5    # Lakr;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-string v0, "SendDSnapController"

    iput-object v0, p0, Lzo;->f:Ljava/lang/String;

    .line 57
    iput-object p1, p0, Lzo;->a:Laki;

    .line 58
    iput-object p2, p0, Lzo;->b:Laya;

    .line 59
    iput-object p3, p0, Lzo;->c:Laxp;

    .line 60
    iput-object p4, p0, Lzo;->d:Lafv;

    .line 61
    iput-object p5, p0, Lzo;->e:Lakr;

    .line 62
    return-void
.end method


# virtual methods
.method public final a(Laji;)V
    .locals 3

    .prologue
    .line 65
    iget-object v0, p1, Lcom/snapchat/android/model/Mediabryo;->mMediaMailingMetadata:Lcom/snapchat/android/model/MediaMailingMetadata;

    sget-object v1, Lzo$1;->a:[I

    iget-object v0, v0, Lcom/snapchat/android/model/MediaMailingMetadata;->mUploadStatus:Lcom/snapchat/android/model/MediaMailingMetadata$UploadStatus;

    invoke-virtual {v0}, Lcom/snapchat/android/model/MediaMailingMetadata$UploadStatus;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/snapchat/android/model/MediaMailingMetadata$SendStatus;->FAILED:Lcom/snapchat/android/model/MediaMailingMetadata$SendStatus;

    .line 66
    :goto_0
    iget-object v1, p0, Lzo;->a:Laki;

    invoke-virtual {v1, p1, v0}, Laki;->a(Laji;Lcom/snapchat/android/model/MediaMailingMetadata$SendStatus;)V

    .line 67
    iget-object v0, p1, Lcom/snapchat/android/model/Mediabryo;->mMediaMailingMetadata:Lcom/snapchat/android/model/MediaMailingMetadata;

    sget-object v1, Lzo$1;->a:[I

    iget-object v2, v0, Lcom/snapchat/android/model/MediaMailingMetadata;->mUploadStatus:Lcom/snapchat/android/model/MediaMailingMetadata$UploadStatus;

    invoke-virtual {v2}, Lcom/snapchat/android/model/MediaMailingMetadata$UploadStatus;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    .line 68
    :goto_1
    return-void

    .line 65
    :pswitch_0
    sget-object v0, Lcom/snapchat/android/model/MediaMailingMetadata$SendStatus;->SENDING:Lcom/snapchat/android/model/MediaMailingMetadata$SendStatus;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/snapchat/android/model/MediaMailingMetadata$SendStatus;->SENDING_ON_UPLOAD:Lcom/snapchat/android/model/MediaMailingMetadata$SendStatus;

    goto :goto_0

    .line 67
    :pswitch_2
    new-instance v0, Lcom/snapchat/android/discover/api2/SendDSnapTask;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-direct {v0, p1, p0, v1}, Lcom/snapchat/android/discover/api2/SendDSnapTask;-><init>(Laji;Lcom/snapchat/android/discover/api2/SendDSnapTask$c;Ljava/util/HashMap;)V

    invoke-virtual {v0}, Lcom/snapchat/android/discover/api2/SendDSnapTask;->execute()V

    goto :goto_1

    :pswitch_3
    new-instance v0, Lacw;

    invoke-direct {v0, p1, p0}, Lacw;-><init>(Laji;Lcom/snapchat/android/discover/api2/SendDSnapTask$c;)V

    invoke-virtual {v0}, Lacw;->execute()V

    goto :goto_1

    :pswitch_4
    invoke-virtual {v0}, Lcom/snapchat/android/model/MediaMailingMetadata;->c()V

    goto :goto_1

    .line 65
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 67
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public final a(Lalc;Lcom/snapchat/android/model/chat/ChatConversation;)V
    .locals 4

    .prologue
    const v3, 0x7f0c012c

    .line 102
    invoke-static {}, Laki;->a()Laki;

    move-result-object v0

    invoke-virtual {v0}, Laki;->f()Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {p1}, Lalc;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laji;

    .line 103
    if-nez v0, :cond_0

    .line 104
    invoke-virtual {p1}, Lalc;->C_()V

    .line 105
    sget-object v0, Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;->FAILED_TO_SEND:Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;

    invoke-virtual {p2, p1, v0}, Lcom/snapchat/android/model/chat/ChatConversation;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;Lcom/snapchat/android/app/feature/messaging/feed/model/FeedIconChangeType;)V

    .line 106
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;

    sget-object v2, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;->TOAST:Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;

    invoke-direct {v1, v2, v3}, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;-><init>(Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;I)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 136
    :goto_0
    return-void

    .line 111
    :cond_0
    iget-object v1, v0, Lcom/snapchat/android/model/Mediabryo;->mMediaMailingMetadata:Lcom/snapchat/android/model/MediaMailingMetadata;

    .line 113
    invoke-virtual {v1}, Lcom/snapchat/android/model/MediaMailingMetadata;->d()Ljava/util/LinkedHashSet;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/snapchat/android/model/MediaMailingMetadata;->d()Ljava/util/LinkedHashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 114
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Retrying sending snap with no recipients!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_2
    iget-object v1, v0, Lcom/snapchat/android/model/Mediabryo;->mMediaExtras:Lajv;

    check-cast v1, Laeb;

    .line 121
    if-nez v1, :cond_3

    .line 122
    new-instance v1, Laeb;

    invoke-direct {v1}, Laeb;-><init>()V

    .line 123
    invoke-virtual {p1}, Lalc;->E()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Laeb;->l:Ljava/lang/String;

    .line 124
    invoke-virtual {p1}, Lalc;->F()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Laeb;->m:Ljava/lang/String;

    .line 125
    iput-object v1, v0, Lcom/snapchat/android/model/Mediabryo;->mMediaExtras:Lajv;

    .line 129
    :cond_3
    :try_start_0
    invoke-virtual {p0, v0}, Lzo;->a(Laji;)V
    :try_end_0
    .catch Lacw$b; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :goto_1
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbeq;

    invoke-direct {v1}, Lbeq;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 130
    :catch_0
    move-exception v0

    .line 131
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/snapchat/android/util/AlertDialogUtils;->a(ILandroid/content/Context;)V

    .line 132
    new-instance v1, Lcom/snapchat/android/analytics/framework/ErrorMetric;

    invoke-virtual {v0}, Lacw$b;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/snapchat/android/analytics/framework/ErrorMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/snapchat/android/analytics/framework/ErrorMetric;->a(Ljava/lang/Throwable;)Lcom/snapchat/android/analytics/framework/ErrorMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/ErrorMetric;->e()V

    goto :goto_1
.end method

.method public final b(Laji;)V
    .locals 3

    .prologue
    .line 141
    iget-object v0, p0, Lzo;->c:Laxp;

    iget-object v1, p1, Lcom/snapchat/android/model/Mediabryo;->mClientId:Ljava/lang/String;

    iget-object v2, v0, Laxp;->mCache:Lcom/snapchat/android/util/cache/DiscoverShareCache;

    invoke-virtual {v2, v1}, Lcom/snapchat/android/util/cache/DiscoverShareCache;->c(Ljava/lang/String;)V

    iget-object v0, v0, Laxp;->mCache:Lcom/snapchat/android/util/cache/DiscoverShareCache;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/util/cache/DiscoverShareCache;->a(Z)V

    .line 142
    return-void
.end method

.method public final c(Laji;)V
    .locals 2

    .prologue
    .line 151
    const/4 v0, 0x1

    iget-object v1, p1, Lcom/snapchat/android/model/Mediabryo;->mClientId:Ljava/lang/String;

    invoke-static {v0, v1}, Lafv;->a(ZLjava/lang/String;)V

    .line 152
    iget-object v0, p0, Lzo;->a:Laki;

    sget-object v1, Lcom/snapchat/android/model/MediaMailingMetadata$SendStatus;->SENT:Lcom/snapchat/android/model/MediaMailingMetadata$SendStatus;

    invoke-virtual {v0, p1, v1}, Laki;->a(Laji;Lcom/snapchat/android/model/MediaMailingMetadata$SendStatus;)V

    .line 153
    invoke-virtual {p1}, Laji;->f()V

    .line 154
    invoke-virtual {p1}, Laji;->k()V

    .line 155
    invoke-static {}, Lakr;->aN()V

    .line 158
    instance-of v0, p1, Laku;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 159
    check-cast v0, Laku;

    invoke-virtual {v0}, Laku;->n()Ljava/lang/String;

    move-result-object v0

    .line 160
    if-eqz v0, :cond_0

    .line 161
    invoke-static {v0}, Laya;->a(Ljava/lang/String;)V

    .line 165
    :cond_0
    invoke-virtual {p0, p1}, Lzo;->b(Laji;)V

    .line 166
    return-void
.end method

.method public final d(Laji;)V
    .locals 2

    .prologue
    .line 174
    if-nez p1, :cond_0

    .line 183
    :goto_0
    return-void

    .line 178
    :cond_0
    const/4 v0, 0x0

    iget-object v1, p1, Lcom/snapchat/android/model/Mediabryo;->mClientId:Ljava/lang/String;

    invoke-static {v0, v1}, Lafv;->a(ZLjava/lang/String;)V

    .line 179
    invoke-virtual {p0, p1}, Lzo;->e(Laji;)V

    .line 180
    iget-object v0, p0, Lzo;->a:Laki;

    sget-object v1, Lcom/snapchat/android/model/MediaMailingMetadata$SendStatus;->FAILED:Lcom/snapchat/android/model/MediaMailingMetadata$SendStatus;

    invoke-virtual {v0, p1, v1}, Laki;->a(Laji;Lcom/snapchat/android/model/MediaMailingMetadata$SendStatus;)V

    .line 181
    invoke-virtual {p1}, Laji;->f()V

    .line 182
    invoke-virtual {p1}, Laji;->k()V

    goto :goto_0
.end method

.method public final e(Laji;)V
    .locals 6

    .prologue
    .line 186
    if-nez p1, :cond_1

    .line 199
    :cond_0
    return-void

    .line 190
    :cond_1
    iget-object v0, p1, Lcom/snapchat/android/model/Mediabryo;->mMediaMailingMetadata:Lcom/snapchat/android/model/MediaMailingMetadata;

    check-cast v0, Lakg;

    .line 191
    invoke-virtual {v0}, Lakg;->f()[Ljava/lang/String;

    move-result-object v1

    .line 193
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 194
    invoke-static {v3}, Lzi;->b(Ljava/lang/String;)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v3

    .line 195
    if-eqz v3, :cond_2

    .line 196
    iget-wide v4, v3, Lcom/snapchat/android/model/chat/ChatConversation;->mMyLastAckedSeqNum:J

    iput-wide v4, v3, Lcom/snapchat/android/model/chat/ChatConversation;->mMyLastSeqNum:J

    .line 193
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
