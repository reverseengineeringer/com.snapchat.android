.class public final Lben;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final mMediabryo:Laji;

.field public final mShouldGoToSendTo:Z


# direct methods
.method public constructor <init>(Laji;)V
    .locals 1
    .param p1    # Laji;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 13
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lben;-><init>(Laji;Z)V

    .line 14
    return-void
.end method

.method public constructor <init>(Laji;Z)V
    .locals 1
    .param p1    # Laji;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    if-nez p1, :cond_0

    .line 18
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 20
    :cond_0
    iput-object p1, p0, Lben;->mMediabryo:Laji;

    .line 21
    iput-boolean p2, p0, Lben;->mShouldGoToSendTo:Z

    .line 22
    return-void
.end method
