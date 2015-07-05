.class public final Lbas;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mShouldReturnToChatFragment:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbas;->mShouldReturnToChatFragment:Z

    .line 7
    return-void
.end method

.method public constructor <init>(B)V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbas;->mShouldReturnToChatFragment:Z

    .line 10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbas;->mShouldReturnToChatFragment:Z

    .line 11
    return-void
.end method
