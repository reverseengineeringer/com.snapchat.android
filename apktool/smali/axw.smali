.class public final Laxw;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final mAlgorithm:Laza;
    .annotation build Lchd;
    .end annotation
.end field

.field public final mCache:Laxn;
    .annotation build Lchc;
    .end annotation
.end field

.field public final mKey:Ljava/lang/String;
    .annotation build Lchc;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Laxn;Ljava/lang/String;Laza;)V
    .locals 2
    .param p1    # Laxn;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p3    # Laza;
        .annotation build Lchd;
        .end annotation
    .end param

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "cache is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 22
    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "key is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 24
    :cond_1
    iput-object p1, p0, Laxw;->mCache:Laxn;

    .line 25
    iput-object p2, p0, Laxw;->mKey:Ljava/lang/String;

    .line 26
    iput-object p3, p0, Laxw;->mAlgorithm:Laza;

    .line 27
    return-void
.end method
