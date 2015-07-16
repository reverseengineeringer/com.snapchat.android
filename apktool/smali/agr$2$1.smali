.class final Lagr$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyt$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lagr$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lagr$2;


# direct methods
.method constructor <init>(Lagr$2;)V
    .locals 0

    .prologue
    .line 713
    iput-object p1, p0, Lagr$2$1;->a:Lagr$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 716
    iget-object v0, p0, Lagr$2$1;->a:Lagr$2;

    iget-object v0, v0, Lagr$2;->b:Lagr;

    invoke-static {v0}, Lagr;->a(Lagr;)Lagr$a;

    move-result-object v0

    invoke-interface {v0}, Lagr$a;->i()V

    .line 717
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 720
    iget-object v0, p0, Lagr$2$1;->a:Lagr$2;

    iget-object v0, v0, Lagr$2;->b:Lagr;

    invoke-static {v0}, Lagr;->a(Lagr;)Lagr$a;

    move-result-object v0

    invoke-interface {v0}, Lagr$a;->i()V

    .line 721
    return-void
.end method
