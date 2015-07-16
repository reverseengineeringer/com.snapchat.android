.class public final Lbyv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbyh;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lbya;Ljava/lang/String;)Lbyl;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 63
    invoke-static {p2}, Lbyk;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 68
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 69
    new-instance v0, Lbyi;

    const-string v1, "Two numeric arguments are required."

    invoke-direct {v0, v1}, Lbyi;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 74
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 75
    new-instance v4, Ljava/lang/Double;

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->IEEEremainder(DD)D

    move-result-wide v0

    invoke-direct {v4, v0, v1}, Ljava/lang/Double;-><init>(D)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    new-instance v0, Lbyl;

    invoke-virtual {v4}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v5}, Lbyl;-><init>(Ljava/lang/String;I)V

    return-object v0

    .line 76
    :catch_0
    move-exception v0

    .line 77
    new-instance v1, Lbyi;

    const-string v2, "Two numeric arguments are required."

    invoke-direct {v1, v2, v0}, Lbyi;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    const-string v0, "IEEEremainder"

    return-object v0
.end method
