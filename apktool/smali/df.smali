.class public abstract Ldf;
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
.field private transient b:Ldi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldi",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private transient c:Ldi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldi",
            "<TK;>;"
        }
    .end annotation
.end field

.field private transient d:Ldc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldc",
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

    sput-object v0, Ldf;->a:[Ljava/util/Map$Entry;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(Ljava/lang/Object;Ljava/lang/Object;)Ldf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;)",
            "Ldf",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 80
    invoke-static {p0, p1}, Ldb;->a(Ljava/lang/Object;Ljava/lang/Object;)Ldb;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public b()Ldc;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldc",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 422
    iget-object v0, p0, Ldf;->d:Ldc;

    .line 423
    if-nez v0, :cond_0

    new-instance v0, Ldh;

    invoke-direct {v0, p0}, Ldh;-><init>(Ldf;)V

    iput-object v0, p0, Ldf;->d:Ldc;

    :cond_0
    return-object v0
.end method

.method public final c()Ldi;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldi",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 392
    iget-object v0, p0, Ldf;->b:Ldi;

    .line 393
    if-nez v0, :cond_0

    invoke-virtual {p0}, Ldf;->d()Ldi;

    move-result-object v0

    iput-object v0, p0, Ldf;->b:Ldi;

    :cond_0
    return-object v0
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
    invoke-virtual {p0, p1}, Ldf;->get(Ljava/lang/Object;)Ljava/lang/Object;

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
    invoke-virtual {p0}, Ldf;->b()Ldc;

    move-result-object v0

    invoke-virtual {v0, p1}, Ldc;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method abstract d()Ldi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldi",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end method

.method public final e()Ldi;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldi",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 406
    iget-object v0, p0, Ldf;->c:Ldi;

    .line 407
    if-nez v0, :cond_0

    invoke-virtual {p0}, Ldf;->f()Ldi;

    move-result-object v0

    iput-object v0, p0, Ldf;->c:Ldi;

    :cond_0
    return-object v0
.end method

.method public synthetic entrySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Ldf;->c()Ldi;

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
    invoke-static {p0, p1}, Ldl;->a(Ljava/util/Map;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method f()Ldi;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldi",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 411
    new-instance v0, Ldg;

    invoke-direct {v0, p0}, Ldg;-><init>(Ldf;)V

    return-object v0
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
    invoke-virtual {p0}, Ldf;->c()Ldi;

    move-result-object v0

    invoke-virtual {v0}, Ldi;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 367
    invoke-virtual {p0}, Ldf;->size()I

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
    invoke-virtual {p0}, Ldf;->e()Ldi;

    move-result-object v0

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
    invoke-static {p0}, Ldl;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Ldf;->b()Ldc;

    move-result-object v0

    return-object v0
.end method
