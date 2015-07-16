.class public final Lafd$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lafd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lafd;


# direct methods
.method public constructor <init>(Lafd;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lafd$1;->a:Lafd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lafd$1;->a:Lafd;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lafd;->f:Z

    iget-object v1, v0, Lafd;->k:Lafd$a;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lafd;->k:Lafd$a;

    invoke-interface {v0}, Lafd$a;->a()V

    .line 62
    :cond_0
    return-void
.end method
