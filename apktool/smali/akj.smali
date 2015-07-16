.class public final Lakj;
.super Lakl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lakj$a;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "StoryAdSnap"


# instance fields
.field public final mAdKey:Ljava/lang/String;

.field public final mAdPosition:I

.field public final mAdResolutionState:Lcom/snapchat/android/ads/AdResolutionState;

.field private final mCacheKey:Ljava/lang/String;

.field private final mMediaUrl:Ljava/lang/String;

.field public final mResponse:Lnf;


# direct methods
.method public constructor <init>(Lakl;Lnf;Lcom/snapchat/android/ads/AdResolutionState;)V
    .locals 11
    .param p1    # Lakl;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Lnf;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p3    # Lcom/snapchat/android/ads/AdResolutionState;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 43
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    move-object v6, v4

    move v8, v7

    move v9, v7

    move v10, v7

    invoke-direct/range {v0 .. v10}, Lakj;-><init>(Lakl;Lnf;Lcom/snapchat/android/ads/AdResolutionState;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZI)V

    .line 45
    return-void
.end method

.method public constructor <init>(Lakl;Lnf;Lcom/snapchat/android/ads/AdResolutionState;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZI)V
    .locals 2
    .param p1    # Lakl;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Lnf;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p3    # Lcom/snapchat/android/ads/AdResolutionState;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lchd;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lchd;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lchd;
        .end annotation
    .end param

    .prologue
    .line 54
    iget-object v0, p1, Lakl;->mUsername:Ljava/lang/String;

    iget-boolean v1, p1, Lakl;->mIsShared:Z

    invoke-direct {p0, v0, v1}, Lakl;-><init>(Ljava/lang/String;Z)V

    .line 55
    iput-object p2, p0, Lakj;->mResponse:Lnf;

    .line 56
    iput-object p3, p0, Lakj;->mAdResolutionState:Lcom/snapchat/android/ads/AdResolutionState;

    .line 57
    iput-object p4, p0, Lakj;->mMediaUrl:Ljava/lang/String;

    .line 58
    iput-object p5, p0, Lakj;->mCacheKey:Ljava/lang/String;

    .line 59
    iput-object p6, p0, Lakj;->mAdKey:Ljava/lang/String;

    .line 60
    iput p7, p0, Lakj;->mAdPosition:I

    .line 61
    invoke-virtual {p0, p8}, Lakj;->e(I)V

    .line 62
    invoke-virtual {p0, p9}, Lakj;->b(Z)V

    .line 63
    invoke-virtual {p0, p10}, Lakj;->b(I)V

    .line 64
    return-void
.end method


# virtual methods
.method public final M()Z
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lakj;->mAdResolutionState:Lcom/snapchat/android/ads/AdResolutionState;

    sget-object v1, Lcom/snapchat/android/ads/AdResolutionState;->UNRESOLVED:Lcom/snapchat/android/ads/AdResolutionState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lakj;->mAdResolutionState:Lcom/snapchat/android/ads/AdResolutionState;

    sget-object v1, Lcom/snapchat/android/ads/AdResolutionState;->AD_CONSUMED:Lcom/snapchat/android/ads/AdResolutionState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lakj;->mAdResolutionState:Lcom/snapchat/android/ads/AdResolutionState;

    sget-object v1, Lcom/snapchat/android/ads/AdResolutionState;->RESOLVING:Lcom/snapchat/android/ads/AdResolutionState;

    if-ne v0, v1, :cond_1

    .line 120
    :cond_0
    const/4 v0, 0x0

    .line 123
    :goto_0
    return v0

    :cond_1
    invoke-super {p0}, Lakl;->M()Z

    move-result v0

    goto :goto_0
.end method

.method public final N()Z
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lakj;->mAdResolutionState:Lcom/snapchat/android/ads/AdResolutionState;

    invoke-virtual {v0}, Lcom/snapchat/android/ads/AdResolutionState;->isError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    const/4 v0, 0x1

    .line 133
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lakl;->N()Z

    move-result v0

    goto :goto_0
.end method

.method public final W()Z
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x1

    return v0
.end method

.method public final X()Lcom/snapchat/android/ads/AdResolutionState;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lakj;->mAdResolutionState:Lcom/snapchat/android/ads/AdResolutionState;

    return-object v0
.end method

.method public final Y()Ljava/lang/String;
    .locals 3

    .prologue
    .line 149
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcl;->a(Ljava/lang/Class;)Lcl$a;

    move-result-object v0

    const-string v1, "sender"

    iget-object v2, p0, Lakl;->mUsername:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcl$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcl$a;

    move-result-object v0

    const-string v1, "url"

    iget-object v2, p0, Lakj;->mMediaUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcl$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcl$a;

    move-result-object v0

    const-string v1, "adKey"

    iget-object v2, p0, Lakj;->mAdKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcl$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcl$a;

    move-result-object v0

    const-string v1, "adPosition"

    iget v2, p0, Lakj;->mAdPosition:I

    invoke-virtual {v0, v1, v2}, Lcl$a;->a(Ljava/lang/String;I)Lcl$a;

    move-result-object v0

    const-string v1, "resolution"

    iget-object v2, p0, Lakj;->mAdResolutionState:Lcom/snapchat/android/ads/AdResolutionState;

    invoke-virtual {v0, v1, v2}, Lcl$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcl$a;

    move-result-object v0

    const-string v1, "cacheKey"

    invoke-virtual {p0}, Lakj;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcl$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcl$a;

    move-result-object v0

    const-string v1, "loaded"

    invoke-virtual {p0}, Lakj;->M()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcl$a;->a(Ljava/lang/String;Z)Lcl$a;

    move-result-object v0

    const-string v1, "loading"

    invoke-virtual {p0}, Lakj;->S()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcl$a;->a(Ljava/lang/String;Z)Lcl$a;

    move-result-object v0

    const-string v1, "unableToLoad"

    invoke-virtual {p0}, Lakj;->N()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcl$a;->a(Ljava/lang/String;Z)Lcl$a;

    move-result-object v0

    invoke-virtual {v0}, Lcl$a;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final Z()Z
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x1

    return v0
.end method

.method public final ap()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lakj;->mMediaUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final aq()Ljava/lang/String;
    .locals 1
    .annotation build Lchd;
    .end annotation

    .prologue
    .line 97
    iget-object v0, p0, Lakj;->mAdKey:Ljava/lang/String;

    return-object v0
.end method

.method public final ar()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lakj;->mAdPosition:I

    return v0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x1

    return v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lakj;->mCacheKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lakj;->mCacheKey:Ljava/lang/String;

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 138
    invoke-static {p0}, Lcl;->a(Ljava/lang/Object;)Lcl$a;

    move-result-object v0

    const-string v1, "sender"

    iget-object v2, p0, Lakl;->mUsername:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcl$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcl$a;

    move-result-object v0

    const-string v1, "url"

    iget-object v2, p0, Lakj;->mMediaUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcl$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcl$a;

    move-result-object v0

    const-string v1, "adKey"

    iget-object v2, p0, Lakj;->mAdKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcl$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcl$a;

    move-result-object v0

    const-string v1, "adPosition"

    iget v2, p0, Lakj;->mAdPosition:I

    invoke-virtual {v0, v1, v2}, Lcl$a;->a(Ljava/lang/String;I)Lcl$a;

    move-result-object v0

    const-string v1, "resolution"

    iget-object v2, p0, Lakj;->mAdResolutionState:Lcom/snapchat/android/ads/AdResolutionState;

    invoke-virtual {v0, v1, v2}, Lcl$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcl$a;

    move-result-object v0

    invoke-virtual {v0}, Lcl$a;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
