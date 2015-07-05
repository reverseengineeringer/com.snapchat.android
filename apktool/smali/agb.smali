.class public final Lagb;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lagb$a;
    }
.end annotation


# instance fields
.field public a:Z

.field b:J

.field public c:Lagb$a;

.field protected d:Lbgk;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field e:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue",
            "<",
            "Lagb$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v2, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lagb$a;

    move-object v1, p0

    move-wide v4, v2

    invoke-direct/range {v0 .. v5}, Lagb$a;-><init>(Lagb;JJ)V

    iput-object v0, p0, Lagb;->c:Lagb$a;

    .line 51
    new-instance v0, Ljava/util/PriorityQueue;

    const/4 v1, 0x5

    new-instance v2, Lagb$1;

    invoke-direct {v2, p0}, Lagb$1;-><init>(Lagb;)V

    invoke-direct {v0, v1, v2}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v0, p0, Lagb;->e:Ljava/util/PriorityQueue;

    .line 61
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/SnapchatApplication;->c()Laza;

    move-result-object v0

    invoke-interface {v0, p0}, Laza;->a(Lagb;)V

    .line 62
    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 7

    .prologue
    .line 105
    iget-object v0, p0, Lagb;->e:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 106
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 107
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lagb$a;

    .line 108
    iget-wide v2, v0, Lagb$a;->b:J

    sub-long v2, p1, v2

    const-wide/16 v4, 0x5dc

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 109
    iget-wide v2, v0, Lagb$a;->b:J

    iget-object v4, p0, Lagb;->c:Lagb$a;

    iget-wide v4, v4, Lagb$a;->b:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    iput-object v0, p0, Lagb;->c:Lagb$a;

    .line 110
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 113
    :cond_2
    return-void
.end method
