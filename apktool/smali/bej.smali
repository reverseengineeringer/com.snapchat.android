.class public final Lbej;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final eventTimeMilliseconds:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 12
    new-instance v0, Lbgk;

    invoke-direct {v0}, Lbgk;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lbej;-><init>(J)V

    .line 13
    return-void
.end method

.method private constructor <init>(J)V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-wide p1, p0, Lbej;->eventTimeMilliseconds:J

    .line 17
    return-void
.end method
