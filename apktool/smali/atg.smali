.class public final Latg;
.super Lati;
.source "SourceFile"


# instance fields
.field private final a:Lasm;

.field private final b:Last;


# direct methods
.method public constructor <init>(Lasm;)V
    .locals 1
    .param p1    # Lasm;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 21
    new-instance v0, Lass;

    invoke-direct {v0}, Lass;-><init>()V

    invoke-direct {p0, p1, v0}, Latg;-><init>(Lasm;Last;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Lasm;Last;)V
    .locals 0
    .param p1    # Lasm;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 25
    invoke-direct {p0}, Lati;-><init>()V

    .line 26
    iput-object p1, p0, Latg;->a:Lasm;

    .line 27
    iput-object p2, p0, Latg;->b:Last;

    .line 28
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Latg;->a:Lasm;

    invoke-virtual {v0}, Lasm;->e()V

    .line 40
    return-void
.end method

.method public final a(Lcom/snapchat/android/ui/SwipeImageView;Lasv;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/snapchat/android/ui/SwipeImageView;",
            "Lasv",
            "<",
            "Lasm;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    iget-object v0, p0, Latg;->a:Lasm;

    invoke-virtual {p2, v0}, Lasv;->a(Lasm;)V

    .line 33
    iget-object v0, p0, Latg;->b:Last;

    iget-object v1, p0, Latg;->a:Lasm;

    invoke-interface {v0, v1}, Last;->a(Lasm;)V

    .line 34
    iget-object v0, p0, Latg;->a:Lasm;

    invoke-virtual {p1, v0}, Lcom/snapchat/android/ui/SwipeImageView;->a(Lasm;)V

    .line 35
    return-void
.end method
