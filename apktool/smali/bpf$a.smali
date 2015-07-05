.class final Lbpf$a;
.super Ljava/util/concurrent/FutureTask;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbpf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask",
        "<",
        "Lbol;",
        ">;",
        "Ljava/lang/Comparable",
        "<",
        "Lbpf$a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lbol;


# direct methods
.method public constructor <init>(Lbol;)V
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 98
    iput-object p1, p0, Lbpf$a;->a:Lbol;

    .line 99
    return-void
.end method


# virtual methods
.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 92
    check-cast p1, Lbpf$a;

    iget-object v0, p0, Lbpf$a;->a:Lbol;

    iget v0, v0, Lbol;->s:I

    iget-object v1, p1, Lbpf$a;->a:Lbol;

    iget v1, v1, Lbol;->s:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lbpf$a;->a:Lbol;

    iget v0, v0, Lbol;->a:I

    iget-object v1, p1, Lbpf$a;->a:Lbol;

    iget v1, v1, Lbol;->a:I

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v0, -0x1

    sub-int v0, v1, v0

    goto :goto_0
.end method
