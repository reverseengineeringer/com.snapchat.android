.class public final Laed$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Laed;


# direct methods
.method public constructor <init>(Laed;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Laed$1;->a:Laed;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Laed$1;->a:Laed;

    const/4 v1, 0x1

    iput-boolean v1, v0, Laed;->f:Z

    iget-object v1, v0, Laed;->k:Laed$a;

    if-eqz v1, :cond_0

    iget-object v0, v0, Laed;->k:Laed$a;

    invoke-interface {v0}, Laed$a;->a()V

    .line 62
    :cond_0
    return-void
.end method
