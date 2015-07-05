.class final Laoz$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoz$a;->onBufferingUpdate(Landroid/media/MediaPlayer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field final synthetic b:Landroid/media/MediaPlayer;

.field final synthetic c:I

.field final synthetic d:Laoz$a;


# direct methods
.method constructor <init>(Laoz$a;Landroid/media/MediaPlayer$OnBufferingUpdateListener;Landroid/media/MediaPlayer;I)V
    .locals 0

    .prologue
    .line 343
    iput-object p1, p0, Laoz$a$1;->d:Laoz$a;

    iput-object p2, p0, Laoz$a$1;->a:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    iput-object p3, p0, Laoz$a$1;->b:Landroid/media/MediaPlayer;

    iput p4, p0, Laoz$a$1;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 346
    iget-object v0, p0, Laoz$a$1;->a:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    iget-object v1, p0, Laoz$a$1;->b:Landroid/media/MediaPlayer;

    iget v2, p0, Laoz$a$1;->c:I

    invoke-interface {v0, v1, v2}, Landroid/media/MediaPlayer$OnBufferingUpdateListener;->onBufferingUpdate(Landroid/media/MediaPlayer;I)V

    .line 347
    return-void
.end method
