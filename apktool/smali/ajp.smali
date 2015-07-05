.class public final Lajp;
.super Lajr;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lajp$a;
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

.field public final mResponse:Lmo;


# direct methods
.method public constructor <init>(Lajr;Lmo;Lcom/snapchat/android/ads/AdResolutionState;)V
    .locals 11
    .param p1    # Lajr;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Lmo;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p3    # Lcom/snapchat/android/ads/AdResolutionState;
        .annotation build Lcgb;
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

    invoke-direct/range {v0 .. v10}, Lajp;-><init>(Lajr;Lmo;Lcom/snapchat/android/ads/AdResolutionState;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZI)V

    .line 45
    return-void
.end method

.method public constructor <init>(Lajr;Lmo;Lcom/snapchat/android/ads/AdResolutionState;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZI)V
    .locals 2
    .param p1    # Lajr;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Lmo;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p3    # Lcom/snapchat/android/ads/AdResolutionState;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lcgc;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lcgc;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lcgc;
        .end annotation
    .end param

    .prologue
    .line 54
    iget-object v0, p1, Lajr;->mUsername:Ljava/lang/String;

    iget-boolean v1, p1, Lajr;->mIsShared:Z

    invoke-direct {p0, v0, v1}, Lajr;-><init>(Ljava/lang/String;Z)V

    .line 55
    iput-object p2, p0, Lajp;->mResponse:Lmo;

    .line 56
    iput-object p3, p0, Lajp;->mAdResolutionState:Lcom/snapchat/android/ads/AdResolutionState;

    .line 57
    iput-object p4, p0, Lajp;->mMediaUrl:Ljava/lang/String;

    .line 58
    iput-object p5, p0, Lajp;->mCacheKey:Ljava/lang/String;

    .line 59
    iput-object p6, p0, Lajp;->mAdKey:Ljava/lang/String;

    .line 60
    iput p7, p0, Lajp;->mAdPosition:I

    .line 61
    invoke-virtual {p0, p8}, Lajp;->e(I)V

    .line 62
    invoke-virtual {p0, p9}, Lajp;->b(Z)V

    .line 63
    invoke-virtual {p0, p10}, Lajp;->b(I)V

    .line 64
    return-void
.end method


# virtual methods
.method public final L()Z
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lajp;->mAdResolutionState:Lcom/snapchat/android/ads/AdResolutionState;

    sget-object v1, Lcom/snapchat/android/ads/AdResolutionState;->UNRESOLVED:Lcom/snapchat/android/ads/AdResolutionState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lajp;->mAdResolutionState:Lcom/snapchat/android/ads/AdResolutionState;

    sget-object v1, Lcom/snapchat/android/ads/AdResolutionState;->AD_CONSUMED:Lcom/snapchat/android/ads/AdResolutionState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lajp;->mAdResolutionState:Lcom/snapchat/android/ads/AdResolutionState;

    sget-object v1, Lcom/snapchat/android/ads/AdResolutionState;->RESOLVING:Lcom/snapchat/android/ads/AdResolutionState;

    if-ne v0, v1, :cond_1

    .line 120
    :cond_0
    const/4 v0, 0x0

    .line 123
    :goto_0
    return v0

    :cond_1
    invoke-super {p0}, Lajr;->L()Z

    move-result v0

    goto :goto_0
.end method

.method public final M()Z
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lajp;->mAdResolutionState:Lcom/snapchat/android/ads/AdResolutionState;

    invoke-virtual {v0}, Lcom/snapchat/android/ads/AdResolutionState;->isError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    const/4 v0, 0x1

    .line 133
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lajr;->M()Z

    move-result v0

    goto :goto_0
.end method

.method public final Y()Z
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x1

    return v0
.end method

.method public final Z()Lcom/snapchat/android/ads/AdResolutionState;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lajp;->mAdResolutionState:Lcom/snapchat/android/ads/AdResolutionState;

    return-object v0
.end method

.method public final aa()Ljava/lang/String;
    .locals 3

    .prologue
    .line 149
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lci;->a(Ljava/lang/Class;)Lci$a;

    move-result-object v0

    const-string v1, "sender"

    iget-object v2, p0, Lajr;->mUsername:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lci$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lci$a;

    move-result-object v0

    const-string v1, "url"

    iget-object v2, p0, Lajp;->mMediaUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lci$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lci$a;

    move-result-object v0

    const-string v1, "adKey"

    iget-object v2, p0, Lajp;->mAdKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lci$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lci$a;

    move-result-object v0

    const-string v1, "adPosition"

    iget v2, p0, Lajp;->mAdPosition:I

    invoke-virtual {v0, v1, v2}, Lci$a;->a(Ljava/lang/String;I)Lci$a;

    move-result-object v0

    const-string v1, "resolution"

    iget-object v2, p0, Lajp;->mAdResolutionState:Lcom/snapchat/android/ads/AdResolutionState;

    invoke-virtual {v0, v1, v2}, Lci$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lci$a;

    move-result-object v0

    const-string v1, "cacheKey"

    invoke-virtual {p0}, Lajp;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lci$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lci$a;

    move-result-object v0

    const-string v1, "loaded"

    invoke-virtual {p0}, Lajp;->L()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lci$a;->a(Ljava/lang/String;Z)Lci$a;

    move-result-object v0

    const-string v1, "loading"

    invoke-virtual {p0}, Lajp;->R()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lci$a;->a(Ljava/lang/String;Z)Lci$a;

    move-result-object v0

    const-string v1, "unableToLoad"

    invoke-virtual {p0}, Lajp;->M()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lci$a;->a(Ljava/lang/String;Z)Lci$a;

    move-result-object v0

    invoke-virtual {v0}, Lci$a;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ab()Z
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x1

    return v0
.end method

.method public final ar()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lajp;->mMediaUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final as()Ljava/lang/String;
    .locals 1
    .annotation build Lcgc;
    .end annotation

    .prologue
    .line 97
    iget-object v0, p0, Lajp;->mAdKey:Ljava/lang/String;

    return-object v0
.end method

.method public final at()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lajp;->mAdPosition:I

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
    iget-object v0, p0, Lajp;->mCacheKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lajp;->mCacheKey:Ljava/lang/String;

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 138
    invoke-static {p0}, Lci;->a(Ljava/lang/Object;)Lci$a;

    move-result-object v0

    const-string v1, "sender"

    iget-object v2, p0, Lajr;->mUsername:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lci$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lci$a;

    move-result-object v0

    const-string v1, "url"

    iget-object v2, p0, Lajp;->mMediaUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lci$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lci$a;

    move-result-object v0

    const-string v1, "adKey"

    iget-object v2, p0, Lajp;->mAdKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lci$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lci$a;

    move-result-object v0

    const-string v1, "adPosition"

    iget v2, p0, Lajp;->mAdPosition:I

    invoke-virtual {v0, v1, v2}, Lci$a;->a(Ljava/lang/String;I)Lci$a;

    move-result-object v0

    const-string v1, "resolution"

    iget-object v2, p0, Lajp;->mAdResolutionState:Lcom/snapchat/android/ads/AdResolutionState;

    invoke-virtual {v0, v1, v2}, Lci$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lci$a;

    move-result-object v0

    invoke-virtual {v0}, Lci$a;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
