.class public final Lbww;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbww$c;,
        Lbww$b;,
        Lbww$a;
    }
.end annotation


# instance fields
.field public a:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lbww$b;",
            ">;"
        }
    .end annotation
.end field

.field b:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lbww;->a:Ljava/util/Queue;

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbww;->b:Z

    .line 77
    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lbww;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 85
    iget-boolean v0, p0, Lbww;->b:Z

    if-eqz v0, :cond_1

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    iget-object v0, p0, Lbww;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbww$b;

    .line 90
    if-eqz v0, :cond_0

    .line 91
    new-instance v1, Lbww$c;

    new-instance v2, Lbww$1;

    invoke-direct {v2, p0}, Lbww$1;-><init>(Lbww;)V

    invoke-direct {v1, v0, v2}, Lbww$c;-><init>(Lbww$b;Landroid/os/Handler;)V

    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbww;->b:Z

    .line 109
    invoke-static {v1}, Lbxe;->a(Landroid/os/AsyncTask;)V

    goto :goto_0
.end method
