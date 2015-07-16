.class public final Lamq;
.super Lamr;
.source "SourceFile"


# instance fields
.field private volatile f:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-static {}, Lalw;->a()Lalw;

    move-result-object v0

    invoke-direct {p0, v0}, Lamq;-><init>(Lalw;)V

    .line 19
    return-void
.end method

.method private constructor <init>(Lalw;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lamr;-><init>(Lalw;)V

    .line 24
    return-void
.end method


# virtual methods
.method protected final a(Lbgl;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 47
    if-eqz p1, :cond_0

    .line 48
    iget v1, p1, Lbgl;->mSize:I

    new-array v1, v1, [B

    iput-object v1, p0, Lamq;->f:[B

    .line 49
    iget-object v1, p1, Lbgl;->mBuffer:[B

    iget-object v2, p0, Lamq;->f:[B

    iget v3, p1, Lbgl;->mSize:I

    invoke-static {v1, v0, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 50
    const/4 v0, 0x1

    .line 53
    :cond_0
    return v0
.end method

.method public final a(Ljava/lang/String;Landroid/os/Bundle;Lcom/snapchat/android/networkmanager/DownloadPriority;Lcom/snapchat/android/networkmanager/DownloadPriority;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 1

    .prologue
    .line 39
    invoke-virtual/range {p0 .. p6}, Lamq;->b(Ljava/lang/String;Landroid/os/Bundle;Lcom/snapchat/android/networkmanager/DownloadPriority;Lcom/snapchat/android/networkmanager/DownloadPriority;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lamq;->f:[B

    .line 42
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
