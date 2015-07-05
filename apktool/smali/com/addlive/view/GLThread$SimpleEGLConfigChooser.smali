.class Lcom/addlive/view/GLThread$SimpleEGLConfigChooser;
.super Lcom/addlive/view/GLThread$ComponentSizeChooser;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/addlive/view/GLThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SimpleEGLConfigChooser"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/addlive/view/GLThread;


# direct methods
.method public constructor <init>(Lcom/addlive/view/GLThread;Z)V
    .locals 8

    .prologue
    const/4 v2, 0x5

    const/4 v5, 0x0

    .line 603
    iput-object p1, p0, Lcom/addlive/view/GLThread$SimpleEGLConfigChooser;->this$0:Lcom/addlive/view/GLThread;

    .line 604
    const/4 v3, 0x6

    if-eqz p2, :cond_0

    const/16 v6, 0x10

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move v4, v2

    move v7, v5

    invoke-direct/range {v0 .. v7}, Lcom/addlive/view/GLThread$ComponentSizeChooser;-><init>(Lcom/addlive/view/GLThread;IIIIII)V

    .line 605
    return-void

    :cond_0
    move v6, v5

    .line 604
    goto :goto_0
.end method
