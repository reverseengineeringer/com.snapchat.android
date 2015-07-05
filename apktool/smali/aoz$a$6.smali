.class final Laoz$a$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoz$a;->onSeekComplete(Landroid/media/MediaPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/media/MediaPlayer$OnSeekCompleteListener;

.field final synthetic b:Landroid/media/MediaPlayer;

.field final synthetic c:Laoz$a;


# direct methods
.method constructor <init>(Laoz$a;Landroid/media/MediaPlayer$OnSeekCompleteListener;Landroid/media/MediaPlayer;)V
    .locals 0

    .prologue
    .line 410
    iput-object p1, p0, Laoz$a$6;->c:Laoz$a;

    iput-object p2, p0, Laoz$a$6;->a:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    iput-object p3, p0, Laoz$a$6;->b:Landroid/media/MediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 413
    iget-object v0, p0, Laoz$a$6;->a:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    iget-object v1, p0, Laoz$a$6;->b:Landroid/media/MediaPlayer;

    invoke-interface {v0, v1}, Landroid/media/MediaPlayer$OnSeekCompleteListener;->onSeekComplete(Landroid/media/MediaPlayer;)V

    .line 414
    return-void
.end method
