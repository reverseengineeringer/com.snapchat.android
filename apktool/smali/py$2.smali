.class final Lpy$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpy;

.field final synthetic val$networkResult:Luc;

.field final synthetic val$responsePayload:Lbiz;


# direct methods
.method constructor <init>(Lpy;Lbiz;Luc;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lpy$2;->this$0:Lpy;

    iput-object p2, p0, Lpy$2;->val$responsePayload:Lbiz;

    iput-object p3, p0, Lpy$2;->val$networkResult:Luc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 163
    iget-object v0, p0, Lpy$2;->this$0:Lpy;

    iget-object v1, p0, Lpy$2;->val$responsePayload:Lbiz;

    iget-object v2, p0, Lpy$2;->val$networkResult:Luc;

    invoke-virtual {v0, v1, v2}, Lpy;->a(Lbiz;Luc;)V

    .line 164
    return-void
.end method
