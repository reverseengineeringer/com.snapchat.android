.class final Lbqg$a;
.super Ljava/util/concurrent/FutureTask;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbqg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask",
        "<",
        "Lbpm;",
        ">;",
        "Ljava/lang/Comparable",
        "<",
        "Lbqg$a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lbpm;


# direct methods
.method public constructor <init>(Lbpm;)V
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 98
    iput-object p1, p0, Lbqg$a;->a:Lbpm;

    .line 99
    return-void
.end method


# virtual methods
.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 92
    check-cast p1, Lbqg$a;

    iget-object v0, p0, Lbqg$a;->a:Lbpm;

    iget v0, v0, Lbpm;->s:I

    iget-object v1, p1, Lbqg$a;->a:Lbpm;

    iget v1, v1, Lbpm;->s:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lbqg$a;->a:Lbpm;

    iget v0, v0, Lbpm;->a:I

    iget-object v1, p1, Lbqg$a;->a:Lbpm;

    iget v1, v1, Lbpm;->a:I

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v0, -0x1

    sub-int v0, v1, v0

    goto :goto_0
.end method
