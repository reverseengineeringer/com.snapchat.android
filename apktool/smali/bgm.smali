.class public abstract Lbgm;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mCrasher:Lbai;

.field public mIsReleased:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-static {}, Lbai;->a()Lbai;

    move-result-object v0

    invoke-direct {p0, v0}, Lbgm;-><init>(Lbai;)V

    .line 23
    return-void
.end method

.method private constructor <init>(Lbai;)V
    .locals 1
    .param p1    # Lbai;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbgm;->mIsReleased:Z

    .line 27
    iput-object p1, p0, Lbgm;->mCrasher:Lbai;

    .line 28
    return-void
.end method


# virtual methods
.method public abstract c()V
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Lbgm;->mIsReleased:Z

    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 47
    :goto_0
    return-void

    .line 44
    :cond_0
    invoke-virtual {p0}, Lbgm;->c()V

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbgm;->mIsReleased:Z

    goto :goto_0
.end method

.method public final f()V
    .locals 3

    .prologue
    .line 76
    iget-boolean v0, p0, Lbgm;->mIsReleased:Z

    if-eqz v0, :cond_0

    .line 77
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " already released!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_0
    return-void
.end method

.method public finalize()V
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lbgm;->mIsReleased:Z

    if-nez v0, :cond_0

    .line 63
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 64
    invoke-virtual {p0}, Lbgm;->e()V

    .line 70
    :cond_0
    return-void
.end method
