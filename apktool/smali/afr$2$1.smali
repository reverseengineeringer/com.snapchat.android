.class final Lafr$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxx$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lafr$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lafr$2;


# direct methods
.method constructor <init>(Lafr$2;)V
    .locals 0

    .prologue
    .line 716
    iput-object p1, p0, Lafr$2$1;->a:Lafr$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 719
    iget-object v0, p0, Lafr$2$1;->a:Lafr$2;

    iget-object v0, v0, Lafr$2;->b:Lafr;

    invoke-static {v0}, Lafr;->a(Lafr;)Lafr$a;

    move-result-object v0

    invoke-interface {v0}, Lafr$a;->i()V

    .line 720
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 723
    iget-object v0, p0, Lafr$2$1;->a:Lafr$2;

    iget-object v0, v0, Lafr$2;->b:Lafr;

    invoke-static {v0}, Lafr;->a(Lafr;)Lafr$a;

    move-result-object v0

    invoke-interface {v0}, Lafr$a;->i()V

    .line 724
    return-void
.end method
