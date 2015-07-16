.class public abstract Lcom/snapchat/android/model/MediaMailingMetadata;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/model/MediaMailingMetadata$PostStatus;,
        Lcom/snapchat/android/model/MediaMailingMetadata$SendStatus;,
        Lcom/snapchat/android/model/MediaMailingMetadata$UploadStatus;
    }
.end annotation


# instance fields
.field protected mClock:Lbhk;

.field public mDeleteCacheAfterSent:Z

.field public mPostStatus:Lcom/snapchat/android/model/MediaMailingMetadata$PostStatus;

.field protected mRecipients:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;"
        }
    .end annotation
.end field

.field public mRetried:Z

.field public mSavedInGallery:Z

.field public mSendStatus:Lcom/snapchat/android/model/MediaMailingMetadata$SendStatus;

.field protected mShouldExecuteSendSnapTaskAfterUpload:Z

.field public mTimeOfFirstAttempt:J

.field public mTimeOfLastAttempt:J

.field private mTimerValueOrDuration:D

.field public mUploadStatus:Lcom/snapchat/android/model/MediaMailingMetadata$UploadStatus;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-boolean v1, p0, Lcom/snapchat/android/model/MediaMailingMetadata;->mRetried:Z

    .line 72
    iput-boolean v1, p0, Lcom/snapchat/android/model/MediaMailingMetadata;->mSavedInGallery:Z

    .line 74
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/model/MediaMailingMetadata;->mRecipients:Ljava/util/LinkedHashSet;

    .line 75
    sget-object v0, Lcom/snapchat/android/model/MediaMailingMetadata$UploadStatus;->NOT_UPLOADED:Lcom/snapchat/android/model/MediaMailingMetadata$UploadStatus;

    iput-object v0, p0, Lcom/snapchat/android/model/MediaMailingMetadata;->mUploadStatus:Lcom/snapchat/android/model/MediaMailingMetadata$UploadStatus;

    .line 76
    sget-object v0, Lcom/snapchat/android/model/MediaMailingMetadata$SendStatus;->UNSENT:Lcom/snapchat/android/model/MediaMailingMetadata$SendStatus;

    iput-object v0, p0, Lcom/snapchat/android/model/MediaMailingMetadata;->mSendStatus:Lcom/snapchat/android/model/MediaMailingMetadata$SendStatus;

    .line 77
    sget-object v0, Lcom/snapchat/android/model/MediaMailingMetadata$PostStatus;->NOT_POSTED:Lcom/snapchat/android/model/MediaMailingMetadata$PostStatus;

    iput-object v0, p0, Lcom/snapchat/android/model/MediaMailingMetadata;->mPostStatus:Lcom/snapchat/android/model/MediaMailingMetadata$PostStatus;

    .line 80
    iput-boolean v1, p0, Lcom/snapchat/android/model/MediaMailingMetadata;->mDeleteCacheAfterSent:Z

    .line 88
    iput-boolean v1, p0, Lcom/snapchat/android/model/MediaMailingMetadata;->mShouldExecuteSendSnapTaskAfterUpload:Z

    .line 90
    new-instance v0, Lbhk;

    invoke-direct {v0}, Lbhk;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/model/MediaMailingMetadata;->mClock:Lbhk;

    return-void
.end method


# virtual methods
.method public abstract a()Lcom/snapchat/android/model/MediaMailingMetadata;
.end method

.method public final a(I)V
    .locals 1

    .prologue
    .line 257
    invoke-static {}, Lcom/snapchat/android/model/MediaMailingMetadata$UploadStatus;->values()[Lcom/snapchat/android/model/MediaMailingMetadata$UploadStatus;

    move-result-object v0

    aget-object v0, v0, p1

    iput-object v0, p0, Lcom/snapchat/android/model/MediaMailingMetadata;->mUploadStatus:Lcom/snapchat/android/model/MediaMailingMetadata$UploadStatus;

    .line 258
    return-void
.end method

.method public final a(Lcom/snapchat/android/model/MediaMailingMetadata$PostStatus;)V
    .locals 4
    .param p1    # Lcom/snapchat/android/model/MediaMailingMetadata$PostStatus;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 216
    iput-object p1, p0, Lcom/snapchat/android/model/MediaMailingMetadata;->mPostStatus:Lcom/snapchat/android/model/MediaMailingMetadata$PostStatus;

    .line 217
    sget-object v0, Lcom/snapchat/android/model/MediaMailingMetadata$PostStatus;->POSTING:Lcom/snapchat/android/model/MediaMailingMetadata$PostStatus;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/snapchat/android/model/MediaMailingMetadata$PostStatus;->POSTING_ON_UPLOAD:Lcom/snapchat/android/model/MediaMailingMetadata$PostStatus;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/snapchat/android/model/MediaMailingMetadata$PostStatus;->WILL_POST_AFTER_SAVE:Lcom/snapchat/android/model/MediaMailingMetadata$PostStatus;

    if-ne p1, v0, :cond_2

    .line 220
    :cond_0
    iget-wide v0, p0, Lcom/snapchat/android/model/MediaMailingMetadata;->mTimeOfFirstAttempt:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/snapchat/android/model/MediaMailingMetadata;->mTimeOfFirstAttempt:J

    .line 221
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/snapchat/android/model/MediaMailingMetadata;->mTimeOfLastAttempt:J

    .line 223
    :cond_2
    return-void
.end method

.method public final a(Lcom/snapchat/android/model/MediaMailingMetadata;)V
    .locals 2

    .prologue
    .line 277
    new-instance v0, Ljava/util/LinkedHashSet;

    iget-object v1, p0, Lcom/snapchat/android/model/MediaMailingMetadata;->mRecipients:Ljava/util/LinkedHashSet;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p1, Lcom/snapchat/android/model/MediaMailingMetadata;->mRecipients:Ljava/util/LinkedHashSet;

    .line 278
    iget-wide v0, p0, Lcom/snapchat/android/model/MediaMailingMetadata;->mTimeOfFirstAttempt:J

    iput-wide v0, p1, Lcom/snapchat/android/model/MediaMailingMetadata;->mTimeOfFirstAttempt:J

    .line 279
    iget-wide v0, p0, Lcom/snapchat/android/model/MediaMailingMetadata;->mTimeOfLastAttempt:J

    iput-wide v0, p1, Lcom/snapchat/android/model/MediaMailingMetadata;->mTimeOfLastAttempt:J

    .line 280
    iget-object v0, p0, Lcom/snapchat/android/model/MediaMailingMetadata;->mPostStatus:Lcom/snapchat/android/model/MediaMailingMetadata$PostStatus;

    iput-object v0, p1, Lcom/snapchat/android/model/MediaMailingMetadata;->mPostStatus:Lcom/snapchat/android/model/MediaMailingMetadata$PostStatus;

    .line 281
    iget-object v0, p0, Lcom/snapchat/android/model/MediaMailingMetadata;->mSendStatus:Lcom/snapchat/android/model/MediaMailingMetadata$SendStatus;

    iput-object v0, p1, Lcom/snapchat/android/model/MediaMailingMetadata;->mSendStatus:Lcom/snapchat/android/model/MediaMailingMetadata$SendStatus;

    .line 282
    iget-object v0, p0, Lcom/snapchat/android/model/MediaMailingMetadata;->mUploadStatus:Lcom/snapchat/android/model/MediaMailingMetadata$UploadStatus;

    iput-object v0, p1, Lcom/snapchat/android/model/MediaMailingMetadata;->mUploadStatus:Lcom/snapchat/android/model/MediaMailingMetadata$UploadStatus;

    .line 283
    iget-boolean v0, p0, Lcom/snapchat/android/model/MediaMailingMetadata;->mRetried:Z

    iput-boolean v0, p1, Lcom/snapchat/android/model/MediaMailingMetadata;->mRetried:Z

    .line 284
    iget-boolean v0, p0, Lcom/snapchat/android/model/MediaMailingMetadata;->mSavedInGallery:Z

    iput-boolean v0, p1, Lcom/snapchat/android/model/MediaMailingMetadata;->mSavedInGallery:Z

    .line 285
    iget-wide v0, p0, Lcom/snapchat/android/model/MediaMailingMetadata;->mTimerValueOrDuration:D

    iput-wide v0, p1, Lcom/snapchat/android/model/MediaMailingMetadata;->mTimerValueOrDuration:D

    .line 286
    iget-boolean v0, p0, Lcom/snapchat/android/model/MediaMailingMetadata;->mShouldExecuteSendSnapTaskAfterUpload:Z

    iput-boolean v0, p1, Lcom/snapchat/android/model/MediaMailingMetadata;->mShouldExecuteSendSnapTaskAfterUpload:Z

    .line 287
    iget-boolean v0, p0, Lcom/snapchat/android/model/MediaMailingMetadata;->mDeleteCacheAfterSent:Z

    iput-boolean v0, p1, Lcom/snapchat/android/model/MediaMailingMetadata;->mDeleteCacheAfterSent:Z

    .line 288
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lchd;
        .end annotation
    .end param

    .prologue
    .line 140
    if-nez p1, :cond_1

    .line 149
    :cond_0
    return-void

    .line 141
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "\\s*,\\s*"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 144
    invoke-static {}, Lakp;->g()Lakp;

    move-result-object v1

    .line 145
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 146
    invoke-static {v0, v1}, Lauk;->b(Ljava/lang/String;Lakp;)Lcom/snapchat/android/model/Friend;

    move-result-object v0

    .line 147
    iget-object v3, p0, Lcom/snapchat/android/model/MediaMailingMetadata;->mRecipients:Ljava/util/LinkedHashSet;

    invoke-virtual {v3, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final a(Ljava/util/LinkedHashSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashSet",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 136
    iput-object p1, p0, Lcom/snapchat/android/model/MediaMailingMetadata;->mRecipients:Ljava/util/LinkedHashSet;

    .line 137
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 4
    .param p1    # Ljava/util/List;
        .annotation build Lchd;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 152
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/model/MediaMailingMetadata;->mRecipients:Ljava/util/LinkedHashSet;

    .line 154
    invoke-static {}, Lakp;->g()Lakp;

    move-result-object v1

    .line 155
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 156
    invoke-static {v0, v1}, Lauk;->b(Ljava/lang/String;Lakp;)Lcom/snapchat/android/model/Friend;

    move-result-object v0

    .line 157
    iget-object v3, p0, Lcom/snapchat/android/model/MediaMailingMetadata;->mRecipients:Ljava/util/LinkedHashSet;

    invoke-virtual {v3, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 159
    :cond_0
    return-void
.end method

.method public final b(I)V
    .locals 1

    .prologue
    .line 261
    invoke-static {}, Lcom/snapchat/android/model/MediaMailingMetadata$SendStatus;->values()[Lcom/snapchat/android/model/MediaMailingMetadata$SendStatus;

    move-result-object v0

    aget-object v0, v0, p1

    iput-object v0, p0, Lcom/snapchat/android/model/MediaMailingMetadata;->mSendStatus:Lcom/snapchat/android/model/MediaMailingMetadata$SendStatus;

    .line 262
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 269
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/snapchat/android/model/MediaMailingMetadata;->mTimeOfFirstAttempt:J

    .line 270
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/snapchat/android/model/MediaMailingMetadata;->mShouldExecuteSendSnapTaskAfterUpload:Z

    return v0
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/model/MediaMailingMetadata;->mShouldExecuteSendSnapTaskAfterUpload:Z

    .line 133
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 273
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/snapchat/android/model/MediaMailingMetadata;->mTimeOfLastAttempt:J

    .line 274
    return-void
.end method

.method public final d()Ljava/util/LinkedHashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashSet",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;"
        }
    .end annotation

    .prologue
    .line 162
    iget-object v0, p0, Lcom/snapchat/android/model/MediaMailingMetadata;->mRecipients:Ljava/util/LinkedHashSet;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 4

    .prologue
    .line 166
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 167
    const-string v0, ""

    .line 168
    iget-object v1, p0, Lcom/snapchat/android/model/MediaMailingMetadata;->mRecipients:Ljava/util/LinkedHashSet;

    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    .line 169
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    const-string v0, ", "

    move-object v1, v0

    .line 172
    goto :goto_0

    .line 173
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final f()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 177
    iget-object v0, p0, Lcom/snapchat/android/model/MediaMailingMetadata;->mRecipients:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->size()I

    move-result v0

    new-array v2, v0, [Ljava/lang/String;

    .line 178
    const/4 v0, 0x0

    .line 179
    iget-object v1, p0, Lcom/snapchat/android/model/MediaMailingMetadata;->mRecipients:Ljava/util/LinkedHashSet;

    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    .line 180
    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->l()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    .line 181
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 182
    goto :goto_0

    .line 183
    :cond_0
    return-object v2
.end method

.method public final g()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 192
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 193
    iget-object v0, p0, Lcom/snapchat/android/model/MediaMailingMetadata;->mRecipients:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    .line 194
    iget-object v0, v0, Lcom/snapchat/android/model/Friend;->mUserId:Ljava/lang/String;

    .line 195
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 196
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 198
    :cond_0
    const-string v0, ""

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 201
    :cond_1
    return-object v1
.end method
