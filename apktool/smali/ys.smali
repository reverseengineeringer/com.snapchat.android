.class public final Lys;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/discover/api2/SendDSnapTask$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lys$1;
    }
.end annotation


# instance fields
.field private final a:Lajn;

.field private final b:Laxc;

.field private final c:Lawr;

.field private final d:Laev;

.field private final e:Lajx;

.field private final f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    .line 47
    invoke-static {}, Lajn;->a()Lajn;

    move-result-object v1

    invoke-static {}, Laxc;->a()Laxc;

    move-result-object v2

    invoke-static {}, Lawr$a;->a()Lawr;

    move-result-object v3

    new-instance v4, Laev;

    invoke-direct {v4}, Laev;-><init>()V

    invoke-static {}, Lajx;->a()Lajx;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lys;-><init>(Lajn;Laxc;Lawr;Laev;Lajx;)V

    .line 49
    return-void
.end method

.method private constructor <init>(Lajn;Laxc;Lawr;Laev;Lajx;)V
    .locals 1
    .param p1    # Lajn;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Laxc;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p3    # Lawr;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p4    # Laev;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p5    # Lajx;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-string v0, "SendDSnapController"

    iput-object v0, p0, Lys;->f:Ljava/lang/String;

    .line 56
    iput-object p1, p0, Lys;->a:Lajn;

    .line 57
    iput-object p2, p0, Lys;->b:Laxc;

    .line 58
    iput-object p3, p0, Lys;->c:Lawr;

    .line 59
    iput-object p4, p0, Lys;->d:Laev;

    .line 60
    iput-object p5, p0, Lys;->e:Lajx;

    .line 61
    return-void
.end method


# virtual methods
.method public final a(Laim;)V
    .locals 3

    .prologue
    .line 64
    iget-object v0, p1, Lcom/snapchat/android/model/Mediabryo;->mMediaMailingMetadata:Lcom/snapchat/android/model/MediaMailingMetadata;

    sget-object v1, Lys$1;->a:[I

    iget-object v0, v0, Lcom/snapchat/android/model/MediaMailingMetadata;->mUploadStatus:Lcom/snapchat/android/model/MediaMailingMetadata$UploadStatus;

    invoke-virtual {v0}, Lcom/snapchat/android/model/MediaMailingMetadata$UploadStatus;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/snapchat/android/model/MediaMailingMetadata$SendStatus;->FAILED:Lcom/snapchat/android/model/MediaMailingMetadata$SendStatus;

    .line 65
    :goto_0
    iget-object v1, p0, Lys;->a:Lajn;

    invoke-virtual {v1, p1, v0}, Lajn;->a(Laim;Lcom/snapchat/android/model/MediaMailingMetadata$SendStatus;)V

    .line 66
    iget-object v0, p1, Lcom/snapchat/android/model/Mediabryo;->mMediaMailingMetadata:Lcom/snapchat/android/model/MediaMailingMetadata;

    sget-object v1, Lys$1;->a:[I

    iget-object v2, v0, Lcom/snapchat/android/model/MediaMailingMetadata;->mUploadStatus:Lcom/snapchat/android/model/MediaMailingMetadata$UploadStatus;

    invoke-virtual {v2}, Lcom/snapchat/android/model/MediaMailingMetadata$UploadStatus;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    .line 67
    :goto_1
    return-void

    .line 64
    :pswitch_0
    sget-object v0, Lcom/snapchat/android/model/MediaMailingMetadata$SendStatus;->SENDING:Lcom/snapchat/android/model/MediaMailingMetadata$SendStatus;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/snapchat/android/model/MediaMailingMetadata$SendStatus;->SENDING_ON_UPLOAD:Lcom/snapchat/android/model/MediaMailingMetadata$SendStatus;

    goto :goto_0

    .line 66
    :pswitch_2
    new-instance v0, Lcom/snapchat/android/discover/api2/SendDSnapTask;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-direct {v0, p1, p0, v1}, Lcom/snapchat/android/discover/api2/SendDSnapTask;-><init>(Laim;Lcom/snapchat/android/discover/api2/SendDSnapTask$c;Ljava/util/HashMap;)V

    invoke-virtual {v0}, Lcom/snapchat/android/discover/api2/SendDSnapTask;->f()V

    goto :goto_1

    :pswitch_3
    new-instance v0, Labw;

    invoke-direct {v0, p1, p0}, Labw;-><init>(Laim;Lcom/snapchat/android/discover/api2/SendDSnapTask$c;)V

    invoke-virtual {v0}, Labw;->f()V

    goto :goto_1

    :pswitch_4
    invoke-virtual {v0}, Lcom/snapchat/android/model/MediaMailingMetadata;->c()V

    goto :goto_1

    .line 64
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 66
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public final a(Lakh;)V
    .locals 4

    .prologue
    const v3, 0x7f0c012d

    .line 101
    invoke-static {}, Lajn;->a()Lajn;

    move-result-object v0

    invoke-virtual {v0}, Lajn;->f()Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {p1}, Lakh;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laim;

    .line 102
    if-nez v0, :cond_0

    .line 103
    invoke-virtual {p1}, Lakh;->p()V

    .line 104
    const-string v0, "SendDSnapController"

    const-string v1, "Failed DSnap not found by given snapId."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;

    sget-object v2, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;->TOAST:Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;

    invoke-direct {v1, v2, v3}, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;-><init>(Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;I)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 134
    :goto_0
    return-void

    .line 109
    :cond_0
    iget-object v1, v0, Lcom/snapchat/android/model/Mediabryo;->mMediaMailingMetadata:Lcom/snapchat/android/model/MediaMailingMetadata;

    .line 111
    invoke-virtual {v1}, Lcom/snapchat/android/model/MediaMailingMetadata;->d()Ljava/util/LinkedHashSet;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/snapchat/android/model/MediaMailingMetadata;->d()Ljava/util/LinkedHashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 112
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Retrying sending snap with no recipients!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_2
    iget-object v1, v0, Lcom/snapchat/android/model/Mediabryo;->mMediaExtras:Laiz;

    check-cast v1, Ladb;

    .line 119
    if-nez v1, :cond_3

    .line 120
    new-instance v1, Ladb;

    invoke-direct {v1}, Ladb;-><init>()V

    .line 121
    invoke-virtual {p1}, Lakh;->D()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Ladb;->l:Ljava/lang/String;

    .line 122
    invoke-virtual {p1}, Lakh;->E()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Ladb;->m:Ljava/lang/String;

    .line 123
    iput-object v1, v0, Lcom/snapchat/android/model/Mediabryo;->mMediaExtras:Laiz;

    .line 127
    :cond_3
    :try_start_0
    invoke-virtual {p0, v0}, Lys;->a(Laim;)V
    :try_end_0
    .catch Labw$b; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :goto_1
    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbdq;

    invoke-direct {v1}, Lbdq;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 128
    :catch_0
    move-exception v0

    .line 129
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/snapchat/android/util/AlertDialogUtils;->a(ILandroid/content/Context;)V

    .line 130
    new-instance v1, Lcom/snapchat/android/analytics/framework/ErrorMetric;

    invoke-virtual {v0}, Labw$b;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/snapchat/android/analytics/framework/ErrorMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/snapchat/android/analytics/framework/ErrorMetric;->a(Ljava/lang/Throwable;)Lcom/snapchat/android/analytics/framework/ErrorMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/ErrorMetric;->d()V

    goto :goto_1
.end method

.method public final b(Laim;)V
    .locals 3

    .prologue
    .line 139
    iget-object v0, p0, Lys;->c:Lawr;

    iget-object v1, p1, Lcom/snapchat/android/model/Mediabryo;->mClientId:Ljava/lang/String;

    iget-object v2, v0, Lawr;->mCache:Lcom/snapchat/android/util/cache/DiscoverShareCache;

    invoke-virtual {v2, v1}, Lcom/snapchat/android/util/cache/DiscoverShareCache;->c(Ljava/lang/String;)V

    iget-object v0, v0, Lawr;->mCache:Lcom/snapchat/android/util/cache/DiscoverShareCache;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/util/cache/DiscoverShareCache;->a(Z)V

    .line 140
    return-void
.end method

.method public final c(Laim;)V
    .locals 2

    .prologue
    .line 149
    const/4 v0, 0x1

    iget-object v1, p1, Lcom/snapchat/android/model/Mediabryo;->mClientId:Ljava/lang/String;

    invoke-static {v0, v1}, Laev;->a(ZLjava/lang/String;)V

    .line 150
    iget-object v0, p0, Lys;->a:Lajn;

    sget-object v1, Lcom/snapchat/android/model/MediaMailingMetadata$SendStatus;->SENT:Lcom/snapchat/android/model/MediaMailingMetadata$SendStatus;

    invoke-virtual {v0, p1, v1}, Lajn;->a(Laim;Lcom/snapchat/android/model/MediaMailingMetadata$SendStatus;)V

    .line 151
    invoke-virtual {p1}, Laim;->f()V

    .line 152
    invoke-virtual {p1}, Laim;->k()V

    .line 153
    invoke-static {}, Lajx;->aO()V

    .line 156
    instance-of v0, p1, Lajm;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 157
    check-cast v0, Lajm;

    invoke-virtual {v0}, Lajm;->n()Ljava/lang/String;

    move-result-object v0

    .line 158
    if-eqz v0, :cond_0

    .line 159
    invoke-static {v0}, Laxc;->a(Ljava/lang/String;)V

    .line 163
    :cond_0
    invoke-virtual {p0, p1}, Lys;->b(Laim;)V

    .line 164
    return-void
.end method

.method public final d(Laim;)V
    .locals 2

    .prologue
    .line 172
    if-nez p1, :cond_0

    .line 181
    :goto_0
    return-void

    .line 176
    :cond_0
    const/4 v0, 0x0

    iget-object v1, p1, Lcom/snapchat/android/model/Mediabryo;->mClientId:Ljava/lang/String;

    invoke-static {v0, v1}, Laev;->a(ZLjava/lang/String;)V

    .line 177
    invoke-virtual {p0, p1}, Lys;->e(Laim;)V

    .line 178
    iget-object v0, p0, Lys;->a:Lajn;

    sget-object v1, Lcom/snapchat/android/model/MediaMailingMetadata$SendStatus;->FAILED:Lcom/snapchat/android/model/MediaMailingMetadata$SendStatus;

    invoke-virtual {v0, p1, v1}, Lajn;->a(Laim;Lcom/snapchat/android/model/MediaMailingMetadata$SendStatus;)V

    .line 179
    invoke-virtual {p1}, Laim;->f()V

    .line 180
    invoke-virtual {p1}, Laim;->k()V

    goto :goto_0
.end method

.method public final e(Laim;)V
    .locals 6

    .prologue
    .line 184
    if-nez p1, :cond_1

    .line 197
    :cond_0
    return-void

    .line 188
    :cond_1
    iget-object v0, p1, Lcom/snapchat/android/model/Mediabryo;->mMediaMailingMetadata:Lcom/snapchat/android/model/MediaMailingMetadata;

    check-cast v0, Lajk;

    .line 189
    invoke-virtual {v0}, Lajk;->f()[Ljava/lang/String;

    move-result-object v1

    .line 191
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 192
    invoke-static {v3}, Lym;->b(Ljava/lang/String;)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v3

    .line 193
    if-eqz v3, :cond_2

    .line 194
    iget-wide v4, v3, Lcom/snapchat/android/model/chat/ChatConversation;->mMyLastAckedSeqNum:J

    iput-wide v4, v3, Lcom/snapchat/android/model/chat/ChatConversation;->mMyLastSeqNum:J

    .line 191
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
