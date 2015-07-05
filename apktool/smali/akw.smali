.class public final Lakw;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final c:Ljava/lang/Integer;

.field public final replayed:Ljava/lang/Integer;

.field public final sv:Ljava/lang/Double;

.field public final t:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Laje;)V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-virtual {p1}, Laje;->E()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lakw;->t:Ljava/lang/Long;

    .line 13
    invoke-virtual {p1}, Laje;->aq()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lakw;->c:Ljava/lang/Integer;

    .line 14
    invoke-virtual {p1}, Laje;->u()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lakw;->replayed:Ljava/lang/Integer;

    .line 15
    invoke-virtual {p1}, Laje;->y()J

    move-result-wide v0

    long-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lakw;->sv:Ljava/lang/Double;

    .line 16
    return-void

    :cond_0
    move v0, v2

    .line 13
    goto :goto_0

    :cond_1
    move v1, v2

    .line 14
    goto :goto_1
.end method
