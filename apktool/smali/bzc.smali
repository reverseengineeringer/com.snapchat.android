.class public final Lbzc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbyh;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lbya;Ljava/lang/String;)Lbyl;
    .locals 4

    .prologue
    .line 59
    :try_start_0
    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, p2}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    new-instance v1, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->rint(D)D

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/lang/Double;-><init>(D)V

    .line 70
    new-instance v0, Lbyl;

    invoke-virtual {v1}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lbyl;-><init>(Ljava/lang/String;I)V

    return-object v0

    .line 64
    :catch_0
    move-exception v0

    .line 65
    new-instance v1, Lbyi;

    const-string v2, "Invalid argument."

    invoke-direct {v1, v2, v0}, Lbyi;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    const-string v0, "rint"

    return-object v0
.end method
