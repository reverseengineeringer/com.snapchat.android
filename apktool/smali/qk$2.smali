.class final Lqk$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lqk;

.field final synthetic val$location:Lqk$b;


# direct methods
.method constructor <init>(Lqk;Lqk$b;)V
    .locals 0

    .prologue
    .line 218
    iput-object p1, p0, Lqk$2;->this$0:Lqk;

    iput-object p2, p0, Lqk$2;->val$location:Lqk$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 221
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 222
    iget-object v0, p0, Lqk$2;->val$location:Lqk$b;

    iget-object v0, v0, Lqk$b;->our_stories:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbjn;

    .line 223
    new-instance v3, Lajy;

    invoke-direct {v3, v0}, Lajy;-><init>(Lbjn;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 225
    :cond_0
    iget-object v0, p0, Lqk$2;->this$0:Lqk;

    invoke-static {}, Lbhp;->a()V

    iget-object v0, v0, Lqk;->mCallback:Lqk$a;

    invoke-interface {v0, v1}, Lqk$a;->b(Ljava/util/List;)V

    .line 226
    return-void
.end method
