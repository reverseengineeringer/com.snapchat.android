.class final Lact;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lbgk;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lbgk;

    invoke-direct {v0}, Lbgk;-><init>()V

    invoke-direct {p0, v0}, Lact;-><init>(Lbgk;)V

    .line 16
    return-void
.end method

.method private constructor <init>(Lbgk;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lact;->a:Lbgk;

    .line 20
    return-void
.end method

.method public static a(Lcom/snapchat/android/discover/model/DSnapPage;JJI)Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 34
    const-wide/16 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, p1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 35
    const-wide/32 v4, 0x36ee80

    mul-long/2addr v4, p3

    .line 36
    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    .line 40
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/snapchat/android/discover/model/DSnapPage;->f:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge v1, p5, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
