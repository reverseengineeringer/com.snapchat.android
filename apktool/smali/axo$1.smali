.class final Laxo$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laxo;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laxo;


# direct methods
.method constructor <init>(Laxo;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Laxo$1;->this$0:Laxo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Laxo$1;->this$0:Laxo;

    iget-object v0, v0, Laxo;->mMessagesCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 62
    iget-object v0, p0, Laxo$1;->this$0:Laxo;

    invoke-virtual {v0}, Laxo;->a()V

    .line 63
    return-void
.end method
