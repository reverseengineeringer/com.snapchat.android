.class public final Lbyt;
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
    const/4 v5, 0x1

    .line 74
    const-string v1, "One string argument and two character arguments are required."

    .line 78
    invoke-static {p2}, Lbxj;->b(Ljava/lang/String;)Ljava/util/ArrayList;

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

    .line 89
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-char v4, p1, Lbwz;->a:C

    invoke-static {v0, v4}, Lbxj;->a(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v4

    .line 92
    const/4 v0, 0x2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-char v2, p1, Lbwz;->a:C

    invoke-static {v0, v2}, Lbxj;->a(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    .line 95
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v5, :cond_1

    .line 97
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 102
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v5, :cond_2

    .line 104
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 109
    invoke-virtual {v3, v2, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;
    :try_end_0
    .catch Lbxh; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 116
    new-instance v1, Lbxk;

    invoke-direct {v1, v0, v5}, Lbxk;-><init>(Ljava/lang/String;I)V

    return-object v1

    .line 99
    :cond_1
    :try_start_1
    new-instance v0, Lbxh;

    invoke-direct {v0, v1}, Lbxh;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Lbxh; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 110
    :catch_0
    move-exception v0

    .line 111
    new-instance v1, Lbxh;

    invoke-virtual {v0}, Lbxh;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lbxh;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 106
    :cond_2
    :try_start_2
    new-instance v0, Lbxh;

    invoke-direct {v0, v1}, Lbxh;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Lbxh; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 112
    :catch_1
    move-exception v0

    .line 113
    new-instance v2, Lbxh;

    invoke-direct {v2, v1, v0}, Lbxh;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    const-string v0, "replace"

    return-object v0
.end method
