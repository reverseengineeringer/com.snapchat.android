.class final Ladn$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ladn;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ladn;


# direct methods
.method constructor <init>(Ladn;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Ladn$2;->a:Ladn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Ladn$2;->a:Ladn;

    iget-boolean v0, v0, Ladn;->i:Z

    if-nez v0, :cond_0

    .line 159
    iget-object v0, p0, Ladn$2;->a:Ladn;

    iget-object v0, v0, Ladn;->e:Landroid/view/View;

    iget-object v1, p0, Ladn$2;->a:Ladn;

    iget v1, v1, Ladn;->f:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    .line 160
    iget-object v0, p0, Ladn$2;->a:Ladn;

    iget-object v0, v0, Ladn;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 162
    :cond_0
    return-void
.end method
