.class public final Lalc;
.super Lcom/snapchat/android/model/chat/ChatMedia;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lalc$a;
    }
.end annotation


# static fields
.field public static final TYPE:Ljava/lang/String; = "dsnap"


# instance fields
.field public mAdId:Ljava/lang/String;

.field public mCaption:I

.field public mDSnapId:Ljava/lang/String;

.field public mDrawing:I

.field public mEditionId:Ljava/lang/String;

.field public final mExtractionLock:Ljava/lang/Object;

.field public mFilterInfo:Ljava/lang/String;

.field public mFilterVisual:Ljava/lang/String;

.field public mIsExtracted:Z

.field public mLinkToLongform:Z

.field private mOverlayPath:Ljava/lang/String;

.field public mPublisherFormalName:Ljava/lang/String;

.field public mPublisherInternationalName:Ljava/lang/String;

.field public mPublisherName:Ljava/lang/String;

.field private mUri:Ljava/lang/String;

.field public mVideoHeight:F

.field private mVideoUri:Landroid/net/Uri;

.field public mVideoWidth:F

.field private mViewportHeight:F

.field private mViewportWidth:F

.field private mViewportX:F

.field private mViewportY:F


# direct methods
.method public constructor <init>(Laji;)V
    .locals 2

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/snapchat/android/model/chat/ChatMedia;-><init>(Laji;)V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lalc;->mIsExtracted:Z

    .line 47
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lalc;->mExtractionLock:Ljava/lang/Object;

    .line 58
    invoke-virtual {p1}, Laji;->h()I

    move-result v0

    invoke-static {v0}, Lcom/snapchat/android/model/chat/ChatMedia$MediaType;->fromSnapMediaType(I)Lcom/snapchat/android/model/chat/ChatMedia$MediaType;

    move-result-object v0

    iput-object v0, p0, Lalc;->mMediaType:Lcom/snapchat/android/model/chat/ChatMedia$MediaType;

    .line 60
    iget-object v0, p1, Lcom/snapchat/android/model/Mediabryo;->mMediaExtras:Lajv;

    check-cast v0, Laeb;

    .line 61
    if-eqz v0, :cond_0

    .line 62
    iget-object v1, v0, Laeb;->l:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lalc;->f(Ljava/lang/String;)V

    .line 63
    iget-object v0, v0, Laeb;->m:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lalc;->g(Ljava/lang/String;)V

    .line 65
    :cond_0
    return-void
.end method

.method public constructor <init>(Lalc$a;)V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/snapchat/android/model/chat/ChatMedia;-><init>(Lcom/snapchat/android/model/chat/ChatMedia$a;)V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lalc;->mIsExtracted:Z

    .line 47
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lalc;->mExtractionLock:Ljava/lang/Object;

    .line 69
    return-void
.end method

.method public constructor <init>(Lbif;)V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/snapchat/android/model/chat/ChatMedia;-><init>(Lbif;)V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lalc;->mIsExtracted:Z

    .line 47
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lalc;->mExtractionLock:Ljava/lang/Object;

    .line 51
    invoke-virtual {p1}, Lbif;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lbif;->a()Lbjj;

    move-result-object v0

    invoke-virtual {v0}, Lbjj;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lbif;->a()Lbjj;

    move-result-object v0

    invoke-virtual {v0}, Lbjj;->a()Lbjh;

    move-result-object v0

    invoke-virtual {v0}, Lbjh;->b()Ljava/lang/String;

    move-result-object v0

    .line 53
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/model/chat/ChatMedia$MediaType;->valueOf(Ljava/lang/String;)Lcom/snapchat/android/model/chat/ChatMedia$MediaType;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lalc;->mMediaType:Lcom/snapchat/android/model/chat/ChatMedia$MediaType;

    .line 54
    return-void

    .line 51
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 53
    :cond_1
    sget-object v0, Lcom/snapchat/android/model/chat/ChatMedia$MediaType;->IMAGE:Lcom/snapchat/android/model/chat/ChatMedia$MediaType;

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Lchd;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation build Lchc;
    .end annotation

    .prologue
    .line 254
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 255
    const/16 v0, 0x2d

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 256
    if-lez v0, :cond_0

    .line 257
    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 262
    :cond_0
    :goto_0
    return-object p1

    :cond_1
    move-object p1, p0

    goto :goto_0
.end method


# virtual methods
.method public final K()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lalc;->mVideoUri:Landroid/net/Uri;

    return-object v0
.end method

.method public final L()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lalc;->mOverlayPath:Ljava/lang/String;

    return-object v0
.end method

.method public final M()Z
    .locals 1

    .prologue
    .line 291
    invoke-virtual {p0}, Lalc;->X()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lalc;->mOverlayPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final N()Z
    .locals 2

    .prologue
    .line 296
    iget-object v0, p0, Lalc;->mMediaType:Lcom/snapchat/android/model/chat/ChatMedia$MediaType;

    sget-object v1, Lcom/snapchat/android/model/chat/ChatMedia$MediaType;->VIDEO:Lcom/snapchat/android/model/chat/ChatMedia$MediaType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final S()F
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lalc;->mViewportX:F

    return v0
.end method

.method public final T()F
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Lalc;->mViewportY:F

    return v0
.end method

.method public final V()F
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Lalc;->mViewportWidth:F

    return v0
.end method

.method public final W()F
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Lalc;->mViewportHeight:F

    return v0
.end method

.method public final X()Z
    .locals 2

    .prologue
    .line 301
    iget-object v0, p0, Lalc;->mMediaType:Lcom/snapchat/android/model/chat/ChatMedia$MediaType;

    sget-object v1, Lcom/snapchat/android/model/chat/ChatMedia$MediaType;->VIDEO:Lcom/snapchat/android/model/chat/ChatMedia$MediaType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lalc;->mMediaType:Lcom/snapchat/android/model/chat/ChatMedia$MediaType;

    sget-object v1, Lcom/snapchat/android/model/chat/ChatMedia$MediaType;->VIDEO_NO_SOUND:Lcom/snapchat/android/model/chat/ChatMedia$MediaType;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Laco;)V
    .locals 2

    .prologue
    .line 225
    if-eqz p1, :cond_0

    .line 226
    iget-object v0, p1, Laco;->e:Ljava/lang/String;

    iput-object v0, p0, Lalc;->mEditionId:Ljava/lang/String;

    .line 227
    iget-object v0, p1, Laco;->b:Ljava/lang/String;

    iput-object v0, p0, Lalc;->mPublisherName:Ljava/lang/String;

    .line 228
    iget-object v0, p1, Laco;->c:Ljava/lang/String;

    iput-object v0, p0, Lalc;->mPublisherFormalName:Ljava/lang/String;

    .line 229
    iget-object v0, p1, Laco;->d:Ljava/lang/String;

    iget-object v1, p1, Laco;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lalc;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lalc;->mPublisherInternationalName:Ljava/lang/String;

    .line 233
    iget-object v0, p1, Laco;->f:Ljava/lang/String;

    iput-object v0, p0, Lalc;->mDSnapId:Ljava/lang/String;

    .line 234
    iget-object v0, p1, Laco;->g:Ljava/lang/String;

    iput-object v0, p0, Lalc;->mAdId:Ljava/lang/String;

    .line 235
    iget v0, p1, Laco;->k:F

    iput v0, p0, Lalc;->mViewportX:F

    .line 236
    iget v0, p1, Laco;->l:F

    iput v0, p0, Lalc;->mViewportY:F

    .line 237
    iget v0, p1, Laco;->m:F

    iput v0, p0, Lalc;->mViewportWidth:F

    .line 238
    iget v0, p1, Laco;->n:F

    iput v0, p0, Lalc;->mViewportHeight:F

    .line 239
    iget v0, p1, Laco;->o:F

    iput v0, p0, Lalc;->mVideoWidth:F

    .line 240
    iget v0, p1, Laco;->p:F

    iput v0, p0, Lalc;->mVideoHeight:F

    .line 241
    iget v0, p1, Laco;->r:I

    iput v0, p0, Lalc;->mCaption:I

    .line 242
    iget v0, p1, Laco;->s:I

    iput v0, p0, Lalc;->mDrawing:I

    .line 243
    iget-object v0, p1, Laco;->t:Ljava/lang/String;

    iput-object v0, p0, Lalc;->mFilterInfo:Ljava/lang/String;

    .line 244
    iget-object v0, p1, Laco;->u:Ljava/lang/String;

    iput-object v0, p0, Lalc;->mFilterVisual:Ljava/lang/String;

    .line 245
    iget-boolean v0, p1, Laco;->q:Z

    iput-boolean v0, p0, Lalc;->mLinkToLongform:Z

    .line 246
    invoke-virtual {p0}, Lalc;->setChanged()V

    .line 247
    invoke-virtual {p0}, Lalc;->notifyObservers()V

    .line 249
    :cond_0
    return-void
.end method

.method public final a(Laeb;)V
    .locals 2

    .prologue
    .line 200
    if-eqz p1, :cond_0

    .line 201
    iget-object v0, p1, Laeb;->d:Ljava/lang/String;

    iput-object v0, p0, Lalc;->mEditionId:Ljava/lang/String;

    .line 202
    iget-object v0, p1, Laeb;->a:Ljava/lang/String;

    iput-object v0, p0, Lalc;->mPublisherName:Ljava/lang/String;

    .line 203
    iget-object v0, p1, Laeb;->b:Ljava/lang/String;

    iput-object v0, p0, Lalc;->mPublisherFormalName:Ljava/lang/String;

    .line 204
    iget-object v0, p1, Laeb;->c:Ljava/lang/String;

    iget-object v1, p1, Laeb;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lalc;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lalc;->mPublisherInternationalName:Ljava/lang/String;

    .line 206
    iget-object v0, p1, Laeb;->e:Ljava/lang/String;

    iput-object v0, p0, Lalc;->mDSnapId:Ljava/lang/String;

    .line 207
    iget-object v0, p1, Laeb;->x:Ljava/lang/String;

    iput-object v0, p0, Lalc;->mAdId:Ljava/lang/String;

    .line 208
    iget v0, p1, Laeb;->f:F

    iput v0, p0, Lalc;->mViewportX:F

    .line 209
    iget v0, p1, Laeb;->g:F

    iput v0, p0, Lalc;->mViewportY:F

    .line 210
    iget v0, p1, Laeb;->h:F

    iput v0, p0, Lalc;->mViewportWidth:F

    .line 211
    iget v0, p1, Laeb;->i:F

    iput v0, p0, Lalc;->mViewportHeight:F

    .line 212
    iget v0, p1, Laeb;->j:F

    iput v0, p0, Lalc;->mVideoWidth:F

    .line 213
    iget v0, p1, Laeb;->k:F

    iput v0, p0, Lalc;->mVideoHeight:F

    .line 214
    iget v0, p1, Laeb;->q:I

    iput v0, p0, Lalc;->mCaption:I

    .line 215
    iget v0, p1, Laeb;->r:I

    iput v0, p0, Lalc;->mDrawing:I

    .line 216
    iget-object v0, p1, Laeb;->s:Ljava/lang/String;

    iput-object v0, p0, Lalc;->mFilterInfo:Ljava/lang/String;

    .line 217
    iget-object v0, p1, Laeb;->t:Ljava/lang/String;

    iput-object v0, p0, Lalc;->mFilterVisual:Ljava/lang/String;

    .line 218
    iget-boolean v0, p1, Laeb;->n:Z

    iput-boolean v0, p0, Lalc;->mLinkToLongform:Z

    .line 219
    invoke-virtual {p0}, Lalc;->setChanged()V

    .line 220
    invoke-virtual {p0}, Lalc;->notifyObservers()V

    .line 222
    :cond_0
    return-void
.end method

.method public final a(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lchd;
        .end annotation
    .end param

    .prologue
    .line 193
    iput-object p1, p0, Lalc;->mVideoUri:Landroid/net/Uri;

    .line 194
    iput-object p2, p0, Lalc;->mOverlayPath:Ljava/lang/String;

    .line 195
    invoke-virtual {p0}, Lalc;->setChanged()V

    .line 196
    invoke-virtual {p0}, Lalc;->notifyObservers()V

    .line 197
    return-void
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    const-string v0, "dsnap"

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ChatSharedDSnap{mAdId=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lalc;->mAdId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mUri=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lalc;->mUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mVideoUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lalc;->mVideoUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mOverlayPath=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lalc;->mOverlayPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mEditionId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lalc;->mEditionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPublisherName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lalc;->mPublisherName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDSnapId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lalc;->mDSnapId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mViewportX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lalc;->mViewportX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mViewportY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lalc;->mViewportY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mViewportWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lalc;->mViewportWidth:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mViewportHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lalc;->mViewportHeight:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mVideoWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lalc;->mVideoWidth:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mVideoHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lalc;->mVideoHeight:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsExtracted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lalc;->mIsExtracted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsLoaded=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lalc;->mIsLoaded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLinkToLongform="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lalc;->mLinkToLongform:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMediaType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lalc;->mMediaType:Lcom/snapchat/android/model/chat/ChatMedia$MediaType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
