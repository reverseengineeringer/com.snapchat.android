.class final Ldr;
.super Ldi;
.source "SourceFile"


# annotations
.annotation build Lcd;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ldi",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final transient a:[Ljava/lang/Object;
    .annotation build Lcf;
    .end annotation
.end field

.field private final b:[Ljava/lang/Object;

.field private final transient c:I

.field private final transient d:I


# direct methods
.method constructor <init>([Ljava/lang/Object;I[Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ldi;-><init>()V

    .line 39
    iput-object p1, p0, Ldr;->b:[Ljava/lang/Object;

    .line 40
    iput-object p3, p0, Ldr;->a:[Ljava/lang/Object;

    .line 41
    iput p4, p0, Ldr;->c:I

    .line 42
    iput p2, p0, Ldr;->d:I

    .line 43
    return-void
.end method


# virtual methods
.method final a([Ljava/lang/Object;I)I
    .locals 3

    .prologue
    .line 73
    iget-object v0, p0, Ldr;->b:[Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Ldr;->b:[Ljava/lang/Object;

    array-length v2, v2

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 74
    iget-object v0, p0, Ldr;->b:[Ljava/lang/Object;

    array-length v0, v0

    add-int/2addr v0, p2

    return v0
.end method

.method public final a()Ldw;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldw",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Ldr;->b:[Ljava/lang/Object;

    invoke-static {v0}, Ldj;->a([Ljava/lang/Object;)Ldw;

    move-result-object v0

    return-object v0
.end method

.method final c()Z
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x1

    return v0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 46
    if-nez p1, :cond_0

    move v0, v1

    .line 55
    :goto_0
    return v0

    .line 49
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lcz;->a(I)I

    move-result v0

    .line 50
    :goto_1
    iget-object v2, p0, Ldr;->a:[Ljava/lang/Object;

    iget v3, p0, Ldr;->c:I

    and-int/2addr v3, v0

    aget-object v2, v2, v3

    .line 51
    if-nez v2, :cond_1

    move v0, v1

    .line 52
    goto :goto_0

    .line 54
    :cond_1
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 55
    const/4 v0, 0x1

    goto :goto_0

    .line 49
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method final d()Lde;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lde",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 79
    new-instance v0, Ldp;

    iget-object v1, p0, Ldr;->b:[Ljava/lang/Object;

    invoke-direct {v0, p0, v1}, Ldp;-><init>(Ldc;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Ldr;->d:I

    return v0
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Ldr;->b:[Ljava/lang/Object;

    invoke-static {v0}, Ldj;->a([Ljava/lang/Object;)Ldw;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Ldr;->b:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method
