.class final Ladj$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ladj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ladj;


# direct methods
.method constructor <init>(Ladj;)V
    .locals 0

    .prologue
    .line 605
    iput-object p1, p0, Ladj$12;->a:Ladj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2
    .annotation build Lavl;
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 609
    iget-object v0, p0, Ladj$12;->a:Ladj;

    invoke-static {v0}, Ladj;->g(Ladj;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajv;

    .line 610
    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lajv;->mInitialized:Z

    if-eqz v0, :cond_0

    .line 611
    sget-object v0, Ladc;->b:Lawp;

    invoke-virtual {v0, v1}, Lawp;->a(Z)V

    .line 612
    sget-object v0, Ladc;->a:Lawp;

    invoke-virtual {v0, v1}, Lawp;->a(Z)V

    .line 613
    sget-object v0, Ladc;->c:Lawp;

    invoke-virtual {v0, v1}, Lawp;->a(Z)V

    .line 614
    iget-object v0, p0, Ladj$12;->a:Ladj;

    invoke-static {v0}, Ladj;->h(Ladj;)Z

    .line 616
    :cond_0
    return-void
.end method
