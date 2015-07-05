.class final Lapa$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapa;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lapa;


# direct methods
.method constructor <init>(Lapa;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lapa$3;->a:Lapa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 2

    .prologue
    .line 106
    if-eqz p2, :cond_0

    .line 107
    iget-object v0, p0, Lapa$3;->a:Lapa;

    invoke-virtual {v0}, Lapa;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 109
    :cond_0
    return-void
.end method
