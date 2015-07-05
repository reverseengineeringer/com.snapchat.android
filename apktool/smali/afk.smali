.class public final Lafk;
.super Lafe;
.source "SourceFile"


# instance fields
.field private final a:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lajv;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lajv;

.field private final c:Z


# direct methods
.method private constructor <init>(Ljavax/inject/Provider;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lajv;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0}, Lafe;-><init>()V

    .line 34
    iput-object p1, p0, Lafk;->a:Ljavax/inject/Provider;

    .line 35
    iput-boolean p2, p0, Lafk;->c:Z

    .line 36
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lajv;->UNSAFE_USER_PROVIDER:Ljavax/inject/Provider;

    invoke-direct {p0, v0, p1}, Lafk;-><init>(Ljavax/inject/Provider;Z)V

    .line 30
    return-void
.end method

.method private c(Lcom/snapchat/android/model/Friend;)Ljava/lang/String;
    .locals 4
    .param p1    # Lcom/snapchat/android/model/Friend;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 78
    iget-object v0, p0, Lafk;->b:Lajv;

    if-nez v0, :cond_0

    iget-object v0, p0, Lafk;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajv;

    iput-object v0, p0, Lafk;->b:Lajv;

    :cond_0
    iget-object v0, p0, Lafk;->b:Lajv;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lafk;->b:Lajv;

    invoke-virtual {v0, p1}, Lajv;->b(Lcom/snapchat/android/model/Friend;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_2

    .line 79
    new-array v0, v2, [Ljava/lang/Object;

    const v2, 0x7f0c0151

    invoke-static {v1, v2, v0}, Latx;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 87
    :goto_1
    return-object v0

    :cond_1
    move v0, v2

    .line 78
    goto :goto_0

    .line 80
    :cond_2
    iget-object v0, p1, Lcom/snapchat/android/model/Friend;->mAddSourceType:Lcom/snapchat/android/model/Friend$AddSourceType;

    sget-object v3, Lcom/snapchat/android/model/Friend$AddSourceType;->ADDED_BY_QR_CODE:Lcom/snapchat/android/model/Friend$AddSourceType;

    if-ne v0, v3, :cond_3

    .line 81
    new-array v0, v2, [Ljava/lang/Object;

    const v2, 0x7f0c0031

    invoke-static {v1, v2, v0}, Latx;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 82
    :cond_3
    iget-object v0, p1, Lcom/snapchat/android/model/Friend;->mAddSourceType:Lcom/snapchat/android/model/Friend$AddSourceType;

    sget-object v3, Lcom/snapchat/android/model/Friend$AddSourceType;->ADDED_BY_PHONE:Lcom/snapchat/android/model/Friend$AddSourceType;

    if-ne v0, v3, :cond_4

    .line 83
    new-array v0, v2, [Ljava/lang/Object;

    const v2, 0x7f0c0030

    invoke-static {v1, v2, v0}, Latx;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 84
    :cond_4
    iget-object v0, p1, Lcom/snapchat/android/model/Friend;->mAddSourceType:Lcom/snapchat/android/model/Friend$AddSourceType;

    sget-object v3, Lcom/snapchat/android/model/Friend$AddSourceType;->ADDED_BY_USERNAME:Lcom/snapchat/android/model/Friend$AddSourceType;

    if-ne v0, v3, :cond_5

    .line 85
    new-array v0, v2, [Ljava/lang/Object;

    const v2, 0x7f0c0032

    invoke-static {v1, v2, v0}, Latx;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    move-object v0, v1

    .line 87
    goto :goto_1
.end method


# virtual methods
.method public final a(Lcom/snapchat/android/model/Friend;Z)Ljava/lang/String;
    .locals 3
    .param p1    # Lcom/snapchat/android/model/Friend;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 44
    iget-boolean v0, p0, Lafk;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/snapchat/android/model/Friend;->mDirection:Lcom/snapchat/android/model/Friend$Direction;

    sget-object v1, Lcom/snapchat/android/model/Friend$Direction;->INCOMING:Lcom/snapchat/android/model/Friend$Direction;

    if-ne v0, v1, :cond_4

    .line 45
    :cond_0
    iget-object v0, p1, Lcom/snapchat/android/model/Friend;->mAddSource:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 50
    :goto_0
    return-object v0

    .line 45
    :cond_1
    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->j()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Lafk;->c(Lcom/snapchat/android/model/Friend;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->h()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x0

    const v2, 0x7f0c01f0

    invoke-static {v0, v2, v1}, Latx;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->h()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1}, Lafk;->c(Lcom/snapchat/android/model/Friend;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 46
    :cond_4
    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->n()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 47
    invoke-virtual {p0, p1}, Lafk;->b(Lcom/snapchat/android/model/Friend;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 50
    :cond_5
    invoke-super {p0, p1, p2}, Lafe;->a(Lcom/snapchat/android/model/Friend;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
