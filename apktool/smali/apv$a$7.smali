.class final Lapv$a$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapv$a;->onTimedText(Landroid/media/MediaPlayer;Landroid/media/TimedText;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/media/MediaPlayer$OnTimedTextListener;

.field final synthetic b:Landroid/media/MediaPlayer;

.field final synthetic c:Landroid/media/TimedText;

.field final synthetic d:Lapv$a;


# direct methods
.method constructor <init>(Lapv$a;Landroid/media/MediaPlayer$OnTimedTextListener;Landroid/media/MediaPlayer;Landroid/media/TimedText;)V
    .locals 0

    .prologue
    .line 423
    iput-object p1, p0, Lapv$a$7;->d:Lapv$a;

    iput-object p2, p0, Lapv$a$7;->a:Landroid/media/MediaPlayer$OnTimedTextListener;

    iput-object p3, p0, Lapv$a$7;->b:Landroid/media/MediaPlayer;

    iput-object p4, p0, Lapv$a$7;->c:Landroid/media/TimedText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 426
    iget-object v0, p0, Lapv$a$7;->a:Landroid/media/MediaPlayer$OnTimedTextListener;

    iget-object v1, p0, Lapv$a$7;->b:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lapv$a$7;->c:Landroid/media/TimedText;

    invoke-interface {v0, v1, v2}, Landroid/media/MediaPlayer$OnTimedTextListener;->onTimedText(Landroid/media/MediaPlayer;Landroid/media/TimedText;)V

    .line 427
    return-void
.end method
