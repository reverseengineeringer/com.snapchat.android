.class final Ldy;
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
.field private final b:Ldj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldj",
            "<TE;>;"
        }
    .end annotation
.end field

.field private final c:Ldl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldl",
            "<+TE;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ldj;Ldl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldj",
            "<TE;>;",
            "Ldl",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0}, Ldi;-><init>()V

    .line 35
    iput-object p1, p0, Ldy;->b:Ldj;

    .line 36
    iput-object p2, p0, Ldy;->c:Ldl;

    .line 37
    return-void
.end method

.method constructor <init>(Ldj;[Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldj",
            "<TE;>;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 40
    invoke-static {p2}, Ldl;->a([Ljava/lang/Object;)Ldl;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ldy;-><init>(Ldj;Ldl;)V

    .line 41
    return-void
.end method


# virtual methods
.method final a([Ljava/lang/Object;I)I
    .locals 1
    .annotation build Lce;
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Ldy;->c:Ldl;

    invoke-virtual {v0, p1, p2}, Ldl;->a([Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public final a(I)Leg;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Leg",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Ldy;->c:Ldl;

    invoke-virtual {v0, p1}, Ldl;->a(I)Leg;

    move-result-object v0

    return-object v0
.end method

.method final c()Ldj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldj",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Ldy;->b:Ldj;

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
    iget-object v0, p0, Ldy;->c:Ldl;

    invoke-virtual {v0, p1}, Ldl;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic listIterator(I)Ljava/util/ListIterator;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Ldy;->a(I)Leg;

    move-result-object v0

    return-object v0
.end method
