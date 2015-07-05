.class final Lpw$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpw;

.field final synthetic val$networkResult:Luc;

.field final synthetic val$responsePayload:Lbig;


# direct methods
.method constructor <init>(Lpw;Lbig;Luc;)V
    .locals 0

    .prologue
    .line 270
    iput-object p1, p0, Lpw$4;->this$0:Lpw;

    iput-object p2, p0, Lpw$4;->val$responsePayload:Lbig;

    iput-object p3, p0, Lpw$4;->val$networkResult:Luc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 273
    iget-object v0, p0, Lpw$4;->this$0:Lpw;

    iget-object v1, p0, Lpw$4;->val$responsePayload:Lbig;

    iget-object v2, p0, Lpw$4;->val$networkResult:Luc;

    invoke-virtual {v0, v1, v2}, Lpw;->a(Lbig;Luc;)V

    .line 274
    return-void
.end method
