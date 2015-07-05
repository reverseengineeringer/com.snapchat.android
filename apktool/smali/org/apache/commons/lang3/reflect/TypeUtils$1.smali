.class final Lorg/apache/commons/lang3/reflect/TypeUtils$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/lang3/reflect/Typed;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/lang3/reflect/TypeUtils;->wrap(Ljava/lang/reflect/Type;)Lorg/apache/commons/lang3/reflect/Typed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/lang3/reflect/Typed",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$type:Ljava/lang/reflect/Type;


# direct methods
.method constructor <init>(Ljava/lang/reflect/Type;)V
    .locals 0

    .prologue
    .line 1716
    iput-object p1, p0, Lorg/apache/commons/lang3/reflect/TypeUtils$1;->val$type:Ljava/lang/reflect/Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getType()Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 1719
    iget-object v0, p0, Lorg/apache/commons/lang3/reflect/TypeUtils$1;->val$type:Ljava/lang/reflect/Type;

    return-object v0
.end method
