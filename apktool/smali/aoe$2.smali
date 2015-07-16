.class final Laoe$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/CheckBox;

.field final synthetic b:Laoe;


# direct methods
.method constructor <init>(Laoe;Landroid/widget/CheckBox;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Laoe$2;->b:Laoe;

    iput-object p2, p0, Laoe$2;->a:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 100
    iget-object v1, p0, Laoe$2;->a:Landroid/widget/CheckBox;

    iget-object v0, p0, Laoe$2;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 101
    return-void

    .line 100
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
