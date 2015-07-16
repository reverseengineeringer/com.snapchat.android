.class public final Lqo$a;
.super Lbjz;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation runtime Lud;
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Lbjz;-><init>()V

    .line 96
    invoke-static {p0}, Lui;->buildStaticAuthPayload(Lbhy;)Lbhy;

    .line 97
    return-void
.end method
