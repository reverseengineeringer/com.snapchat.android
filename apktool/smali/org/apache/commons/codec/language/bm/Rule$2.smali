.class final Lorg/apache/commons/codec/language/bm/Rule$2;
.super Lorg/apache/commons/codec/language/bm/Rule;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/codec/language/bm/Rule;->parseRules(Ljava/util/Scanner;Ljava/lang/String;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private final loc:Ljava/lang/String;

.field private final myLine:I

.field final synthetic val$cLine:I

.field final synthetic val$location:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/commons/codec/language/bm/Rule$PhonemeExpr;ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 371
    iput p5, p0, Lorg/apache/commons/codec/language/bm/Rule$2;->val$cLine:I

    iput-object p6, p0, Lorg/apache/commons/codec/language/bm/Rule$2;->val$location:Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/codec/language/bm/Rule;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/commons/codec/language/bm/Rule$PhonemeExpr;)V

    .line 372
    iget v0, p0, Lorg/apache/commons/codec/language/bm/Rule$2;->val$cLine:I

    iput v0, p0, Lorg/apache/commons/codec/language/bm/Rule$2;->myLine:I

    .line 373
    iget-object v0, p0, Lorg/apache/commons/codec/language/bm/Rule$2;->val$location:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/commons/codec/language/bm/Rule$2;->loc:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 377
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 378
    const-string v1, "Rule"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    const-string v1, "{line="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/commons/codec/language/bm/Rule$2;->myLine:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 380
    const-string v1, ", loc=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/codec/language/bm/Rule$2;->loc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 381
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 382
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
