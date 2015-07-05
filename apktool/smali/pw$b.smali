.class public final Lpw$b;
.super Lbif;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation runtime Ltn;
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 170
    invoke-direct {p0}, Lbif;-><init>()V

    .line 171
    invoke-static {p0}, Lts;->b(Lbgy;)Lbgy;

    .line 172
    return-void
.end method
