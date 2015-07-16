.class final Laoe$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lajy;

.field final synthetic b:Landroid/widget/CheckBox;

.field final synthetic c:Landroid/view/View;

.field final synthetic d:Laoe;


# direct methods
.method constructor <init>(Laoe;Lajy;Landroid/widget/CheckBox;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Laoe$1;->d:Laoe;

    iput-object p2, p0, Laoe$1;->a:Lajy;

    iput-object p3, p0, Laoe$1;->b:Landroid/widget/CheckBox;

    iput-object p4, p0, Laoe$1;->c:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5

    .prologue
    .line 83
    if-eqz p2, :cond_0

    iget-object v0, p0, Laoe$1;->a:Lajy;

    instance-of v0, v0, Lajw;

    if-nez v0, :cond_0

    .line 84
    iget-object v0, p0, Laoe$1;->d:Laoe;

    iget-object v0, v0, Laoe;->a:Laas;

    iget-object v1, p0, Laoe$1;->a:Lajy;

    iget-object v1, v1, Lajy;->mStoryId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Laas;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Laqz;

    iget-object v1, p0, Laoe$1;->d:Laoe;

    invoke-static {v1}, Laoe;->a(Laoe;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Laoe$1;->a:Lajy;

    iget-object v3, p0, Laoe$1;->d:Laoe;

    iget-object v3, v3, Laoe;->a:Laas;

    new-instance v4, Laoe$1$1;

    invoke-direct {v4, p0}, Laoe$1$1;-><init>(Laoe$1;)V

    invoke-direct {v0, v1, v2, v3, v4}, Laqz;-><init>(Landroid/content/Context;Lajy;Laas;Laqz$a;)V

    invoke-virtual {v0}, Laqz;->show()V

    .line 93
    :cond_0
    iget-object v0, p0, Laoe$1;->d:Laoe;

    invoke-static {v0}, Laoe;->b(Laoe;)Laoe$a;

    move-result-object v0

    iget-object v1, p0, Laoe$1;->a:Lajy;

    invoke-interface {v0, v1, p2}, Laoe$a;->a(Lajy;Z)V

    .line 94
    iget-object v0, p0, Laoe$1;->d:Laoe;

    iget-object v1, p0, Laoe$1;->c:Landroid/view/View;

    iget-object v2, p0, Laoe$1;->a:Lajy;

    invoke-static {v0, v1, v2}, Laoe;->a(Laoe;Landroid/view/View;Lajy;)V

    .line 95
    return-void
.end method
