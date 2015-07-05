.class public final Lbyu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbxg;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lbwz;Ljava/lang/String;)Lbxk;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 74
    const-string v1, "Two string arguments and one integer argument are required."

    .line 78
    invoke-static {p2}, Lbxj;->d(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 81
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    .line 82
    new-instance v0, Lbxh;

    invoke-direct {v0, v1}, Lbxh;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-char v3, p1, Lbwz;->a:C

    invoke-static {v0, v3}, Lbxj;->a(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v3

    .line 88
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-char v4, p1, Lbwz;->a:C

    invoke-static {v0, v4}, Lbxj;->a(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v4

    .line 90
    const/4 v0, 0x2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 92
    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    const-string v0, "1.0"
    :try_end_0
    .catch Lbxh; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 103
    :goto_0
    new-instance v1, Lbxk;

    invoke-direct {v1, v0, v5}, Lbxk;-><init>(Ljava/lang/String;I)V

    return-object v1

    .line 95
    :cond_1
    :try_start_1
    const-string v0, "0.0"
    :try_end_1
    .catch Lbxh; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 97
    :catch_0
    move-exception v0

    .line 98
    new-instance v1, Lbxh;

    invoke-virtual {v0}, Lbxh;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lbxh;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 99
    :catch_1
    move-exception v0

    .line 100
    new-instance v2, Lbxh;

    invoke-direct {v2, v1, v0}, Lbxh;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    const-string v0, "startsWith"

    return-object v0
.end method
