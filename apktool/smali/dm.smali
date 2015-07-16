.class public abstract Ldm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/Map;


# annotations
.annotation build Lcd;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/util/Map",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final a:[Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/Map$Entry",
            "<**>;"
        }
    .end annotation
.end field


# instance fields
.field private transient b:Ldr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldr",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private transient c:Ldr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldr",
            "<TK;>;"
        }
    .end annotation
.end field

.field private transient d:Ldj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldj",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 313
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/util/Map$Entry;

    sput-object v0, Ldm;->a:[Ljava/util/Map$Entry;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ldm;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;TK;TV;)",
            "Ldm",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 89
    new-instance v0, Lea;

    const/4 v1, 0x2

    new-array v1, v1, [Ldn$a;

    const/4 v2, 0x0

    invoke-static {p0, p1}, Ldm;->a(Ljava/lang/Object;Ljava/lang/Object;)Ldn$a;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2, p3}, Ldm;->a(Ljava/lang/Object;Ljava/lang/Object;)Ldn$a;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lea;-><init>([Ldn$a;)V

    return-object v0
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/Object;)Ldn$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;)",
            "Ldn$a",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 135
    invoke-static {p0, p1}, Lcx;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 136
    new-instance v0, Ldn$a;

    invoke-direct {v0, p0, p1}, Ldn$a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method private c()Ldj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldj",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 422
    iget-object v0, p0, Ldm;->d:Ldj;

    .line 423
    if-nez v0, :cond_0

    new-instance v0, Ldq;

    invoke-direct {v0, p0}, Ldq;-><init>(Ldm;)V

    iput-object v0, p0, Ldm;->d:Ldj;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final a()Ldr;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldr",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 392
    iget-object v0, p0, Ldm;->b:Ldr;

    .line 393
    if-nez v0, :cond_0

    invoke-virtual {p0}, Ldm;->b()Ldr;

    move-result-object v0

    iput-object v0, p0, Ldm;->b:Ldr;

    :cond_0
    return-object v0
.end method

.method abstract b()Ldr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldr",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end method

.method public final clear()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 362
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 372
    invoke-virtual {p0, p1}, Ldm;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 377
    invoke-direct {p0}, Ldm;->c()Ldj;

    move-result-object v0

    invoke-virtual {v0, p1}, Ldj;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public synthetic entrySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Ldm;->a()Ldr;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 507
    invoke-static {p0, p1}, Ldu;->a(Ljava/util/Map;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public abstract get(Ljava/lang/Object;)Ljava/lang/Object;
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 515
    invoke-virtual {p0}, Ldm;->a()Ldr;

    move-result-object v0

    invoke-virtual {v0}, Ldr;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 367
    invoke-virtual {p0}, Ldm;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Ldm;->c:Ldr;

    if-nez v0, :cond_0

    new-instance v0, Ldp;

    invoke-direct {v0, p0}, Ldp;-><init>(Ldm;)V

    iput-object v0, p0, Ldm;->c:Ldr;

    :cond_0
    return-object v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 326
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final putAll(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 350
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 338
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 519
    invoke-static {p0}, Ldu;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Ldm;->c()Ldj;

    move-result-object v0

    return-object v0
.end method
