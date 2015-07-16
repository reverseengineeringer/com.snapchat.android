.class final Lapv$a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapv$a;->onCompletion(Landroid/media/MediaPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/media/MediaPlayer$OnCompletionListener;

.field final synthetic b:Landroid/media/MediaPlayer;

.field final synthetic c:Lapv$a;


# direct methods
.method constructor <init>(Lapv$a;Landroid/media/MediaPlayer$OnCompletionListener;Landroid/media/MediaPlayer;)V
    .locals 0

    .prologue
    .line 356
    iput-object p1, p0, Lapv$a$2;->c:Lapv$a;

    iput-object p2, p0, Lapv$a$2;->a:Landroid/media/MediaPlayer$OnCompletionListener;

    iput-object p3, p0, Lapv$a$2;->b:Landroid/media/MediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 359
    iget-object v0, p0, Lapv$a$2;->a:Landroid/media/MediaPlayer$OnCompletionListener;

    iget-object v1, p0, Lapv$a$2;->b:Landroid/media/MediaPlayer;

    invoke-interface {v0, v1}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 360
    return-void
.end method
