.class final Lahh$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lahh$2;->resultHandler(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lahh$2;


# direct methods
.method constructor <init>(Lahh$2;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lahh$2$1;->b:Lahh$2;

    iput-object p2, p0, Lahh$2$1;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lahh$2$1;->b:Lahh$2;

    iget-object v0, v0, Lahh$2;->b:Lcom/addlive/service/Responder;

    iget-object v1, p0, Lahh$2$1;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/addlive/service/Responder;->resultHandler(Ljava/lang/Object;)V

    .line 152
    return-void
.end method
