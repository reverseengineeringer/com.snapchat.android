.class public final Lmw$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public mAdUnitId:Ljava/lang/String;

.field public mFirstPosition:I

.field public mMinimumRemaining:I

.field public mTargetingParams:Landroid/os/Bundle;

.field public mTimeoutSeconds:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    const/16 v0, 0x258

    iput v0, p0, Lmw$a;->mTimeoutSeconds:I

    .line 92
    const/4 v0, -0x1

    iput v0, p0, Lmw$a;->mFirstPosition:I

    .line 93
    return-void
.end method
