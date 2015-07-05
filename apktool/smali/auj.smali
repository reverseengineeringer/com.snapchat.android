.class public final Lauj;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lauj$a;
    }
.end annotation


# instance fields
.field public final mOrientationListener:Landroid/view/OrientationEventListener;

.field final mReportRotation:I

.field public mRotation:I

.field public mScreenRotationListener:Lauj$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lauj;->mScreenRotationListener:Lauj$a;

    .line 72
    new-instance v0, Lauj$1;

    invoke-direct {v0, p0, p1}, Lauj$1;-><init>(Lauj;Landroid/content/Context;)V

    iput-object v0, p0, Lauj;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 78
    const/16 v0, 0x1011

    iput v0, p0, Lauj;->mReportRotation:I

    .line 79
    const/4 v0, 0x0

    iput v0, p0, Lauj;->mRotation:I

    .line 80
    return-void
.end method

.method static a(III)Z
    .locals 1

    .prologue
    .line 123
    if-gt p1, p0, :cond_0

    if-gt p0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
