.class final Lvn$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Z

.field final synthetic c:Z

.field final synthetic d:Z

.field final synthetic e:Lvn;


# direct methods
.method constructor <init>(Lvn;ZZZZ)V
    .locals 0

    .prologue
    .line 283
    iput-object p1, p0, Lvn$9;->e:Lvn;

    iput-boolean p2, p0, Lvn$9;->a:Z

    iput-boolean p3, p0, Lvn$9;->b:Z

    iput-boolean p4, p0, Lvn$9;->c:Z

    iput-boolean p5, p0, Lvn$9;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 286
    iget-object v0, p0, Lvn$9;->e:Lvn;

    iget-object v1, v0, Lvn;->i:Landroid/widget/ImageButton;

    iget-boolean v0, p0, Lvn$9;->a:Z

    if-eqz v0, :cond_1

    const v0, 0x7f020096

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 289
    iget-object v0, p0, Lvn$9;->e:Lvn;

    iget-object v1, v0, Lvn;->l:Landroid/view/View;

    iget-boolean v0, p0, Lvn$9;->b:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 290
    iget-boolean v0, p0, Lvn$9;->c:Z

    if-eqz v0, :cond_3

    .line 291
    iget-object v0, p0, Lvn$9;->e:Lvn;

    iget-object v0, v0, Lvn;->m:Landroid/widget/TextView;

    const v1, 0x7f0c017e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 295
    :cond_0
    :goto_2
    return-void

    .line 286
    :cond_1
    const v0, 0x7f020095

    goto :goto_0

    .line 289
    :cond_2
    const/16 v0, 0x8

    goto :goto_1

    .line 292
    :cond_3
    iget-boolean v0, p0, Lvn$9;->d:Z

    if-nez v0, :cond_0

    .line 293
    iget-object v0, p0, Lvn$9;->e:Lvn;

    iget-object v0, v0, Lvn;->m:Landroid/widget/TextView;

    iget-object v1, p0, Lvn$9;->e:Lvn;

    invoke-static {v1}, Lvn;->a(Lvn;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method
