.class final Lqo$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lqo;

.field final synthetic val$networkResult:Lus;

.field final synthetic val$responsePayload:Lbka;


# direct methods
.method constructor <init>(Lqo;Lbka;Lus;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lqo$2;->this$0:Lqo;

    iput-object p2, p0, Lqo$2;->val$responsePayload:Lbka;

    iput-object p3, p0, Lqo$2;->val$networkResult:Lus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 163
    iget-object v0, p0, Lqo$2;->this$0:Lqo;

    iget-object v1, p0, Lqo$2;->val$responsePayload:Lbka;

    iget-object v2, p0, Lqo$2;->val$networkResult:Lus;

    invoke-virtual {v0, v1, v2}, Lqo;->a(Lbka;Lus;)V

    .line 164
    return-void
.end method
