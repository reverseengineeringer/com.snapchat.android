.class public Lcom/snapchat/android/model/chat/ChatMedia;
.super Lakb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/model/chat/ChatMedia$a;,
        Lcom/snapchat/android/model/chat/ChatMedia$MediaType;
    }
.end annotation


# static fields
.field public static final CHAT_MEDIA_PATH:Ljava/lang/String; = "/bq/chat_media"

.field private static final MAX_PRESERVATION_PERIOD:J = 0x1d4c0L

.field private static final TAG:Ljava/lang/String; = "ChatMedia"

.field public static final TYPE:Ljava/lang/String; = "media"

.field private static final UNINITIALIZED_PRESERVATION_TIMESTAMP:J = -0x1L


# instance fields
.field private mClock:Lbgk;

.field protected mHeight:I

.field public mIsLoaded:Z

.field protected mIv:Ljava/lang/String;

.field protected mKey:Ljava/lang/String;

.field protected mMediaId:Ljava/lang/String;

.field public mMediaType:Lcom/snapchat/android/model/chat/ChatMedia$MediaType;

.field protected mPreservationTimestamp:J

.field protected mWidth:I


# direct methods
.method public constructor <init>(Laim;)V
    .locals 4

    .prologue
    .line 71
    invoke-static {}, Lajx;->l()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/snapchat/android/model/Mediabryo;->mMediaMailingMetadata:Lcom/snapchat/android/model/MediaMailingMetadata;

    invoke-virtual {v1}, Lcom/snapchat/android/model/MediaMailingMetadata;->e()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/snapchat/android/model/Mediabryo;->mTime:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lakb;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/model/chat/ChatMedia;->mIsLoaded:Z

    .line 52
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/snapchat/android/model/chat/ChatMedia;->mPreservationTimestamp:J

    .line 72
    iget-object v0, p1, Lcom/snapchat/android/model/Mediabryo;->mClientId:Ljava/lang/String;

    iput-object v0, p0, Lcom/snapchat/android/model/chat/ChatMedia;->mId:Ljava/lang/String;

    .line 73
    invoke-static {}, Layd;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/chat/ChatMedia;->mKey:Ljava/lang/String;

    .line 74
    invoke-static {}, Layd;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/chat/ChatMedia;->mIv:Ljava/lang/String;

    .line 75
    iget v0, p1, Lcom/snapchat/android/model/Mediabryo;->mWidth:I

    iput v0, p0, Lcom/snapchat/android/model/chat/ChatMedia;->mWidth:I

    .line 76
    iget v0, p1, Lcom/snapchat/android/model/Mediabryo;->mHeight:I

    iput v0, p0, Lcom/snapchat/android/model/chat/ChatMedia;->mHeight:I

    .line 77
    invoke-virtual {p1}, Laim;->h()I

    move-result v0

    invoke-static {v0}, Lcom/snapchat/android/model/chat/ChatMedia$MediaType;->fromSnapMediaType(I)Lcom/snapchat/android/model/chat/ChatMedia$MediaType;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/chat/ChatMedia;->mMediaType:Lcom/snapchat/android/model/chat/ChatMedia$MediaType;

    .line 78
    new-instance v0, Lbgk;

    invoke-direct {v0}, Lbgk;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/model/chat/ChatMedia;->mClock:Lbgk;

    .line 79
    return-void
.end method

.method public constructor <init>(Lbhf;)V
    .locals 2

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lakb;-><init>(Lbhf;)V

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/model/chat/ChatMedia;->mIsLoaded:Z

    .line 52
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/snapchat/android/model/chat/ChatMedia;->mPreservationTimestamp:J

    .line 58
    invoke-virtual {p1}, Lbhf;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lbhf;->a()Lbij;

    move-result-object v0

    invoke-virtual {v0}, Lbij;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {p1}, Lbhf;->a()Lbij;

    move-result-object v0

    invoke-virtual {v0}, Lbij;->a()Lbih;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Lbih;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/snapchat/android/model/chat/ChatMedia;->mMediaId:Ljava/lang/String;

    .line 61
    invoke-virtual {v0}, Lbih;->c()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/snapchat/android/model/chat/ChatMedia;->mKey:Ljava/lang/String;

    .line 62
    invoke-virtual {v0}, Lbih;->d()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/snapchat/android/model/chat/ChatMedia;->mIv:Ljava/lang/String;

    .line 63
    invoke-virtual {v0}, Lbih;->e()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Laud;->a(Ljava/lang/Integer;)I

    move-result v1

    iput v1, p0, Lcom/snapchat/android/model/chat/ChatMedia;->mWidth:I

    .line 64
    invoke-virtual {v0}, Lbih;->f()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Laud;->a(Ljava/lang/Integer;)I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/model/chat/ChatMedia;->mHeight:I

    .line 66
    :cond_0
    sget-object v0, Lcom/snapchat/android/model/chat/ChatMedia$MediaType;->IMAGE:Lcom/snapchat/android/model/chat/ChatMedia$MediaType;

    iput-object v0, p0, Lcom/snapchat/android/model/chat/ChatMedia;->mMediaType:Lcom/snapchat/android/model/chat/ChatMedia$MediaType;

    .line 67
    new-instance v0, Lbgk;

    invoke-direct {v0}, Lbgk;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/model/chat/ChatMedia;->mClock:Lbgk;

    .line 68
    return-void
.end method

.method public constructor <init>(Lcom/snapchat/android/model/chat/ChatMedia$a;)V
    .locals 2

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lakb;-><init>(Lakb$a;)V

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/model/chat/ChatMedia;->mIsLoaded:Z

    .line 52
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/snapchat/android/model/chat/ChatMedia;->mPreservationTimestamp:J

    .line 83
    iget-object v0, p1, Lcom/snapchat/android/model/chat/ChatMedia$a;->mediaId:Ljava/lang/String;

    iput-object v0, p0, Lcom/snapchat/android/model/chat/ChatMedia;->mMediaId:Ljava/lang/String;

    .line 84
    iget-object v0, p1, Lcom/snapchat/android/model/chat/ChatMedia$a;->key:Ljava/lang/String;

    iput-object v0, p0, Lcom/snapchat/android/model/chat/ChatMedia;->mKey:Ljava/lang/String;

    .line 85
    iget-object v0, p1, Lcom/snapchat/android/model/chat/ChatMedia$a;->iv:Ljava/lang/String;

    iput-object v0, p0, Lcom/snapchat/android/model/chat/ChatMedia;->mIv:Ljava/lang/String;

    .line 86
    iget-object v0, p1, Lcom/snapchat/android/model/chat/ChatMedia$a;->mediaType:Lcom/snapchat/android/model/chat/ChatMedia$MediaType;

    iput-object v0, p0, Lcom/snapchat/android/model/chat/ChatMedia;->mMediaType:Lcom/snapchat/android/model/chat/ChatMedia$MediaType;

    .line 87
    iget v0, p1, Lcom/snapchat/android/model/chat/ChatMedia$a;->width:I

    iput v0, p0, Lcom/snapchat/android/model/chat/ChatMedia;->mWidth:I

    .line 88
    iget v0, p1, Lcom/snapchat/android/model/chat/ChatMedia$a;->height:I

    iput v0, p0, Lcom/snapchat/android/model/chat/ChatMedia;->mHeight:I

    .line 89
    new-instance v0, Lbgk;

    invoke-direct {v0}, Lbgk;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/model/chat/ChatMedia;->mClock:Lbgk;

    .line 90
    return-void
.end method


# virtual methods
.method public final B()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatMedia;->mMediaId:Ljava/lang/String;

    return-object v0
.end method

.method public final C()Lcom/snapchat/android/model/chat/ChatMedia$MediaType;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatMedia;->mMediaType:Lcom/snapchat/android/model/chat/ChatMedia$MediaType;

    return-object v0
.end method

.method public final D()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatMedia;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public final E()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatMedia;->mIv:Ljava/lang/String;

    return-object v0
.end method

.method public final F()I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lcom/snapchat/android/model/chat/ChatMedia;->mWidth:I

    return v0
.end method

.method public final G()I
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lcom/snapchat/android/model/chat/ChatMedia;->mHeight:I

    return v0
.end method

.method public final H()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 134
    iget-boolean v2, p0, Lcom/snapchat/android/model/chat/ChatMedia;->mIsDisplayedToRecipient:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/snapchat/android/model/chat/ChatMedia;->mIsLoaded:Z

    if-nez v2, :cond_2

    iget-wide v2, p0, Lcom/snapchat/android/model/chat/ChatMedia;->mPreservationTimestamp:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/snapchat/android/model/chat/ChatMedia;->mPreservationTimestamp:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x1d4c0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    :cond_0
    move v2, v0

    :goto_0
    if-eqz v2, :cond_2

    :goto_1
    return v0

    :cond_1
    move v2, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public final I()V
    .locals 6

    .prologue
    .line 148
    iget-wide v0, p0, Lcom/snapchat/android/model/chat/ChatMedia;->mPreservationTimestamp:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 149
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/snapchat/android/model/chat/ChatMedia;->mPreservationTimestamp:J

    .line 150
    const-string v0, "ChatMedia"

    const-string v1, "set preservation timestamp of chat media with id[%s] to %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/snapchat/android/model/chat/ChatMedia;->mId:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-wide v4, p0, Lcom/snapchat/android/model/chat/ChatMedia;->mPreservationTimestamp:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 152
    :cond_0
    return-void
.end method

.method public J()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 169
    const/4 v0, 0x0

    return-object v0
.end method

.method public K()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    const/4 v0, 0x0

    return-object v0
.end method

.method public L()Z
    .locals 1

    .prologue
    .line 177
    const/4 v0, 0x0

    return v0
.end method

.method public M()Z
    .locals 1

    .prologue
    .line 181
    const/4 v0, 0x0

    return v0
.end method

.method public R()F
    .locals 1

    .prologue
    .line 185
    const/4 v0, 0x0

    return v0
.end method

.method public S()F
    .locals 1

    .prologue
    .line 189
    const/4 v0, 0x0

    return v0
.end method

.method public T()F
    .locals 1

    .prologue
    .line 193
    const/4 v0, 0x0

    return v0
.end method

.method public U()F
    .locals 1

    .prologue
    .line 197
    const/4 v0, 0x0

    return v0
.end method

.method public final a(Lcom/snapchat/android/model/chat/ChatMedia;)V
    .locals 1
    .param p1    # Lcom/snapchat/android/model/chat/ChatMedia;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 160
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatMedia;->mKey:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 161
    iget-object v0, p1, Lcom/snapchat/android/model/chat/ChatMedia;->mKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/snapchat/android/model/chat/ChatMedia;->mKey:Ljava/lang/String;

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatMedia;->mIv:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 164
    iget-object v0, p1, Lcom/snapchat/android/model/chat/ChatMedia;->mIv:Ljava/lang/String;

    iput-object v0, p0, Lcom/snapchat/android/model/chat/ChatMedia;->mIv:Ljava/lang/String;

    .line 166
    :cond_1
    return-void
.end method

.method public final am()Z
    .locals 1

    .prologue
    .line 202
    const/4 v0, 0x1

    return v0
.end method

.method public final d(Z)V
    .locals 0

    .prologue
    .line 144
    iput-boolean p1, p0, Lcom/snapchat/android/model/chat/ChatMedia;->mIsLoaded:Z

    .line 145
    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/snapchat/android/model/chat/ChatMedia;->mMediaId:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public final f(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 114
    iput-object p1, p0, Lcom/snapchat/android/model/chat/ChatMedia;->mKey:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public final g(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 122
    iput-object p1, p0, Lcom/snapchat/android/model/chat/ChatMedia;->mIv:Ljava/lang/String;

    .line 123
    return-void
.end method

.method public final g(J)Z
    .locals 1

    .prologue
    .line 156
    iget-boolean v0, p0, Lcom/snapchat/android/model/chat/ChatMedia;->mIsLoaded:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lakb;->g(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    const-string v0, "media"

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ChatMedia{mMediaType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/snapchat/android/model/chat/ChatMedia;->mMediaType:Lcom/snapchat/android/model/chat/ChatMedia$MediaType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMediaId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/model/chat/ChatMedia;->mMediaId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mKey=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/model/chat/ChatMedia;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIv=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/model/chat/ChatMedia;->mIv:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsLoaded=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/snapchat/android/model/chat/ChatMedia;->mIsLoaded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/snapchat/android/model/chat/ChatMedia;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/snapchat/android/model/chat/ChatMedia;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
