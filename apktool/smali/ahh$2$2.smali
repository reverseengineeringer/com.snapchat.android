.class final Lahh$2$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lahh$2;->errHandler(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lahh$2;


# direct methods
.method constructor <init>(Lahh$2;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lahh$2$2;->c:Lahh$2;

    iput p2, p0, Lahh$2$2;->a:I

    iput-object p3, p0, Lahh$2$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 160
    iget-object v0, p0, Lahh$2$2;->c:Lahh$2;

    iget-object v0, v0, Lahh$2;->b:Lcom/addlive/service/Responder;

    iget v1, p0, Lahh$2$2;->a:I

    iget-object v2, p0, Lahh$2$2;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/addlive/service/Responder;->errHandler(ILjava/lang/String;)V

    .line 161
    return-void
.end method
