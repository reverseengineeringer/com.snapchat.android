.class final Lbmw$1;
.super Lbmd;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbmw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 102
    invoke-direct {p0}, Lbmd;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .prologue
    .line 107
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final b()Lbzw;
    .locals 1

    .prologue
    .line 110
    new-instance v0, Lbzu;

    invoke-direct {v0}, Lbzu;-><init>()V

    return-object v0
.end method
