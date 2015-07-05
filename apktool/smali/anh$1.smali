.class final Lanh$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lajc;

.field final synthetic b:Landroid/widget/CheckBox;

.field final synthetic c:Landroid/view/View;

.field final synthetic d:Lanh;


# direct methods
.method constructor <init>(Lanh;Lajc;Landroid/widget/CheckBox;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lanh$1;->d:Lanh;

    iput-object p2, p0, Lanh$1;->a:Lajc;

    iput-object p3, p0, Lanh$1;->b:Landroid/widget/CheckBox;

    iput-object p4, p0, Lanh$1;->c:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5

    .prologue
    .line 83
    if-eqz p2, :cond_0

    iget-object v0, p0, Lanh$1;->a:Lajc;

    instance-of v0, v0, Laja;

    if-nez v0, :cond_0

    .line 84
    iget-object v0, p0, Lanh$1;->d:Lanh;

    iget-object v0, v0, Lanh;->a:Lzs;

    iget-object v1, p0, Lanh$1;->a:Lajc;

    iget-object v1, v1, Lajc;->mStoryId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lzs;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Laqa;

    iget-object v1, p0, Lanh$1;->d:Lanh;

    invoke-static {v1}, Lanh;->a(Lanh;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lanh$1;->a:Lajc;

    iget-object v3, p0, Lanh$1;->d:Lanh;

    iget-object v3, v3, Lanh;->a:Lzs;

    new-instance v4, Lanh$1$1;

    invoke-direct {v4, p0}, Lanh$1$1;-><init>(Lanh$1;)V

    invoke-direct {v0, v1, v2, v3, v4}, Laqa;-><init>(Landroid/content/Context;Lajc;Lzs;Laqa$a;)V

    invoke-virtual {v0}, Laqa;->show()V

    .line 93
    :cond_0
    iget-object v0, p0, Lanh$1;->d:Lanh;

    invoke-static {v0}, Lanh;->b(Lanh;)Lanh$a;

    move-result-object v0

    iget-object v1, p0, Lanh$1;->a:Lajc;

    invoke-interface {v0, v1, p2}, Lanh$a;->a(Lajc;Z)V

    .line 94
    iget-object v0, p0, Lanh$1;->d:Lanh;

    iget-object v1, p0, Lanh$1;->c:Landroid/view/View;

    iget-object v2, p0, Lanh$1;->a:Lajc;

    invoke-static {v0, v1, v2}, Lanh;->a(Lanh;Landroid/view/View;Lajc;)V

    .line 95
    return-void
.end method
