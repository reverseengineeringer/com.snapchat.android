.class final Lbdk$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbdk;->a(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbdk;

.field final synthetic val$event:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lbdk;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lbdk$1;->this$0:Lbdk;

    iput-object p2, p0, Lbdk$1;->val$event:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 53
    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    iget-object v1, p0, Lbdk$1;->val$event:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 54
    return-void
.end method
