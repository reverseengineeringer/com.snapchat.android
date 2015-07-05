.class final Lorg/apache/commons/codec/language/bm/PhoneticEngine$RulesApplication;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/codec/language/bm/PhoneticEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RulesApplication"
.end annotation


# instance fields
.field private final finalRules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/codec/language/bm/Rule;",
            ">;"
        }
    .end annotation
.end field

.field private found:Z

.field private i:I

.field private final input:Ljava/lang/CharSequence;

.field private phonemeBuilder:Lorg/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/CharSequence;Lorg/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/codec/language/bm/Rule;",
            ">;",
            "Ljava/lang/CharSequence;",
            "Lorg/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    if-nez p1, :cond_0

    .line 175
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The finalRules argument must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/codec/language/bm/PhoneticEngine$RulesApplication;->finalRules:Ljava/util/List;

    .line 178
    iput-object p3, p0, Lorg/apache/commons/codec/language/bm/PhoneticEngine$RulesApplication;->phonemeBuilder:Lorg/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;

    .line 179
    iput-object p2, p0, Lorg/apache/commons/codec/language/bm/PhoneticEngine$RulesApplication;->input:Ljava/lang/CharSequence;

    .line 180
    iput p4, p0, Lorg/apache/commons/codec/language/bm/PhoneticEngine$RulesApplication;->i:I

    .line 181
    return-void
.end method


# virtual methods
.method public final getI()I
    .locals 1

    .prologue
    .line 184
    iget v0, p0, Lorg/apache/commons/codec/language/bm/PhoneticEngine$RulesApplication;->i:I

    return v0
.end method

.method public final getPhonemeBuilder()Lorg/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lorg/apache/commons/codec/language/bm/PhoneticEngine$RulesApplication;->phonemeBuilder:Lorg/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;

    return-object v0
.end method

.method public final invoke()Lorg/apache/commons/codec/language/bm/PhoneticEngine$RulesApplication;
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 199
    iput-boolean v0, p0, Lorg/apache/commons/codec/language/bm/PhoneticEngine$RulesApplication;->found:Z

    .line 201
    iget-object v1, p0, Lorg/apache/commons/codec/language/bm/PhoneticEngine$RulesApplication;->finalRules:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/codec/language/bm/Rule;

    .line 202
    invoke-virtual {v0}, Lorg/apache/commons/codec/language/bm/Rule;->getPattern()Ljava/lang/String;

    move-result-object v1

    .line 203
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    .line 206
    iget-object v4, p0, Lorg/apache/commons/codec/language/bm/PhoneticEngine$RulesApplication;->input:Ljava/lang/CharSequence;

    iget v5, p0, Lorg/apache/commons/codec/language/bm/PhoneticEngine$RulesApplication;->i:I

    invoke-virtual {v0, v4, v5}, Lorg/apache/commons/codec/language/bm/Rule;->patternAndContextMatches(Ljava/lang/CharSequence;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 208
    iget-object v3, p0, Lorg/apache/commons/codec/language/bm/PhoneticEngine$RulesApplication;->phonemeBuilder:Lorg/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;

    invoke-virtual {v0}, Lorg/apache/commons/codec/language/bm/Rule;->getPhoneme()Lorg/apache/commons/codec/language/bm/Rule$PhonemeExpr;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;->apply(Lorg/apache/commons/codec/language/bm/Rule$PhonemeExpr;)Lorg/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/codec/language/bm/PhoneticEngine$RulesApplication;->phonemeBuilder:Lorg/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;

    .line 212
    iput-boolean v2, p0, Lorg/apache/commons/codec/language/bm/PhoneticEngine$RulesApplication;->found:Z

    .line 213
    :goto_1
    iget-boolean v0, p0, Lorg/apache/commons/codec/language/bm/PhoneticEngine$RulesApplication;->found:Z

    if-nez v0, :cond_0

    move v1, v2

    .line 220
    :cond_0
    iget v0, p0, Lorg/apache/commons/codec/language/bm/PhoneticEngine$RulesApplication;->i:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/codec/language/bm/PhoneticEngine$RulesApplication;->i:I

    .line 221
    return-object p0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v1, v0

    goto :goto_1
.end method

.method public final isFound()Z
    .locals 1

    .prologue
    .line 225
    iget-boolean v0, p0, Lorg/apache/commons/codec/language/bm/PhoneticEngine$RulesApplication;->found:Z

    return v0
.end method
