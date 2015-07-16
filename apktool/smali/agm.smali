.class public final Lagm;
.super Lage;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lage;-><init>()V

    .line 18
    return-void
.end method


# virtual methods
.method public final a(Lcom/snapchat/android/model/Friend;)Ljava/lang/String;
    .locals 1
    .param p1    # Lcom/snapchat/android/model/Friend;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 22
    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/snapchat/android/model/Friend;Z)Ljava/lang/String;
    .locals 5
    .param p1    # Lcom/snapchat/android/model/Friend;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 28
    iget-object v0, p1, Lcom/snapchat/android/model/Friend;->mSuggestReasonDisplay:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 29
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->l()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    iget-object v1, p1, Lcom/snapchat/android/model/Friend;->mSuggestReasonDisplay:Ljava/lang/String;

    aput-object v1, v0, v3

    const v1, 0x7f0c013f

    invoke-static {v4, v1, v0}, Lauv;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 35
    :goto_0
    return-object v0

    .line 32
    :cond_0
    iget-object v0, p1, Lcom/snapchat/android/model/Friend;->mSuggestReason:Lblo$a;

    sget-object v1, Lblo$a;->NEW_SNAPCHATTER:Lblo$a;

    if-ne v0, v1, :cond_1

    .line 33
    new-array v0, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->l()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const v1, 0x7f0c0140

    invoke-static {v4, v1, v0}, Lauv;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 35
    :cond_1
    new-array v0, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->l()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const v1, 0x7f0c013e

    invoke-static {v4, v1, v0}, Lauv;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
