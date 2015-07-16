.class public final Lcad;
.super Lcab;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 28
    const-string v0, "&&"

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcab;-><init>(Ljava/lang/String;I)V

    .line 29
    return-void
.end method


# virtual methods
.method public final a(DD)D
    .locals 3

    .prologue
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 40
    cmpl-double v2, p1, v0

    if-nez v2, :cond_0

    cmpl-double v2, p3, v0

    if-nez v2, :cond_0

    .line 44
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method
