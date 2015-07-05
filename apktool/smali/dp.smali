.class final Ldp;
.super Lda;
.source "SourceFile"


# annotations
.annotation build Lcd;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lda",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final b:Ldc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldc",
            "<TE;>;"
        }
    .end annotation
.end field

.field private final c:Lde;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lde",
            "<+TE;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ldc;Lde;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldc",
            "<TE;>;",
            "Lde",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0}, Lda;-><init>()V

    .line 35
    iput-object p1, p0, Ldp;->b:Ldc;

    .line 36
    iput-object p2, p0, Ldp;->c:Lde;

    .line 37
    return-void
.end method

.method constructor <init>(Ldc;[Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldc",
            "<TE;>;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 40
    array-length v0, p2

    packed-switch v0, :pswitch_data_0

    array-length v1, p2

    if-ge v0, v1, :cond_0

    invoke-static {p2, v0}, Ldn;->b([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    :cond_0
    new-instance v0, Ldq;

    invoke-direct {v0, p2}, Ldq;-><init>([Ljava/lang/Object;)V

    :goto_0
    invoke-direct {p0, p1, v0}, Ldp;-><init>(Ldc;Lde;)V

    .line 41
    return-void

    .line 40
    :pswitch_0
    sget-object v0, Lde;->a:Lde;

    goto :goto_0

    :pswitch_1
    new-instance v0, Ldu;

    const/4 v1, 0x0

    aget-object v1, p2, v1

    invoke-direct {v0, v1}, Ldu;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method final a([Ljava/lang/Object;I)I
    .locals 1
    .annotation build Lce;
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Ldp;->c:Lde;

    invoke-virtual {v0, p1, p2}, Lde;->a([Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public final a(I)Ldx;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ldx",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Ldp;->c:Lde;

    invoke-virtual {v0, p1}, Lde;->a(I)Ldx;

    move-result-object v0

    return-object v0
.end method

.method final c()Ldc;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldc",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Ldp;->b:Ldc;

    return-object v0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Ldp;->c:Lde;

    invoke-virtual {v0, p1}, Lde;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic listIterator(I)Ljava/util/ListIterator;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Ldp;->a(I)Ldx;

    move-result-object v0

    return-object v0
.end method
