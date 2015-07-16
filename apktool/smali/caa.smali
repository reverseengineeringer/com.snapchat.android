.class public final Lcaa;
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
    .line 66
    const-string v1, "One string argument is required."

    .line 72
    :try_start_0
    iget-char v0, p1, Lbya;->a:C

    invoke-static {p2, v0}, Lbyk;->a(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Lbyi; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 82
    new-instance v1, Lbyl;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lbyl;-><init>(Ljava/lang/String;I)V

    return-object v1

    .line 76
    :catch_0
    move-exception v0

    .line 77
    new-instance v1, Lbyi;

    invoke-virtual {v0}, Lbyi;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lbyi;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 78
    :catch_1
    move-exception v0

    .line 79
    new-instance v2, Lbyi;

    invoke-direct {v2, v1, v0}, Lbyi;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    const-string v0, "trim"

    return-object v0
.end method
