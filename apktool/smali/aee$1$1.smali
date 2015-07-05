.class final Laee$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laee$1;->a(Lavo;Lavx;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laee$1;


# direct methods
.method constructor <init>(Laee$1;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Laee$1$1;->a:Laee$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Laee$1$1;->a:Laee$1;

    iget-object v0, v0, Laee$1;->a:Laee;

    iget-object v0, v0, Laee;->h:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 140
    return-void
.end method
