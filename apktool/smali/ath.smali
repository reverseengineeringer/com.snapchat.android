.class public final Lath;
.super Lati;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lati;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/snapchat/android/ui/SwipeImageView;Lasv;)V
    .locals 1
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
    .line 15
    iget-object v0, p1, Lcom/snapchat/android/ui/SwipeImageView;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 16
    invoke-virtual {p2}, Lasv;->c()V

    .line 17
    return-void
.end method
