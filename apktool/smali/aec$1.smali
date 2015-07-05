.class final Laec$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laec;-><init>(Lcom/snapchat/android/discover/ui/DSnapView;Landroid/view/View$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View$OnClickListener;

.field final synthetic b:Laec;


# direct methods
.method constructor <init>(Laec;Landroid/view/View$OnClickListener;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Laec$1;->b:Laec;

    iput-object p2, p0, Laec$1;->a:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Laec$1;->b:Laec;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Laec;->a(Z)V

    .line 58
    iget-object v0, p0, Laec$1;->a:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Laec$1;->a:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 61
    :cond_0
    return-void
.end method
