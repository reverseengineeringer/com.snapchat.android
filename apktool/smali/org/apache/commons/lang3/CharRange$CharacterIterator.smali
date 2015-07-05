.class Lorg/apache/commons/lang3/CharRange$CharacterIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/CharRange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CharacterIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/lang/Character;",
        ">;"
    }
.end annotation


# instance fields
.field private current:C

.field private hasNext:Z

.field private final range:Lorg/apache/commons/lang3/CharRange;


# direct methods
.method private constructor <init>(Lorg/apache/commons/lang3/CharRange;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 282
    iput-object p1, p0, Lorg/apache/commons/lang3/CharRange$CharacterIterator;->range:Lorg/apache/commons/lang3/CharRange;

    .line 283
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/lang3/CharRange$CharacterIterator;->hasNext:Z

    .line 285
    iget-object v0, p0, Lorg/apache/commons/lang3/CharRange$CharacterIterator;->range:Lorg/apache/commons/lang3/CharRange;

    # getter for: Lorg/apache/commons/lang3/CharRange;->negated:Z
    invoke-static {v0}, Lorg/apache/commons/lang3/CharRange;->access$100(Lorg/apache/commons/lang3/CharRange;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 286
    iget-object v0, p0, Lorg/apache/commons/lang3/CharRange$CharacterIterator;->range:Lorg/apache/commons/lang3/CharRange;

    # getter for: Lorg/apache/commons/lang3/CharRange;->start:C
    invoke-static {v0}, Lorg/apache/commons/lang3/CharRange;->access$200(Lorg/apache/commons/lang3/CharRange;)C

    move-result v0

    if-nez v0, :cond_1

    .line 287
    iget-object v0, p0, Lorg/apache/commons/lang3/CharRange$CharacterIterator;->range:Lorg/apache/commons/lang3/CharRange;

    # getter for: Lorg/apache/commons/lang3/CharRange;->end:C
    invoke-static {v0}, Lorg/apache/commons/lang3/CharRange;->access$300(Lorg/apache/commons/lang3/CharRange;)C

    move-result v0

    const v1, 0xffff

    if-ne v0, v1, :cond_0

    .line 289
    iput-boolean v2, p0, Lorg/apache/commons/lang3/CharRange$CharacterIterator;->hasNext:Z

    .line 299
    :goto_0
    return-void

    .line 291
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/lang3/CharRange$CharacterIterator;->range:Lorg/apache/commons/lang3/CharRange;

    # getter for: Lorg/apache/commons/lang3/CharRange;->end:C
    invoke-static {v0}, Lorg/apache/commons/lang3/CharRange;->access$300(Lorg/apache/commons/lang3/CharRange;)C

    move-result v0

    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    iput-char v0, p0, Lorg/apache/commons/lang3/CharRange$CharacterIterator;->current:C

    goto :goto_0

    .line 294
    :cond_1
    iput-char v2, p0, Lorg/apache/commons/lang3/CharRange$CharacterIterator;->current:C

    goto :goto_0

    .line 297
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/lang3/CharRange$CharacterIterator;->range:Lorg/apache/commons/lang3/CharRange;

    # getter for: Lorg/apache/commons/lang3/CharRange;->start:C
    invoke-static {v0}, Lorg/apache/commons/lang3/CharRange;->access$200(Lorg/apache/commons/lang3/CharRange;)C

    move-result v0

    iput-char v0, p0, Lorg/apache/commons/lang3/CharRange$CharacterIterator;->current:C

    goto :goto_0
.end method

.method synthetic constructor <init>(Lorg/apache/commons/lang3/CharRange;Lorg/apache/commons/lang3/CharRange$1;)V
    .locals 0

    .prologue
    .line 269
    invoke-direct {p0, p1}, Lorg/apache/commons/lang3/CharRange$CharacterIterator;-><init>(Lorg/apache/commons/lang3/CharRange;)V

    return-void
.end method

.method private prepareNext()V
    .locals 3

    .prologue
    const v2, 0xffff

    .line 305
    iget-object v0, p0, Lorg/apache/commons/lang3/CharRange$CharacterIterator;->range:Lorg/apache/commons/lang3/CharRange;

    # getter for: Lorg/apache/commons/lang3/CharRange;->negated:Z
    invoke-static {v0}, Lorg/apache/commons/lang3/CharRange;->access$100(Lorg/apache/commons/lang3/CharRange;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 306
    iget-char v0, p0, Lorg/apache/commons/lang3/CharRange$CharacterIterator;->current:C

    if-eq v0, v2, :cond_2

    .line 307
    iget-char v0, p0, Lorg/apache/commons/lang3/CharRange$CharacterIterator;->current:C

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lorg/apache/commons/lang3/CharRange$CharacterIterator;->range:Lorg/apache/commons/lang3/CharRange;

    # getter for: Lorg/apache/commons/lang3/CharRange;->start:C
    invoke-static {v1}, Lorg/apache/commons/lang3/CharRange;->access$200(Lorg/apache/commons/lang3/CharRange;)C

    move-result v1

    if-ne v0, v1, :cond_0

    .line 309
    iget-object v0, p0, Lorg/apache/commons/lang3/CharRange$CharacterIterator;->range:Lorg/apache/commons/lang3/CharRange;

    # getter for: Lorg/apache/commons/lang3/CharRange;->end:C
    invoke-static {v0}, Lorg/apache/commons/lang3/CharRange;->access$300(Lorg/apache/commons/lang3/CharRange;)C

    move-result v0

    if-eq v0, v2, :cond_2

    .line 310
    iget-object v0, p0, Lorg/apache/commons/lang3/CharRange$CharacterIterator;->range:Lorg/apache/commons/lang3/CharRange;

    # getter for: Lorg/apache/commons/lang3/CharRange;->end:C
    invoke-static {v0}, Lorg/apache/commons/lang3/CharRange;->access$300(Lorg/apache/commons/lang3/CharRange;)C

    move-result v0

    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    iput-char v0, p0, Lorg/apache/commons/lang3/CharRange$CharacterIterator;->current:C

    .line 322
    :goto_0
    return-void

    .line 315
    :cond_0
    iget-char v0, p0, Lorg/apache/commons/lang3/CharRange$CharacterIterator;->current:C

    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    iput-char v0, p0, Lorg/apache/commons/lang3/CharRange$CharacterIterator;->current:C

    goto :goto_0

    .line 317
    :cond_1
    iget-char v0, p0, Lorg/apache/commons/lang3/CharRange$CharacterIterator;->current:C

    iget-object v1, p0, Lorg/apache/commons/lang3/CharRange$CharacterIterator;->range:Lorg/apache/commons/lang3/CharRange;

    # getter for: Lorg/apache/commons/lang3/CharRange;->end:C
    invoke-static {v1}, Lorg/apache/commons/lang3/CharRange;->access$300(Lorg/apache/commons/lang3/CharRange;)C

    move-result v1

    if-ge v0, v1, :cond_2

    .line 318
    iget-char v0, p0, Lorg/apache/commons/lang3/CharRange$CharacterIterator;->current:C

    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    iput-char v0, p0, Lorg/apache/commons/lang3/CharRange$CharacterIterator;->current:C

    goto :goto_0

    .line 320
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/lang3/CharRange$CharacterIterator;->hasNext:Z

    goto :goto_0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 331
    iget-boolean v0, p0, Lorg/apache/commons/lang3/CharRange$CharacterIterator;->hasNext:Z

    return v0
.end method

.method public next()Ljava/lang/Character;
    .locals 1

    .prologue
    .line 341
    iget-boolean v0, p0, Lorg/apache/commons/lang3/CharRange$CharacterIterator;->hasNext:Z

    if-nez v0, :cond_0

    .line 342
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 344
    :cond_0
    iget-char v0, p0, Lorg/apache/commons/lang3/CharRange$CharacterIterator;->current:C

    .line 345
    invoke-direct {p0}, Lorg/apache/commons/lang3/CharRange$CharacterIterator;->prepareNext()V

    .line 346
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 269
    invoke-virtual {p0}, Lorg/apache/commons/lang3/CharRange$CharacterIterator;->next()Ljava/lang/Character;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 357
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
