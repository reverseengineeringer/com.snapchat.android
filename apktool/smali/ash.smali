.class public final Lash;
.super Lasj;
.source "SourceFile"


# instance fields
.field private final a:Larn;

.field private final b:Laru;


# direct methods
.method public constructor <init>(Larn;)V
    .locals 1
    .param p1    # Larn;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 21
    new-instance v0, Lart;

    invoke-direct {v0}, Lart;-><init>()V

    invoke-direct {p0, p1, v0}, Lash;-><init>(Larn;Laru;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Larn;Laru;)V
    .locals 0
    .param p1    # Larn;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 25
    invoke-direct {p0}, Lasj;-><init>()V

    .line 26
    iput-object p1, p0, Lash;->a:Larn;

    .line 27
    iput-object p2, p0, Lash;->b:Laru;

    .line 28
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lash;->a:Larn;

    invoke-virtual {v0}, Larn;->e()V

    .line 40
    return-void
.end method

.method public final a(Lcom/snapchat/android/ui/SwipeImageView;Larw;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/snapchat/android/ui/SwipeImageView;",
            "Larw",
            "<",
            "Larn;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    iget-object v0, p0, Lash;->a:Larn;

    invoke-virtual {p2, v0}, Larw;->a(Larn;)V

    .line 33
    iget-object v0, p0, Lash;->b:Laru;

    iget-object v1, p0, Lash;->a:Larn;

    invoke-interface {v0, v1}, Laru;->a(Larn;)V

    .line 34
    iget-object v0, p0, Lash;->a:Larn;

    invoke-virtual {p1, v0}, Lcom/snapchat/android/ui/SwipeImageView;->a(Larn;)V

    .line 35
    return-void
.end method
