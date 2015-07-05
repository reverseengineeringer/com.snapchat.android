.class public final Lbfl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbfk;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbfl$b;,
        Lbfl$c;,
        Lbfl$a;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DynamicByteBuffer"


# instance fields
.field public mBuffer:[B

.field private final mExpansionStrategy:Lbfl$a;

.field public mSize:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 73
    const v0, 0x3e800

    new-instance v1, Lbfl$c;

    invoke-direct {v1}, Lbfl$c;-><init>()V

    invoke-direct {p0, v0, v1}, Lbfl;-><init>(ILbfl$a;)V

    .line 74
    return-void
.end method

.method public constructor <init>(ILbfl$a;)V
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Lbfl;->mSize:I

    .line 83
    iput-object p2, p0, Lbfl;->mExpansionStrategy:Lbfl$a;

    .line 84
    new-array v0, p1, [B

    iput-object v0, p0, Lbfl;->mBuffer:[B

    .line 85
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lbfl;->mSize:I

    return v0
.end method

.method public final a(Ljava/io/InputStream;Lbfk$a;)I
    .locals 11
    .param p1    # Ljava/io/InputStream;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Lbfk$a;
        .annotation build Lcgc;
        .end annotation
    .end param

    .prologue
    const/4 v10, 0x1

    const/4 v2, 0x0

    .line 105
    .line 107
    iget-object v0, p0, Lbfl;->mBuffer:[B

    array-length v0, v0

    move v1, v2

    .line 109
    :goto_0
    iget-object v3, p0, Lbfl;->mBuffer:[B

    invoke-virtual {p1, v3, v1, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    const/4 v3, -0x1

    if-eq v4, v3, :cond_2

    .line 112
    sub-int/2addr v0, v4

    .line 113
    add-int/2addr v1, v4

    .line 115
    if-gez v0, :cond_0

    .line 116
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v3, "AvailableSize (%d) should not be less than 0!"

    new-array v4, v10, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 122
    :cond_0
    if-nez v0, :cond_1

    .line 123
    iget-object v0, p0, Lbfl;->mExpansionStrategy:Lbfl$a;

    iget-object v3, p0, Lbfl;->mBuffer:[B

    array-length v3, v3

    invoke-interface {v0, v3}, Lbfl$a;->a(I)I

    move-result v0

    .line 124
    iget-object v3, p0, Lbfl;->mBuffer:[B

    array-length v3, v3

    sub-int v3, v0, v3

    .line 126
    const-string v5, "DynamicByteBuffer"

    const-string v6, "Increasing dynamic byte buffer (%s) size from %d to %d bytes"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v2

    iget-object v8, p0, Lbfl;->mBuffer:[B

    array-length v8, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    const/4 v8, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 131
    :try_start_0
    new-array v0, v0, [B
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :goto_1
    iget-object v5, p0, Lbfl;->mBuffer:[B

    iget-object v6, p0, Lbfl;->mBuffer:[B

    array-length v6, v6

    invoke-static {v5, v2, v0, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 140
    iput-object v0, p0, Lbfl;->mBuffer:[B

    move v0, v3

    .line 143
    :cond_1
    invoke-interface {p2, v4}, Lbfk$a;->a(I)V

    goto :goto_0

    .line 133
    :catch_0
    move-exception v5

    const-string v5, "DynamicByteBuffer"

    const-string v6, "Out of memory exception caught while trying to allocated %d bytes. Running GC then trying again."

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-static {v5, v6, v7}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 136
    new-array v0, v0, [B

    goto :goto_1

    .line 148
    :cond_2
    iput v1, p0, Lbfl;->mSize:I

    .line 149
    iget v0, p0, Lbfl;->mSize:I

    return v0
.end method

.method public final b()[B
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lbfl;->mBuffer:[B

    return-object v0
.end method
