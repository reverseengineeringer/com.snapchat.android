.class public final Lbyn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbxg;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lbwz;Ljava/lang/String;)Lbxk;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 72
    const-string v1, "Two string arguments are required."

    .line 75
    invoke-static {p2}, Lbxj;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 78
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    .line 79
    new-instance v0, Lbxh;

    invoke-direct {v0, v1}, Lbxh;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-char v3, p1, Lbwz;->a:C

    invoke-static {v0, v3}, Lbxj;->a(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v3

    .line 85
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-char v2, p1, Lbwz;->a:C

    invoke-static {v0, v2}, Lbxj;->a(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    .line 88
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    const-string v0, "1.0"
    :try_end_0
    .catch Lbxh; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 99
    :goto_0
    new-instance v1, Lbxk;

    invoke-direct {v1, v0, v4}, Lbxk;-><init>(Ljava/lang/String;I)V

    return-object v1

    .line 91
    :cond_1
    :try_start_1
    const-string v0, "0.0"
    :try_end_1
    .catch Lbxh; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 93
    :catch_0
    move-exception v0

    .line 94
    new-instance v1, Lbxh;

    invoke-virtual {v0}, Lbxh;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lbxh;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 95
    :catch_1
    move-exception v0

    .line 96
    new-instance v2, Lbxh;

    invoke-direct {v2, v1, v0}, Lbxh;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    const-string v0, "equals"

    return-object v0
.end method
