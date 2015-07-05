.class Lorg/apache/commons/lang3/builder/DiffBuilder$8;
.super Lorg/apache/commons/lang3/builder/Diff;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/lang3/builder/DiffBuilder;->append(Ljava/lang/String;[D[D)Lorg/apache/commons/lang3/builder/DiffBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/lang3/builder/Diff",
        "<[",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final synthetic this$0:Lorg/apache/commons/lang3/builder/DiffBuilder;

.field final synthetic val$lhs:[D

.field final synthetic val$rhs:[D


# direct methods
.method constructor <init>(Lorg/apache/commons/lang3/builder/DiffBuilder;Ljava/lang/String;[D[D)V
    .locals 0

    .prologue
    .line 431
    iput-object p1, p0, Lorg/apache/commons/lang3/builder/DiffBuilder$8;->this$0:Lorg/apache/commons/lang3/builder/DiffBuilder;

    iput-object p3, p0, Lorg/apache/commons/lang3/builder/DiffBuilder$8;->val$lhs:[D

    iput-object p4, p0, Lorg/apache/commons/lang3/builder/DiffBuilder$8;->val$rhs:[D

    invoke-direct {p0, p2}, Lorg/apache/commons/lang3/builder/Diff;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getLeft()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 431
    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/DiffBuilder$8;->getLeft()[Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public getLeft()[Ljava/lang/Double;
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/DiffBuilder$8;->val$lhs:[D

    invoke-static {v0}, Lorg/apache/commons/lang3/ArrayUtils;->toObject([D)[Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRight()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 431
    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/DiffBuilder$8;->getRight()[Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public getRight()[Ljava/lang/Double;
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/DiffBuilder$8;->val$rhs:[D

    invoke-static {v0}, Lorg/apache/commons/lang3/ArrayUtils;->toObject([D)[Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method
