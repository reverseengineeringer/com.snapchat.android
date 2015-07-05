.class public final Lorg/apache/commons/codec/language/bm/Rule$PhonemeList;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/codec/language/bm/Rule$PhonemeExpr;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/codec/language/bm/Rule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PhonemeList"
.end annotation


# instance fields
.field private final phonemes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/codec/language/bm/Rule$Phoneme;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/codec/language/bm/Rule$Phoneme;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput-object p1, p0, Lorg/apache/commons/codec/language/bm/Rule$PhonemeList;->phonemes:Ljava/util/List;

    .line 143
    return-void
.end method


# virtual methods
.method public final bridge synthetic getPhonemes()Ljava/lang/Iterable;
    .locals 1

    .prologue
    .line 138
    invoke-virtual {p0}, Lorg/apache/commons/codec/language/bm/Rule$PhonemeList;->getPhonemes()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getPhonemes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/codec/language/bm/Rule$Phoneme;",
            ">;"
        }
    .end annotation

    .prologue
    .line 146
    iget-object v0, p0, Lorg/apache/commons/codec/language/bm/Rule$PhonemeList;->phonemes:Ljava/util/List;

    return-object v0
.end method
