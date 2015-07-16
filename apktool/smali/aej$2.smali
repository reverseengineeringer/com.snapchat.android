.class final Laej$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laej;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laej;


# direct methods
.method constructor <init>(Laej;)V
    .locals 0

    .prologue
    .line 747
    iput-object p1, p0, Laej$2;->a:Laej;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2
    .annotation build Lawj;
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 751
    iget-object v0, p0, Laej$2;->a:Laej;

    invoke-static {v0}, Laej;->g(Laej;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lakp;

    .line 752
    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lakp;->mInitialized:Z

    if-eqz v0, :cond_0

    .line 753
    sget-object v0, Laec;->b:Laxn;

    invoke-virtual {v0, v1}, Laxn;->a(Z)V

    .line 754
    sget-object v0, Laec;->a:Laxn;

    invoke-virtual {v0, v1}, Laxn;->a(Z)V

    .line 755
    sget-object v0, Laec;->c:Laxn;

    invoke-virtual {v0, v1}, Laxn;->a(Z)V

    .line 756
    iget-object v0, p0, Laej$2;->a:Laej;

    invoke-static {v0}, Laej;->h(Laej;)Z

    .line 758
    :cond_0
    return-void
.end method
