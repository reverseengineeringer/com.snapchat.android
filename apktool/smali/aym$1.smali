.class final Laym$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laym;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laym;


# direct methods
.method constructor <init>(Laym;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Laym$1;->this$0:Laym;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Laym$1;->this$0:Laym;

    iget-object v0, v0, Laym;->mMessagesCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 62
    iget-object v0, p0, Laym$1;->this$0:Laym;

    invoke-virtual {v0}, Laym;->a()V

    .line 63
    return-void
.end method
