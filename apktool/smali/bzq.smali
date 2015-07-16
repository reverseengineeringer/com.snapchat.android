.class public final Lbzq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbyh;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lbya;Ljava/lang/String;)Lbyl;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 61
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1, p2, v1}, Lbya;->a(Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_0
    .catch Lbxy; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 71
    :try_start_1
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 76
    :goto_0
    new-instance v2, Lbyl;

    invoke-direct {v2, v1, v0}, Lbyl;-><init>(Ljava/lang/String;I)V

    return-object v2

    .line 65
    :catch_0
    move-exception v0

    .line 66
    new-instance v1, Lbyi;

    invoke-virtual {v0}, Lbxy;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lbyi;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 73
    :catch_1
    move-exception v0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    const-string v0, "eval"

    return-object v0
.end method
