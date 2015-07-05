.class public abstract Lbfm;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mCrasher:Lazj;

.field public mIsReleased:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-static {}, Lazj;->a()Lazj;

    move-result-object v0

    invoke-direct {p0, v0}, Lbfm;-><init>(Lazj;)V

    .line 23
    return-void
.end method

.method private constructor <init>(Lazj;)V
    .locals 1
    .param p1    # Lazj;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbfm;->mIsReleased:Z

    .line 27
    iput-object p1, p0, Lbfm;->mCrasher:Lazj;

    .line 28
    return-void
.end method


# virtual methods
.method public abstract c()V
.end method

.method public final e()V
    .locals 3

    .prologue
    .line 39
    iget-boolean v0, p0, Lbfm;->mIsReleased:Z

    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Attempt to release object that was already released"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    :goto_0
    return-void

    .line 44
    :cond_0
    invoke-virtual {p0}, Lbfm;->c()V

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbfm;->mIsReleased:Z

    goto :goto_0
.end method

.method public final f()V
    .locals 3

    .prologue
    .line 76
    iget-boolean v0, p0, Lbfm;->mIsReleased:Z

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
    .locals 3

    .prologue
    .line 62
    iget-boolean v0, p0, Lbfm;->mIsReleased:Z

    if-nez v0, :cond_0

    .line 63
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 64
    const-string v1, "Failed to release!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    invoke-static {}, Lazj;->b()V

    .line 68
    invoke-virtual {p0}, Lbfm;->e()V

    .line 70
    :cond_0
    return-void
.end method
