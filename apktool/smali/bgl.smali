.class public final Lbgl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbgk;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbgl$b;,
        Lbgl$c;,
        Lbgl$a;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DynamicByteBuffer"


# instance fields
.field public mBuffer:[B

.field private final mExpansionStrategy:Lbgl$a;

.field public mSize:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 72
    const v0, 0x3e800

    new-instance v1, Lbgl$c;

    invoke-direct {v1}, Lbgl$c;-><init>()V

    invoke-direct {p0, v0, v1}, Lbgl;-><init>(ILbgl$a;)V

    .line 73
    return-void
.end method

.method public constructor <init>(ILbgl$a;)V
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Lbgl;->mSize:I

    .line 82
    iput-object p2, p0, Lbgl;->mExpansionStrategy:Lbgl$a;

    .line 83
    new-array v0, p1, [B

    iput-object v0, p0, Lbgl;->mBuffer:[B

    .line 84
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lbgl;->mSize:I

    return v0
.end method

.method public final a(Ljava/io/InputStream;)I
    .locals 8
    .param p1    # Ljava/io/InputStream;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 103
    .line 105
    iget-object v0, p0, Lbgl;->mBuffer:[B

    array-length v0, v0

    move v1, v2

    .line 107
    :cond_0
    :goto_0
    iget-object v3, p0, Lbgl;->mBuffer:[B

    invoke-virtual {p1, v3, v1, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 110
    sub-int/2addr v0, v3

    .line 111
    add-int/2addr v1, v3

    .line 113
    if-gez v0, :cond_1

    .line 114
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v3, "AvailableSize (%d) should not be less than 0!"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 120
    :cond_1
    if-nez v0, :cond_0

    .line 121
    iget-object v0, p0, Lbgl;->mExpansionStrategy:Lbgl$a;

    iget-object v3, p0, Lbgl;->mBuffer:[B

    array-length v3, v3

    invoke-interface {v0, v3}, Lbgl$a;->a(I)I

    move-result v3

    .line 122
    iget-object v0, p0, Lbgl;->mBuffer:[B

    array-length v0, v0

    sub-int v0, v3, v0

    .line 124
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    iget-object v5, p0, Lbgl;->mBuffer:[B

    array-length v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 129
    :try_start_0
    new-array v3, v3, [B
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :goto_1
    iget-object v4, p0, Lbgl;->mBuffer:[B

    iget-object v5, p0, Lbgl;->mBuffer:[B

    array-length v5, v5

    invoke-static {v4, v2, v3, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 138
    iput-object v3, p0, Lbgl;->mBuffer:[B

    goto :goto_0

    .line 131
    :catch_0
    move-exception v4

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    .line 133
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 134
    new-array v3, v3, [B

    goto :goto_1

    .line 142
    :cond_2
    iput v1, p0, Lbgl;->mSize:I

    .line 143
    iget v0, p0, Lbgl;->mSize:I

    return v0
.end method

.method public final b()[B
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lbgl;->mBuffer:[B

    return-object v0
.end method
