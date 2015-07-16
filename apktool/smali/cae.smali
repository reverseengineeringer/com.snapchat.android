.class public final Lcae;
.super Lcab;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 28
    const-string v0, "!"

    invoke-direct {p0, v0, v1, v1}, Lcab;-><init>(Ljava/lang/String;IB)V

    .line 29
    return-void
.end method


# virtual methods
.method public final a(D)D
    .locals 3

    .prologue
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 38
    cmpl-double v2, p1, v0

    if-nez v2, :cond_0

    .line 39
    const-wide/16 v0, 0x0

    .line 42
    :cond_0
    return-wide v0
.end method
