.class public final Lbys;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbxg;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lbwz;Ljava/lang/String;)Lbxk;
    .locals 3

    .prologue
    .line 65
    const-string v1, "One string argument is required."

    .line 71
    :try_start_0
    iget-char v0, p1, Lbwz;->a:C

    invoke-static {p2, v0}, Lbxj;->a(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    .line 74
    new-instance v2, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/lang/Integer;-><init>(I)V
    :try_end_0
    .catch Lbxh; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 81
    new-instance v0, Lbxk;

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lbxk;-><init>(Ljava/lang/String;I)V

    return-object v0

    .line 75
    :catch_0
    move-exception v0

    .line 76
    new-instance v1, Lbxh;

    invoke-virtual {v0}, Lbxh;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lbxh;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 77
    :catch_1
    move-exception v0

    .line 78
    new-instance v2, Lbxh;

    invoke-direct {v2, v1, v0}, Lbxh;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    const-string v0, "length"

    return-object v0
.end method
