.class final Lqo$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lqo;->onResult(Lus;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lqo;


# direct methods
.method constructor <init>(Lqo;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lqo$1;->this$0:Lqo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lqo$1;->this$0:Lqo;

    invoke-static {v0}, Lqo;->a(Lqo;)J

    .line 146
    iget-object v0, p0, Lqo$1;->this$0:Lqo;

    invoke-virtual {v0}, Lqo;->execute()V

    .line 147
    return-void
.end method
