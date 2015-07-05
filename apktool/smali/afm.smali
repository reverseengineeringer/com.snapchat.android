.class public final Lafm;
.super Lafe;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lafe;-><init>()V

    .line 16
    return-void
.end method


# virtual methods
.method public final a(Lcom/snapchat/android/model/Friend;)Ljava/lang/String;
    .locals 1
    .param p1    # Lcom/snapchat/android/model/Friend;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 20
    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/snapchat/android/model/Friend;Z)Ljava/lang/String;
    .locals 5
    .param p1    # Lcom/snapchat/android/model/Friend;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 25
    iget-object v0, p1, Lcom/snapchat/android/model/Friend;->mSuggestReason:Lbkn$a;

    sget-object v1, Lbkn$a;->NEW_SNAPCHATTER:Lbkn$a;

    if-ne v0, v1, :cond_0

    .line 26
    new-array v0, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->h()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const v1, 0x7f0c0140

    invoke-static {v4, v1, v0}, Latx;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 28
    :goto_0
    return-object v0

    :cond_0
    new-array v0, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->h()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const v1, 0x7f0c013f

    invoke-static {v4, v1, v0}, Latx;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
