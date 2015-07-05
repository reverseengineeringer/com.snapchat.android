.class final Lorg/apache/commons/codec/language/bm/PhoneticEngine$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/CharSequence;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/codec/language/bm/PhoneticEngine;->cacheSubSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$cache:[[Ljava/lang/CharSequence;

.field final synthetic val$cached:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Ljava/lang/CharSequence;[[Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 249
    iput-object p1, p0, Lorg/apache/commons/codec/language/bm/PhoneticEngine$1;->val$cached:Ljava/lang/CharSequence;

    iput-object p2, p0, Lorg/apache/commons/codec/language/bm/PhoneticEngine$1;->val$cache:[[Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final charAt(I)C
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lorg/apache/commons/codec/language/bm/PhoneticEngine$1;->val$cached:Ljava/lang/CharSequence;

    invoke-interface {v0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    return v0
.end method

.method public final length()I
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lorg/apache/commons/codec/language/bm/PhoneticEngine$1;->val$cached:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    return v0
.end method

.method public final subSequence(II)Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 259
    if-ne p1, p2, :cond_1

    .line 260
    const-string v0, ""

    .line 268
    :cond_0
    :goto_0
    return-object v0

    .line 263
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/codec/language/bm/PhoneticEngine$1;->val$cache:[[Ljava/lang/CharSequence;

    aget-object v0, v0, p1

    add-int/lit8 v1, p2, -0x1

    aget-object v0, v0, v1

    .line 264
    if-nez v0, :cond_0

    .line 265
    iget-object v0, p0, Lorg/apache/commons/codec/language/bm/PhoneticEngine$1;->val$cached:Ljava/lang/CharSequence;

    invoke-interface {v0, p1, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 266
    iget-object v1, p0, Lorg/apache/commons/codec/language/bm/PhoneticEngine$1;->val$cache:[[Ljava/lang/CharSequence;

    aget-object v1, v1, p1

    add-int/lit8 v2, p2, -0x1

    aput-object v0, v1, v2

    goto :goto_0
.end method
