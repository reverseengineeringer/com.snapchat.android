.class final Lpw$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpw;->b()Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lpw;

.field final synthetic val$payload:Lpw$b;


# direct methods
.method constructor <init>(Lpw;Lpw$b;)V
    .locals 0

    .prologue
    .line 207
    iput-object p1, p0, Lpw$2;->this$0:Lpw;

    iput-object p2, p0, Lpw$2;->val$payload:Lpw$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 207
    iget-object v0, p0, Lpw$2;->this$0:Lpw;

    invoke-static {v0}, Lpw;->c(Lpw;)Llx;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lpw$2;->this$0:Lpw;

    iget-object v3, v3, Lpw;->mLoginName:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lpw$2;->this$0:Lpw;

    invoke-static {v3}, Lpw;->b(Lpw;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lpw$2;->val$payload:Lpw$b;

    invoke-virtual {v3}, Lpw$b;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "/loq/login"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Llx;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
