.class final Landroid/support/v4/view/ViewCompatApi21$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/view/ViewCompatApi21;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Landroid/support/v4/view/OnApplyWindowInsetsListener;


# direct methods
.method constructor <init>(Landroid/support/v4/view/OnApplyWindowInsetsListener;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Landroid/support/v4/view/ViewCompatApi21$1;->val$listener:Landroid/support/v4/view/OnApplyWindowInsetsListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    .prologue
    .line 58
    new-instance v0, Landroid/support/v4/view/WindowInsetsCompatApi21;

    invoke-direct {v0, p2}, Landroid/support/v4/view/WindowInsetsCompatApi21;-><init>(Landroid/view/WindowInsets;)V

    .line 60
    iget-object v0, p0, Landroid/support/v4/view/ViewCompatApi21$1;->val$listener:Landroid/support/v4/view/OnApplyWindowInsetsListener;

    invoke-interface {v0}, Landroid/support/v4/view/OnApplyWindowInsetsListener;->onApplyWindowInsets$4d768d79()Landroid/support/v4/view/WindowInsetsCompat;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/WindowInsetsCompatApi21;

    .line 62
    iget-object v0, v0, Landroid/support/v4/view/WindowInsetsCompatApi21;->mSource:Landroid/view/WindowInsets;

    return-object v0
.end method
