.class public final Lbzj;
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
    const/4 v5, 0x1

    .line 71
    const-string v1, "One string and one integer argument are required."

    .line 75
    invoke-static {p2}, Lbyk;->c(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 78
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    .line 79
    new-instance v0, Lbyi;

    invoke-direct {v0, v1}, Lbyi;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-char v3, p1, Lbya;->a:C

    invoke-static {v0, v3}, Lbyk;->a(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v3

    .line 85
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 87
    const/4 v2, 0x1

    new-array v2, v2, [C

    .line 88
    const/4 v4, 0x0

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    aput-char v0, v2, v4

    .line 90
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V
    :try_end_0
    .catch Lbyi; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 97
    new-instance v1, Lbyl;

    invoke-direct {v1, v0, v5}, Lbyl;-><init>(Ljava/lang/String;I)V

    return-object v1

    .line 91
    :catch_0
    move-exception v0

    .line 92
    new-instance v1, Lbyi;

    invoke-virtual {v0}, Lbyi;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lbyi;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 93
    :catch_1
    move-exception v0

    .line 94
    new-instance v2, Lbyi;

    invoke-direct {v2, v1, v0}, Lbyi;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    const-string v0, "charAt"

    return-object v0
.end method
